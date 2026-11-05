import React ,{ useState } from "react";
function ButtonInput() {
  const [input, setInput] = useState("");
  const [output, setOutput] = useState("");

  return (
    <div>
      <h2>Button Click Event</h2>

      <input
        type="text"
        value={input}
        onChange={(e) => setInput(e.target.value)}
        placeholder="Enter something"
      />

      <button onClick={() => setOutput(input)}>
        Display
      </button>

      <h3>{output}</h3>
    </div>
  );
}
export default ButtonInput;
