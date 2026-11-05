import React,{ useState } from "react";
function BlurInput() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  return (
    <div>
      <h2>Blur Event</h2>

      <input
        type="text"
        placeholder="Enter your name"
        onChange={(e) => setName(e.target.value)}
        onBlur={() => setResult(name)}
      />

      <h3>{result}</h3>
    </div>
  );
}

export default BlurInput;
