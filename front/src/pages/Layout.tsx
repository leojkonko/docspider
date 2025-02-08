// src/components/Layout.tsx
import { Outlet } from "react-router-dom";
import Header from "../components/Header";
import SideMenu from "../components/SideMenu";
import Breadcrumb from "../components/Breadcrumb";

const Layout = () => {
  return (
    <>
      <Header />
      <main className="h-full bg-white flex text-gray-900 relative mt-[5.5rem]">
        <SideMenu />
        <div className="flex flex-col pb-0 w-full h-min">
          <Breadcrumb />
          <div className="bg-white flex text-gray-900 relative mt-12 w-full">
            <Outlet /> {/* Exibe o conteúdo das rotas */}
          </div>
        </div>
      </main>
    </>
  );
};

export default Layout;
