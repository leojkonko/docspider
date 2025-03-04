import ReactDOM from "react-dom";
import { FaHouse } from "react-icons/fa6";
import useMenuStore from "../store/useMenuStore";
import { IoMdDocument } from "react-icons/io";
import { CiCircleInfo } from "react-icons/ci";
import { BrowserRouter as Router, Route, Routes, Link } from "react-router-dom";

const SideMenu = () => {
  const isMenuOpen = useMenuStore((state) => state.isMenuOpen);
  return (
    <aside
      className={`${
        isMenuOpen
          ? "w-full bg-white lg:w-[20.5rem] xl:w-[19rem] 2xl:w-72 z-10"
          : "w-20 lg:left-0 left-[-5rem]"
      } bg-white text-gray-900 shadow border-2 h-full transition-width duration-300 absolute lg:relative`}
    >
      <ul
        className={`${
          isMenuOpen ? "lg:w-64 w-full " : "w-[4.5rem]"
        } list-none fixed transition-width duration-300 bg-white z-10 h-full`}
      >
        <li className="shadow">
          <Link
            to={"/"}
            className="lg:ps-7 ps-4 pe-3 py-3 flex justify-between items-center"
          >
            {isMenuOpen && <>Início</>}
            <FaHouse className="text-2xl" />
          </Link>
        </li>
        <li className="shadow">
          <Link
            to={"/documents-list"}
            className="lg:ps-7 ps-4 pe-3 py-3 flex justify-between items-center"
          >
            {isMenuOpen && <>Meus documentos</>}
            <IoMdDocument className="text-2xl" />
          </Link>
        </li>
        <li className="shadow">
          <a
            href=""
            className="lg:ps-7 ps-4 pe-3 py-3 flex justify-between items-center"
          >
            {isMenuOpen && <>Sobre</>}
            <CiCircleInfo className="text-2xl" />
          </a>
        </li>
      </ul>
    </aside>
  );
};

export default SideMenu;
