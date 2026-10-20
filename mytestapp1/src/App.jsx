import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Agecheck from './components/Agecheck.jsx'
import LoginStatus from './components/LoginStatus.jsx'
import Product from './components/Product.jsx'
import Result from './components/Result.jsx'
import Student from './components/Student.jsx'

function App() {

  return(
  <>
    <Student/>
    <LoginStatus/>
    <Result/>
    <Product/>
    <Agecheck/>
  </>
  );
}
  
export default App;
