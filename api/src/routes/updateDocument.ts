import { FastifyInstance } from "fastify";
import { PrismaClient } from "@prisma/client";
import z from "zod";

const prisma = new PrismaClient();

/**
 * Atualiza parcialmente um documento existente pelo ID
 */
export async function updateDocument(app: FastifyInstance) {
  app.patch(
    "/api/documents/:id",
    {
      schema: {
        body: z.object({
          title: z.string().max(100, "Title must be at most 100 characters").optional(),
          description: z.string().optional(),
          filename: z.string().optional(),
          fileUrl: z.string().url("Invalid URL format").optional(),
        }),
      },
    },
    async (request, reply) => {
      const { id } = request.params as { id: string };
      const { title, description, filename, fileUrl } = request.body;

      try {
        const existingDocument = await prisma.document.findUnique({ where: { id } });
        if (!existingDocument) {
          return reply.status(404).send({ error: "Document not found" });
        }

        const updatedDocument = await prisma.document.update({
          where: { id },
          data: {
            title: title ?? existingDocument.title,
            description: description ?? existingDocument.description,
            filename: filename ?? existingDocument.filename,
            fileUrl: fileUrl ?? existingDocument.fileUrl,
          },
        });

        return reply.status(200).send(updatedDocument);
      } catch (error) {
        console.error(error);
        return reply.status(500).send({ error: "Failed to update document" });
      }
    }
  );
}
