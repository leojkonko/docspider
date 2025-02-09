import { useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";

export default function UploadDocument() {
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [file, setFile] = useState<File | null>(null);
  const [message, setMessage] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setMessage(null);
    setError(null);

    if (!file) {
      setError("Selecione um arquivo.");
      return;
    }

    const formData = new FormData();
    formData.append("title", title);
    formData.append("description", description);
    formData.append("file", file);

    try {
      await axios.post("http://localhost:3333/api/documents", formData, {
        headers: { "Content-Type": "multipart/form-data" },
      });

      setMessage("Documento enviado com sucesso!");
    } catch (err: any) {
      console.error("Erro ao enviar documento:", err);

      if (err.response?.data?.error) {
        // const errorData = err.response.data.error.title;
        const errorData =
          err.response.data.error.title ||
          err.response.data.error.description._errors;

        const errorMessage =
          typeof errorData === "string"
            ? errorData
            : Object.values(errorData).flat().join(" ");

        setError(errorMessage);
      } else {
        setError("Erro desconhecido. Tente novamente.");
      }
    }
  };

  return (
    <div className="max-w-md mx-auto p-4 bg-white shadow-lg rounded-lg mt-10">
      <h2 className="text-2xl font-bold mb-4">Upload de Documento</h2>

      {/* Exibe mensagem de erro em vermelho */}
      {error && <p className="text-red-600 text-center">{error}</p>}

      {/* Exibe mensagem de sucesso em verde */}
      {message && <p className="text-green-600 text-center">{message}</p>}

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
            onChange={(e) => setFile(e.target.files?.[0] || null)}
            required
          />
        </div>

        <button
          type="submit"
          className="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 w-full"
        >
          Enviar
        </button>
      </form>

      <Link
        to="/documents-list"
        className="mt-4 text-blue-700 flex w-full justify-center"
      >
        Voltar para listagem
      </Link>
    </div>
  );
}
