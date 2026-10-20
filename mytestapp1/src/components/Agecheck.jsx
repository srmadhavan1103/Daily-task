import React from "react";
function Agecheck(){
    let age=20;
    let message;
    if (age >= 18) {
    message="Eligible to Vote";
  } else {
    message="Not Eligible to Vote";
  }
    return(
        <div>
            <h1>Voting Eligibility</h1>
           <p>{message}</p>
        </div>
    );
}
export default Agecheck;