// import React from "react";
// function Student(props){
//     return(
//         <div>
//             <h1>Student details</h1>
//             <p>Name : {props.name}</p>
//          

<p>Age : {props.age}</p>
//             <p>Course : {props.course}</p>
//         </div>
//     );
// }
export default function Student({name,age,course}){
    return(
        <div>
            <h1>Student details</h1>
            <p>Name : {name}</p>
            <p>Age : {age}</p>
            <p>Course : {course}</p>
        </div>
    )

}