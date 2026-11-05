import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import BlurInput from './components/BlurInput'
import ButtonInput from './components/ButtonInput'
import Customer from './components/Customer'
import Employee from './components/Employee'
import MultipleEvents from './components/MultipleEvents'
import PassValue from './components/PassValue'
import Product from './components/Product'
import SubmitButton from './components/SubmitButton'


function App() {
  const [count, setCount] = useState(0)

  return (
    <div>
      <h1>React Event Handling Tasks</h1>
      <SubmitButton />
      <hr />
      <ButtonInput />
      <hr />

      <PassValue />
      <hr />

      <MultipleEvents />
      <hr />

      <BlurInput />
      <hr />

      <h1>React useState Tasks</h1>

      <Employee />
      <hr />

      <Product />
      <hr />

      <Customer />
    </div>
  )
}

export default App
