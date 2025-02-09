import fastify from "fastify";
import {
  serializerCompiler,
  validatorCompiler,
} from "fastify-type-provider-zod";
import { createDocument } from "./routes/createDocument";
import cors from "@fastify/cors";
import { getDocuments } from "./routes/getDocuments";
import { updateDocument } from "./routes/updateDocument";
import { deleteDocument } from "./routes/deleteDocument";

const app = fastify();

app.register(cors, {
  origin: "*", // endereço do front p acessar back
});

app.setValidatorCompiler(validatorCompiler);
app.setSerializerCompiler(serializerCompiler);

app.register(createDocument);
app.register(getDocuments);
app.register(updateDocument);
app.register(deleteDocument);

app.listen({ port: 3333 }).then(() => {
  console.log("Server running on http://localhost:3333!");
});
