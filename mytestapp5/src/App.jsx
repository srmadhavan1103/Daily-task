import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import { Link,Routes, Route } from 'react-router-dom'
import About from './pages/About.jsx'
import Course from './pages/Course.jsx'
import Home from './pages/Home.jsx'
import Student from './pages/Student.jsx'


function App() {
  const [count, setCount] = useState(0)

  return (
    <div>
      <h1>Student Management system</h1>
      <nav>
        <Link to="/"> Home </Link>
        <Link to="/student"> Student </Link>
        <Link to="/course"> Course </Link>
        <Link to="/about"> About </Link>
      </nav>
      <hr /><hr />

    <Routes>
      <Route path="/" element={<Home/>}/>
      <Route path="/student" element={<Student/>}/>
      <Route path="/course" element={<Course/>}/>
      <Route path="/about" element={<About/>}/>
    </Routes>
  
     
    </div>
           
  );
}

export default App;
