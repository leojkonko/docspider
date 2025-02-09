import { FastifyInstance } from "fastify";
import { ZodTypeProvider } from "fastify-type-provider-zod";
import { PrismaClient } from "@prisma/client";
import z from "zod";

const prisma = new PrismaClient();

// Extensões de arquivo proibidas
const blockedExtensions = [".exe", ".zip", ".bat"];

export async function createDocument(app: FastifyInstance) {
  app.withTypeProvider<ZodTypeProvider>().post(
    "/api/documents",
    {
      schema: {
        body: z.object({
          title: z.string().min(1, "Title is required").max(100, "Title must be at most 100 characters"),
          description: z.string().min(1, "Description is required").max(2000, "Description must be at most 2000 characters"),
          filename: z.string().min(1, "Filename is required"),
          fileUrl: z.string().url("Invalid URL format"),
        }),
      },
    },
    async (request, reply) => {
      const { title, description, filename, fileUrl } = request.body;

      // Verifica se o filename ou fileUrl contém uma extensão proibida
      const isBlockedFilename = blockedExtensions.some((ext) => filename.toLowerCase().endsWith(ext));
      const isBlockedFileUrl = blockedExtensions.some((ext) => fileUrl.toLowerCase().endsWith(ext));

      if (isBlockedFilename || isBlockedFileUrl) {
        return reply.status(400).send({
          error: "File type not allowed. Uploads of .exe, .zip, and .bat are prohibited.",
        });
      }

      try {
        const newDocument = await prisma.document.create({
          data: { title, description, filename, fileUrl },
        });

        return reply.status(201).send(newDocument);
      } catch (error) {
        console.error(error);
        return reply.status(500).send({ error: "Failed to create document" });
      }
    }
  );
}
