import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Student from './Component/Student'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Student name="Madhavan" age={23} course="MCA" />
      <Student name="Faizal" age={22} course="BE" />
      <Student name="Mani" age={23} course="Bsc" />

    </>
  );
}

export default App
