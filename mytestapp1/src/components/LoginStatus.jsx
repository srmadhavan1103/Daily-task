import React from "react";
function  LoginStatus(){
    let LogeedIn = true;
    return(
        <div>
            <h1> Login Status</h1>
            <p>{ LogeedIn  ? "Welcome User!" : "Please Login"}</p>
        </div>
    );

}
export default LoginStatus;