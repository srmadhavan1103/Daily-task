import React, { useState } from "react";
function SubmitButton(){
    const [name,setName]=useState("");
    const [result,setResult]=useState("");
    function handleSubmit(e){
        e.preventDefault();
        setResult(name);
    }
return(
    <div>
        <h2>Submit user Input</h2>
         <form onSubmit={handleSubmit}>
        <input
          type="text"
          placeholder="Enter your name"
          value={name}
          onChange={(e) => setName(e.target.value)}
        />
        <button type="submit">Submit</button>
      </form>
      <h3>{result}</h3>
    </div>
);
}
export default SubmitButton;