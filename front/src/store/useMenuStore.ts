import { create } from 'zustand';

interface MenuState {
    isMenuOpen: boolean;
    toggleMenu: () => void;
}

const useMenuStore = create<MenuState>((set: (arg0: (state: MenuState) => { isMenuOpen: boolean; }) => any) => ({
    isMenuOpen: false,
    toggleMenu: () => set((state: MenuState) => ({ isMenuOpen: !state.isMenuOpen })),
}));

export default useMenuStore;