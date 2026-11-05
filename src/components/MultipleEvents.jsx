import React ,{ useState } from "react";
function MultipleEvents() {
  const [message, setMessage] = useState("Welcome");
  return (
    <div>
      <h2>Multiple Events</h2>

      <button
        onClick={() => setMessage("Button Clicked!")}
        onMouseOver={() => setMessage("Mouse Over!")}
      >
        Try Events
      </button>
      <h3>{message}</h3>
    </div>
  );
}

export default MultipleEvents;
