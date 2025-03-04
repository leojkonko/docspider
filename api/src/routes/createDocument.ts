import { FastifyInstance } from "fastify";
import { ZodTypeProvider } from "fastify-type-provider-zod";
import { PrismaClient } from "@prisma/client";
import z from "zod";
import fs from "fs";
import path from "path";
import crypto from "crypto";
import multipart from "@fastify/multipart";
import fastifyStatic from "@fastify/static";

const prisma = new PrismaClient();

const blockedExtensions = [".exe", ".zip", ".bat"];

const UPLOAD_DIR = path.resolve(__dirname, "..", "uploads");
const documentSchema = z.object({
  title: z.string().min(1, "Title is required").max(100, "Title must be at most 100 characters"),
  description: z.string().min(1, "Description is required").max(2000, "Description must be at most 2000 characters"),
});

export async function createDocument(app: FastifyInstance) {
  app.register(multipart);

  app.register(fastifyStatic, {
    root: UPLOAD_DIR,
    prefix: "/uploads/",
  });

  app.withTypeProvider<ZodTypeProvider>().post("/api/documents", async (request, reply) => {
    try {
      const data = await request.file();
      if (!data) {
        return reply.status(400).send({ error: "File is required" });
      }

      const title = data.fields.title?.value || "";
      const description = data.fields.description?.value || "";

      const validationResult = documentSchema.safeParse({ title, description });
      if (!validationResult.success) {
        return reply.status(400).send({ error: validationResult.error.format() });
      }

      const fileExt = path.extname(data.filename).toLowerCase();
      if (blockedExtensions.includes(fileExt)) {
        return reply.status(400).send({ error: "File type not allowed" });
      }

      const uniqueFilename = data.filename;
      const filePath = path.join(UPLOAD_DIR, uniqueFilename);

      const fileBuffer = await data.toBuffer();
      if (fileBuffer.length === 0) {
        return reply.status(400).send({ error: "Uploaded file is empty" });
      }

      await fs.promises.writeFile(filePath, fileBuffer);

      if (!fs.existsSync(filePath)) {
        return reply.status(500).send({ error: "File was not saved correctly" });
      }

      const newDocument = await prisma.document.create({
        data: {
          title,
          description,
          filename: uniqueFilename,
          fileUrl: `/uploads/${uniqueFilename}`,
        },
      });

      return reply.status(201).send(newDocument);
    } catch (error) {
      console.error("❌ Erro ao processar upload:", error);
      return reply.status(500).send({ error: "Failed to create document" });
    }
  });
}
