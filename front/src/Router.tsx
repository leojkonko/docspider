import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Home from "./pages/Home";
import DocumentsList from "./pages/documents/DocumentsList";
import Layout from "./pages/Layout";
import DocumentsCreate from "./pages/documents/DocumentsCreate";

const AppRouter: React.FC = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} /> {/* Página inicial */}
          <Route path="documents-list" element={<DocumentsList />} />
          <Route path="document-create" element={<DocumentsCreate />} />
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
