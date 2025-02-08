import useMenuStore from "../store/useMenuStore";
import { IoIosArrowForward } from "react-icons/io";

const Breadcrumb = () => {
  const toggleMenu = useMenuStore((state) => state.toggleMenu);
  return (
    <section className=" w-full p-6">
      <div className="container">
        <div className="flex gap-2 items-center">
          <a href="">Início</a>
          <IoIosArrowForward />
          <a className="text-gray-500 hover:text-gray-500">Início</a>
        </div>
        <h1 className="text-gray-600 text-2xl font-bold flex mt-5">Título</h1>
      </div>
    </section>
  );
};

export default Breadcrumb;
