import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Home from "./pages/Home";
import DocumentsList from "./pages/documents/DocumentsList";
import Layout from "./pages/Layout";
import DocumentsCreate from "./pages/documents/DocumentsCreate";
import DocumentEdit from "./pages/documents/DocumentEdit";

const AppRouter: React.FC = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} /> {/* Página inicial */}
          <Route path="documents-list" element={<DocumentsList />} />
          <Route path="document-create" element={<DocumentsCreate />} />
          <Route path="/edit-document/:id" element={<DocumentEdit />} />
          {/* Criação de documentos */}
          {/* Documentos */}
          {/* <Route path="about" element={<About />} /> */}{" "}
          {/* Para adicionar futuramente */}
        </Route>
      </Routes>
    </Router>
  );
};

export default AppRouter;
