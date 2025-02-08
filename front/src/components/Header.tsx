import React, { useState, useEffect } from "react";
import logo from "../assets/logo.png";
import { GiHamburgerMenu } from "react-icons/gi";
import useMenuStore from "../store/useMenuStore";

const Header = () => {
  const toggleMenu = useMenuStore((state) => state.toggleMenu);

  return (
    <header
      className={`bg-gradient-to-r from-[#000a48] to-[#004388] text-white w-full transition-transform duration-300 fixed z-20`}
    >
      <div className="px-6 py-3 flex items-center mx-auto gap-6">
        <button onClick={toggleMenu} className="border-none outline-none">
          <GiHamburgerMenu className="text-2xl m-2" />
        </button>
        <a href="">
          <img src={logo} className="object-contain" alt="Logo" />
        </a>
      </div>
    </header>
  );
};

export default Header;
