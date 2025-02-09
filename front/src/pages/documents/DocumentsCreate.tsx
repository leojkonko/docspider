import { useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";

export default function UploadDocument() {
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [file, setFile] = useState(null);
  const [message, setMessage] = useState("");

  const handleSubmit = async (e) => {
    e.preventDefault();

    if (!file) {
      setMessage("Selecione um arquivo.");
      return;
    }

    const formData = new FormData();
    formData.append("title", title);
    formData.append("description", description);
    formData.append("file", file);
    console.log(formData);
    try {
      const response = await axios.post(
        "http://localhost:3333/api/documents",
        formData,
        {
          headers: { "Content-Type": "multipart/form-data" },
        }
      );

      setMessage("Documento enviado com sucesso!");
    } catch (error) {
      console.log("error", error);
      setMessage("Erro ao enviar documento.");
    }
  };

  return (
    <div className="max-w-md mx-auto p-4 bg-white shadow-lg rounded-lg mt-10">
      <h2 className="text-2xl font-bold mb-4">Upload de Documento</h2>

      <form onSubmit={handleSubmit} className="space-y-4">
        <div>
          <label className="block font-semibold">Título</label>
          <input
            type="text"
            className="border w-full p-2 rounded bg-gray-200"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            required
          />
        </div>

        <div>
          <label className="block font-semibold">Descrição</label>
          <textarea
            className="border w-full p-2 rounded bg-gray-200"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            required
          />
        </div>

        <div>
          <label className="block font-semibold">Arquivo</label>
          <input
            type="file"
            className="border w-full p-2"
            onChange={(e) => setFile(e.target.files[0])}
            required
          />
        </div>

        <button
          type="submit"
          className="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700"
        >
          Enviar
        </button>
      </form>

      {message && (
        <>
          <p className="mt-4 text-center text-lg font-semibold">{message}</p>
          <Link
            to={"/documents-list"}
            className="mx-auto text-blue-700 flex w-full justify-center"
          >
            Voltar para listagem
          </Link>
        </>
      )}
    </div>
  );
}
