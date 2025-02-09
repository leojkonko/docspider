// src/components/Layout.tsx
import { Link, Outlet } from "react-router-dom";
import Header from "../components/Header";
import SideMenu from "../components/SideMenu";
import Breadcrumb from "../components/Breadcrumb";

const Home = () => {
  return (
    <>
      {/* <section className="">
        <div className="bg-gray-100 p-10 text-center">
          <h2 className="text-3xl font-bold mb-5">
            Por que escolher o DocuManage?
          </h2>
          <p className="text-lg mb-5">
            O DocuManage é a solução definitiva para gerenciar todos os seus
            documentos online. Com uma interface intuitiva e ferramentas
            poderosas, você pode organizar, compartilhar e acessar seus
            documentos de qualquer lugar.
          </p>
          <p className="text-lg mb-5">
            Nossa plataforma é segura, rápida e fácil de usar. Experimente agora
            e veja como o DocuManage pode transformar a maneira como você lida
            com documentos.
          </p>
        </div>
        <div className="bg-white p-10 text-center">
          <h2 className="text-3xl font-bold mb-5">Tecnologias Utilizadas</h2>
          <ul className="list-disc list-inside text-lg">
            <li>React</li>
            <li>Next</li>
            <li>TypeScript</li>
            <li>Tailwind CSS</li>
            <li>Zustand</li>
            <li>Node.js</li>
            <li>Express</li>
            <li>Prisma</li>
            <li>SQLite</li>
          </ul>
        </div>
      </section> */}
      <div className="min-h-screen bg-gray-50 flex flex-col w-full">
        {/* Hero Section */}
        <header className="bg-gradient-to-r from-blue-600 to-indigo-700 text-white py-20 text-center">
          <h1 className="text-4xl font-bold mb-4">
            Gerencie seus Documentos de Forma Simples e Segura
          </h1>
          <p className="text-lg max-w-2xl mx-auto">
            Nossa plataforma facilita o upload, organização e gerenciamento de
            documentos de maneira intuitiva.
          </p>
          <Link to="/documents-list">
            <button className="mt-6 px-6 py-3 bg-white text-blue-600 font-semibold rounded-lg shadow-lg hover:bg-gray-200">
              Comece Agora
            </button>
          </Link>
        </header>

        {/* Benefícios */}
        <section className="py-16 px-6 text-gray-800 text-center">
          <h2 className="text-3xl font-semibold mb-6">
            Por que escolher nossa plataforma?
          </h2>
          <div className="flex flex-wrap justify-center gap-8">
            <div className="max-w-sm bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-2">
                Armazenamento Seguro
              </h3>
              <p>Seus documentos são protegidos com criptografia avançada.</p>
            </div>
            <div className="max-w-sm bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-2">Acesso Rápido</h3>
              <p>Encontre e baixe seus arquivos em poucos cliques.</p>
            </div>
            <div className="max-w-sm bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-2">Gestão Simples</h3>
              <p>
                Edite e organize seus documentos com uma interface intuitiva.
              </p>
            </div>
          </div>
        </section>

        {/* Seção de Demonstração */}
        <section className="bg-white py-16 px-6 text-center">
          <h2 className="text-3xl font-semibold mb-6">Veja como funciona</h2>
          <div className="flex justify-center">
            <video className="rounded-lg shadow-lg w-3/4 max-w-2xl" controls>
              <source
                src="https://www.w3schools.com/html/mov_bbb.mp4"
                type="video/mp4"
              />
              Seu navegador não suporta vídeo.
            </video>
          </div>
        </section>

        {/* Call to Action */}
        <section className="bg-gray-900 text-white py-12 text-center">
          <h2 className="text-2xl font-semibold">
            Pronto para organizar seus documentos?
          </h2>
          <p className="text-gray-400 mt-2 mb-8">
            Cadastre-se agora e comece a gerenciar seus arquivos com facilidade.
          </p>
          <a
            href="https://wa.me/51998576618?text=Olá%2C%20gostaria%20de%20contratar%20você!"
            className="mt-4 px-6 py-3 bg-blue-600 font-semibold rounded-lg shadow-lg hover:bg-blue-700 hover:text-white"
          >
            Fale comigo!
          </a>
        </section>
      </div>
    </>
  );
};

export default Home;
