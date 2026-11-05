import { useState } from "react";
function Navbar() {
    const [menuOpen, setMenuOpen] = useState(false);
    return (
        <nav className="bg-gray-900 text-white px-6 py-4">
            <div className="max-w-7xl mx-auto flex justify-between items-center">
                <h1 className="text-2xl font-bold text-blue-400">
                    MyWebsite
                </h1>
                <div className="hidden md:flex items-center gap-8">

                    <a href="#home" className="hover:text-blue-400">Home</a>
                    <a href="#about" className="hover:text-blue-400">About</a>
                    <a href="#services" className="hover:text-blue-400">Services</a>
                    <a href="#contact" className="hover:text-blue-400">Contact</a>

                    <button className="bg-blue-600 px-5 py-2 rounded-lg hover:bg-blue-700">
                        Login
                    </button>

                </div>
                <button
                    className="md:hidden text-2xl"
                    onClick={() => setMenuOpen(!menuOpen)}
                >
                </button>
            </div>
            {menuOpen && (
                <div className="flex flex-col gap-4 mt-5 md:hidden">
                    <a href="#home">Home</a>
                    <a href="#about">About</a>
                    <a href="#services">Services</a>
                    <a href="#contact">Contact</a>
                    <button className="bg-blue-600 px-4 py-2 rounded-lg">
                        Login
                    </button>
                </div>
            )}
        </nav>
    );
}

export default Navbar;