import { Link, Outlet } from "react-router-dom";

const Home = () => {
  return (
    <>
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
            <video
              className="rounded-lg shadow-lg w-3/4 max-w-2xl"
              controls
              data-testid="demo-video"
            >
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
