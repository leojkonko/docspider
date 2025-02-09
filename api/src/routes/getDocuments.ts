import { FastifyInstance } from "fastify";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function getDocuments(app: FastifyInstance) {
  app.get("/api/documents", async (request, reply) => {
    try {
      const documents = await prisma.document.findMany({
        orderBy: { createdAt: "desc" }, // Ordena do mais recente para o mais antigo
      });

      return reply.status(200).send(documents);
    } catch (error) {
      console.error(error);
      return reply.status(500).send({ error: "Failed to fetch documents" });
    }
  });
}
