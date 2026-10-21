import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Button from './Button.jsx'
import Card from './Card.jsx'
import ProfileCard from './ProfileCard.jsx'
function App() {
  return (
    <div>
      <h1>User Profile Cards</h1>
      <ProfileCard name="Madhavan" age={23} role="Developer">
        <p>Likes React and JavaScript</p>
      </ProfileCard>

      <ProfileCard name="Vijay" age={52} role="Designer">
        <p>Enjoys designing websites</p>
      </ProfileCard>


      <h2>Reusable Buttons</h2>
      <Button color="blue" size="large">
        Submit
      </Button>
      <Button color="green" size="medium">
        Save
      </Button>


      <h2>Reusable Cards</h2>
      <Card title="Product">
        <p>This is a great product</p>
      </Card>
       <Card title="About">
        <p>We build simple and useful applications</p>
      </Card>

      <Button/>
      <Card/>
      <ProfileCard/>
    </div>
  );
}

export default App;
