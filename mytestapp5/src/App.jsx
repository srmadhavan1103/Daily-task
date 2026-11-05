import { Link, Routes, Route } from "react-router-dom";
import Home from "./components/Home";
import About from "./components/About";
import Contact from "./components/Contact";
import Products from "./components/Products";
import Login from "./components/Login";
import Dashboard from "./components/Dashboard";
import "./App.css";

function App() {
    return (
        <div>
            <h1>Day 43 React Router Assignment</h1>
            <nav>
                <Link to="/">Home</Link> {" | "}
                <Link to="/about">About</Link> {" | "}
                <Link to="/contact">Contact</Link> {" | "}
                <Link to="/products">Products</Link> {" | "}
                <Link to="/login">Login</Link> {" | "}
                <Link to="/dashboard">Dashboard</Link>
            </nav>
            <hr />
            <Routes>
                <Route path="/" element={<Home />} />
                <Route path="/about" element={<About />} />
                <Route path="/contact" element={<Contact />} />
                <Route path="/products" element={<Products />} />
                <Route path="/login" element={<Login />} />
                <Route path="/dashboard" element={<Dashboard />} />
            </Routes>

        </div>
    );
}
export default App;