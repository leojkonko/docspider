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
        isMenuOpen ? "w-72" : "w-20"
      } bg-white text-gray-900 shadow border-2 h-full transition-width duration-300`}
    >
      <ul
        className={`${
          isMenuOpen ? "w-60" : "w-[4.5rem]"
        } list-none fixed transition-width duration-300`}
      >
        <li className="shadow">
          <Link
            to={"/"}
            className="ps-7 pe-3 py-3 flex justify-between items-center"
          >
            {isMenuOpen && <>Início</>}
            <FaHouse className="text-2xl" />
          </Link>
        </li>
        <li className="shadow">
          <Link
            to={"/documents"}
            className="ps-7 pe-3 py-3 flex justify-between items-center"
          >
            {isMenuOpen && <>Meus documentos</>}
            <IoMdDocument className="text-2xl" />
          </Link>
        </li>
        <li className="shadow">
          <a
            href=""
            className="ps-7 pe-3 py-3 flex justify-between items-center"
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
