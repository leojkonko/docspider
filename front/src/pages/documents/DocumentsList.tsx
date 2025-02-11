import { useEffect, useState } from "react";
import DocumentService from "../../api/services/documentService";
import { Document } from "../../api/models/documentModels";
import { Link } from "react-router-dom";
import { format } from "date-fns";
import { MdModeEdit } from "react-icons/md";
import { FaRegTrashAlt } from "react-icons/fa";

export default function DocumentList() {
  const [documents, setDocuments] = useState<Document[]>([]);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const limit = 5;
  const [message, setMessage] = useState<string>("");

  useEffect(() => {
    async function fetchDocuments() {
      try {
        const response = await DocumentService.getDocuments(page, limit);
        setDocuments(response.documents);
        setTotalPages(response.totalPages);
      } catch (error) {
        console.error("Erro ao buscar documentos:", error);
      }
    }

    fetchDocuments();
  }, [page]);

  async function handleDelete(docId: string) {
    try {
      await DocumentService.deleteDocument(docId);
      setDocuments((prevDocuments) =>
        prevDocuments.filter((doc) => doc.id !== docId)
      );
      setMessage("Documento excluído com sucesso!");
      setTimeout(() => setMessage(""), 3000);
    } catch (error) {
      console.error("Erro ao excluir documento:", error);
      setMessage("Erro ao excluir documento.");
      setTimeout(() => setMessage(""), 3000);
    }
  }

  return (
    <div className=" w-full p-5">
      <div className="w-full flex justify-between mb-4">
        <h1 className="text-2xl font-bold mb-5 items-center">
          📄 Lista de Documentos
        </h1>
        <Link
          to={"/document-create"}
          className="px-6 py-3 bg-blue-600 font-semibold rounded-lg shadow-lg hover:bg-blue-700 hover:text-white text-white"
        >
          Criar documento
        </Link>
      </div>

      {documents.length === 0 ? (
        <p className="text-gray-500">Nenhum documento encontrado.</p>
      ) : (
        <div className="lg:space-x-4 flex-col  lg:flex-row flex ">
          {documents.map((doc) => (
            <div className="h-auto w-full sm:w-2/5 md:w-3/5 lg:w-1/4 xl:w-1/5 lg:px-4">
              <div
                key={doc.id}
                className="border border-gray-300 p-4 rounded-lg shadow-md h-full"
              >
                <div className="flex justify-end gap-3">
                  <Link to={`/edit-document/${doc.id}`}>
                    <MdModeEdit />
                  </Link>
                  <button onClick={() => handleDelete(doc.id)}>
                    <FaRegTrashAlt />
                  </button>
                </div>
                <h2 className="text-lg font-semibold">{doc.title}</h2>
                <p className="text-gray-600 mt-1">{doc.description}</p>
                <p className="text-gray-600 mt-2 text-sm">
                  Criado em: {format(new Date(doc.createdAt), "dd/MM/yyyy")}
                </p>
                <div className="mt-3">
                  <a
                    href={``}
                    target="_blank"
                    download={`http://localhost:3333${doc.fileUrl}`}
                    rel="noopener noreferrer"
                    className="text-blue-600 hover:underline"
                  >
                    📎 {doc.filename} (Baixar)
                    {doc.filename.endsWith(".pdf") ? (
                      <iframe
                        src={`http://localhost:3333${doc.fileUrl}`}
                        className="w-full h-64 border mt-4"
                        title={doc.filename}
                      />
                    ) : doc.filename.match(/\.(jpg|jpeg|png|gif)$/) ? (
                      <img
                        src={`http://localhost:3333${doc.fileUrl}`}
                        alt={doc.filename}
                        className="w-full max-h-64 object-cover border rounded mt-4"
                      />
                    ) : (
                      <div className="w-full h-48 object-cover border rounded mt-4 flex items-center justify-center">
                        No preview
                      </div>
                    )}
                  </a>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}

      {/* PAGINAÇÃO */}
      <div className="flex justify-between items-center mt-6">
        <button
          disabled={page === 1}
          onClick={() => setPage(page - 1)}
          className={`px-4 py-2 rounded ${
            page === 1
              ? "bg-gray-300 cursor-not-allowed"
              : "bg-blue-600 text-white hover:bg-blue-700"
          }`}
        >
          ◀ Anterior
        </button>
        <span className="text-gray-600">
          Página {page} de {totalPages}
        </span>
        <button
          disabled={page === totalPages}
          onClick={() => setPage(page + 1)}
          className={`px-4 py-2 rounded ${
            page === totalPages
              ? "bg-gray-300 cursor-not-allowed"
              : "bg-blue-600 text-white hover:bg-blue-700"
          }`}
        >
          Próxima ▶
        </button>
      </div>
    </div>
  );
}
