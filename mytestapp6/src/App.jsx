import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Navbar from './components/Navbar'
import ProductPage from './components/ProductPage'
import ProfileCard from './components/ProfileCard'


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Navbar/>
      <ProductPage/>
      <ProfileCard/>
    </>
  )
}

export default App
