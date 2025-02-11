import { FastifyInstance } from "fastify";
import { PrismaClient } from "@prisma/client";
import z from "zod";

const prisma = new PrismaClient();

/**
 * Retorna um documento pelo ID para edição
 */
export async function getDocumentById(app: FastifyInstance) {
  app.get(
    "/api/documents/:id",
    {
      schema: {
        params: z.object({
          id: z.string().uuid(), // Valida que o ID é um UUID
        }),
      },
    },
    async (request, reply) => {
      const { id } = request.params;

      try {
        const document = await prisma.document.findUnique({
          where: { id },
        });

        if (!document) {
          return reply.status(404).send({ error: "Document not found" });
        }

        return reply.send(document);
      } catch (error) {
        console.error(error);
        return reply.status(500).send({ error: "Failed to fetch document" });
      }
    }
  );
}