import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Hello from './components/Text1'
import Text1 from './components/Text1.jsx'
import Text2 from './components/Text2.jsx'


function App() {
  return(
    <div>
    <Text1 />
    <Text2 />
    </div>

  )
}
  
export default App
