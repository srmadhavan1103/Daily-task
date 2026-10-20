import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

function App() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  function handleSumbit(event){
    event.preventDefault();
    alert("Name: "+name+"\nEmail:" +email);
  }

  return (
    <>
      <div>
        <h1>Registration Form</h1>
        <form onSubmit={handleSumbit}>
          <label>Name:</label>
          <input type="text" value={name} 
          onChange={(e)=>setName(e.target.value)} required />
          <br /><br />

          <label>Email:</label>
          <input type="email" value={email} 
          onChange={(e)=>setEmail(e.target.value)} required />
          <br /><br />

          <label>Password:</label>
          <input type="password" value={password} 
          onChange={(e)=>setPassword(e.target.value)} required />
          <br /><br />

          <button type='sumbit'>Register</button>
        </form>
      </div>
    </>
  )
}

export default App
