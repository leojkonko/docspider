import axios from "axios";

const API_URL = "http://localhost:3333/api/documents";

export interface Document {
    id: string;
    title: string;
    description: string;
    filename: string;
    fileUrl: string;
    createdAt: string;
}

export interface PaginatedResponse {
    page: number;
    limit: number;
    totalDocuments: number;
    totalPages: number;
    documents: Document[];
}

class DocumentService {
    /**
     * Obtém a lista de documentos com paginação.
     * @param page Número da página (default = 1)
     * @param limit Número de itens por página (default = 10)
     */
    static async getDocuments(page: number = 1, limit: number = 10): Promise<{ documents: Document[]; totalPages: number }> {
        const response = await axios.get<PaginatedResponse>(API_URL, { params: { page, limit } });
        return response.data;
    }

    /**
     * Obtém um documento pelo ID.
     * @param id ID do documento
     */
    static async getDocumentById(id: string): Promise<Document> {
        const response = await axios.get<Document>(`${API_URL}/${id}`);
        return response.data;
    }

    /**
     * Cria um novo documento.
     * @param data Dados do documento
     */
    static async createDocument(formData: FormData): Promise<Document> {
        const response = await axios.post<Document>(API_URL, formData, {
            headers: { "Content-Type": "multipart/form-data" },
        });
        return response.data;
    }

    /**
     * Edita um documento por ID.
     * @param id ID do documento a ser atualizado
     * @param data Dados para atualização
     */
    static async updateDocument(id: string, data: Partial<Document>): Promise<Document> {
        const response = await axios.patch<Document>(`${API_URL}/${id}`, data);
        return response.data;
    }

    /**
     * Exclui um documento pelo ID.
     * @param id ID do documento a ser removido
     */
    static async deleteDocument(id: string): Promise<void> {
        await axios.delete(`${API_URL}/${id}`);
    }
}

export default DocumentService;
