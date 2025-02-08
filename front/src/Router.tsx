import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Home from "./pages/Home";
import Documents from "./pages/Documents";
import Layout from "./pages/Layout";

const AppRouter: React.FC = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} /> {/* Página inicial */}
          <Route path="documents" element={<Documents />} /> {/* Documentos */}
          {/* <Route path="about" element={<About />} /> */}{" "}
          {/* Para adicionar futuramente */}
        </Route>
      </Routes>
    </Router>
  );
};

export default AppRouter;
