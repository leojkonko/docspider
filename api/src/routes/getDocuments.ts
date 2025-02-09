import { FastifyInstance } from "fastify";
import { PrismaClient } from "@prisma/client";
import z from "zod";

const prisma = new PrismaClient();

/**
 * Retorna documentos com paginação
 */
export async function getDocuments(app: FastifyInstance) {
  app.get(
    "/api/documents",
    {
      schema: {
        querystring: z.object({
          page: z.string().optional(),
          limit: z.string().optional(),
        }),
      },
    },
    async (request, reply) => {
      const { page = "1", limit = "10" } = request.query;

      // Converte para números inteiros
      const pageNumber = parseInt(page, 10);
      const limitNumber = parseInt(limit, 10);

      // Validação básica
      if (pageNumber < 1 || limitNumber < 1) {
        return reply.status(400).send({ error: "Page and limit must be positive numbers" });
      }

      try {
        // Busca os documentos paginados
        const documents = await prisma.document.findMany({
          skip: (pageNumber - 1) * limitNumber,
          take: limitNumber,
        });

        // Conta o total de documentos no banco
        const totalDocuments = await prisma.document.count();

        return reply.send({
          page: pageNumber,
          limit: limitNumber,
          totalDocuments,
          totalPages: Math.ceil(totalDocuments / limitNumber),
          documents,
        });
      } catch (error) {
        console.error(error);
        return reply.status(500).send({ error: "Failed to fetch documents" });
      }
    }
  );
}
