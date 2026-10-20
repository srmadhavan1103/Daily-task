import React from "react";
function Result(){
    let mark=75;
    return(
        <div>
            <h1>Exam Result</h1>
            {
                mark>=35 ?
                (<p>Pass</p>):
                (<p>Fail</p>)
            }
        </div>
    );
}
export default Result;