import { useState, useEffect } from "react";
import { useParams, Link } from "react-router-dom";
import axios from "axios";

const API_URL = "http://localhost:3333/api/documents";

export default function DocumentEdit() {
  const { id } = useParams();
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [file, setFile] = useState<File | null>(null);
  const [message, setMessage] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchDocument = async () => {
      try {
        const response = await axios.get(`${API_URL}/${id}`);
        setTitle(response.data.title);
        setDescription(response.data.description);
        setFile(response.data.fileUrl);
      } catch (err) {
        console.error("Erro ao buscar documento:", err);
        setError("Erro ao carregar o documento.");
      }
    };
    fetchDocument();
  }, [id]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setMessage(null);
    setError(null);

    try {
      const updatedData = { title, description };
      await axios.patch(`${API_URL}/${id}`, updatedData);
      setMessage("Documento atualizado com sucesso!");
    } catch (err) {
      console.error("Erro ao atualizar documento:", err);
      setError("Erro ao atualizar o documento. Tente novamente.");
    }
  };

  return (
    <div className="w-2/3 mx-auto p-4 bg-white shadow-lg rounded-lg mt-10">
      <h2 className="text-2xl font-bold mb-4">Editar Documento</h2>

      {error && <p className="text-red-600 text-center">{error}</p>}
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

        <button
          type="submit"
          className="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 w-full"
        >
          Atualizar
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
