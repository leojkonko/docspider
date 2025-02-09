import { useLocation, Link } from "react-router-dom";
import useMenuStore from "../store/useMenuStore";
import { IoIosArrowForward } from "react-icons/io";

const Breadcrumb = () => {
  const location = useLocation();
  const paths = location.pathname.split("/").filter((p) => p);
  const toggleMenu = useMenuStore((state) => state.toggleMenu);

  const routeNames = {
    "": "Início",
    about: "Sobre",
    "documents-list": "Lista de Documentos",
    // Adicione mais mapeamentos conforme necessário
  };

  return (
    <section className="w-full p-6">
      <div className="container">
        <div className="flex gap-2 items-center">
          <Link to="/" className="text-blue-600 hover:underline">
            Início
          </Link>
          {paths.map((path, index) => {
            const url = `/${paths.slice(0, index + 1).join("/")}`;
            return (
              <div key={url} className="flex items-center">
                <IoIosArrowForward />
                <Link
                  to={url}
                  className="text-gray-500 hover:text-gray-500 capitalize"
                >
                  {routeNames[path] || decodeURIComponent(path)}
                </Link>
              </div>
            );
          })}
        </div>
        <h1 className="text-gray-600 text-2xl font-bold flex mt-5">Título</h1>
      </div>
    </section>
  );
};

export default Breadcrumb;
