import React,{ useState } from "react";
function Employee() {
  const [empid, setEmpid] = useState(101);
  const [empname, setEmpname] = useState("Madhavan");
  const [salary, setSalary] = useState(25000);
  const [desg, setDesg] = useState("Developer");
  const [deptno, setDeptno] = useState(10);
  return (
    <div>
      <h2>Employee Details</h2>

      <p>Employee ID: {empid}</p>
      <p>Employee Name: {empname}</p>
      <p>Salary: {salary}</p>
      <p>Designation: {desg}</p>
      <p>Department No: {deptno}</p>

      <button onClick={() => setSalary(salary + 5000)}>
        Increase Salary
      </button>
    </div>
  );
}

export default Employee;
