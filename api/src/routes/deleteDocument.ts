import { FastifyInstance } from "fastify";
import { PrismaClient } from "@prisma/client";
import z from "zod";

const prisma = new PrismaClient();
/**
 * Exclui um documento pelo ID
 */
export async function deleteDocument(app: FastifyInstance) {
  app.delete("/api/documents/:id", async (request, reply) => {
    const { id } = request.params as { id: string };

    try {
      // Verifica se o documento existe
      const existingDocument = await prisma.document.findUnique({ where: { id } });
      if (!existingDocument) {
        return reply.status(404).send({ error: "Document not found" });
      }

      // Deleta o documento
      await prisma.document.delete({ where: { id } });

      return reply.status(200).send({ message: "Document deleted successfully" });
    } catch (error) {
      console.error(error);
      return reply.status(500).send({ error: "Failed to delete document" });
    }
  });
}