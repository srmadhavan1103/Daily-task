import { useState, useEffect } from 'react'
import './App.css'

function App() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [loginUser, setLoginUser] = useState("");

  function handleLogin(event) {
    event.preventDefault();
    setLoginUser(username);
  }

  const [studentName, setStudentName] = useState("");
  const [age, setAge] = useState("");
  const [department, setDepartment] = useState("");
  const [student, setStudent] = useState(null);

  function handleStudent(event) {
    event.preventDefault();

    setStudent({
      name: studentName,
      age: age,
      department: department
    });
  }

  const [course, setCourse] = useState("React");

  useEffect(() => {
    document.title = "Selected Course: " + course;
  }, [course]);


  const [accepted, setAccepted] = useState(false);
  const [termsSubmitted, setTermsSubmitted] = useState(false);

  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [regPassword, setRegPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [registered, setRegistered] = useState(false);
  const [error, setError] = useState("");

  function handleSubmit(event) {
    event.preventDefault();

    if (regPassword.length < 6) {
      setError("Password must contain at least 6 characters");
      setRegistered(false);
      return;
    }

    if (regPassword !== confirmPassword) {
      setError("Passwords do not match");
      setRegistered(false);
      return;
    }

    setError("");
    setRegistered(true);
  }

  return (
    <div>

      <h1>Day 42 React Assignment</h1>

      <hr />
      <h2>1. Simple Login Form</h2>

      <form onSubmit={handleLogin}>
        <label>Username:</label>
        <input
          type="text"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
          required
        />

        <br /><br />

        <label>Password:</label>
        <input
          type="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        />

        <br /><br />

        <button type="submit">Login</button>
      </form>

      {loginUser && <h3>Welcome, {loginUser}!</h3>}

      <hr />
      <h2>2. Student Details</h2>

      <form onSubmit={handleStudent}>
        <label>Student Name:</label>
        <input
          type="text"
          value={studentName}
          onChange={(e) => setStudentName(e.target.value)}
          required
        />

        <br /><br />

        <label>Age:</label>
        <input
          type="number"
          value={age}
          onChange={(e) => setAge(e.target.value)}
          required
        />

        <br /><br />

        <label>Department:</label>
        <input
          type="text"
          value={department}
          onChange={(e) => setDepartment(e.target.value)}
          required
        />

        <br /><br />

        <button type="submit">Submit Details</button>
      </form>

      {student && (
        <div>
          <h3>Student Details</h3>
          <p>Name: {student.name}</p>
          <p>Age: {student.age}</p>
          <p>Department: {student.department}</p>
        </div>
      )}

      <hr />
      <h2>3. Course Selection</h2>

      <label>Select Course:</label>

      <select
        value={course}
        onChange={(e) => setCourse(e.target.value)}
      >
        <option value="React">React</option>
        <option value=".NET">.NET</option>
        <option value="Java">Java</option>
      </select>

      <h3>Selected Course: {course}</h3>

      <hr />
      <h2>4. Terms and Conditions</h2>

      <label>
        <input
          type="checkbox"
          checked={accepted}
          onChange={(e) => {
            setAccepted(e.target.checked);
            setTermsSubmitted(false);
          }}
        />
        I accept the Terms and Conditions
      </label>

      <br /><br />

      <button
        type="button"
        disabled={!accepted}
        onClick={() => setTermsSubmitted(true)}
      >
        Submit
      </button>

      {termsSubmitted && <p>Terms accepted successfully!</p>}

      <hr />
      <h2>5. Registration Form</h2>

      <form onSubmit={handleSubmit}>
        <label>Name:</label>
        <input
          type="text"
          value={name}
          onChange={(e) => setName(e.target.value)}
          required
        />

        <br /><br />

        <label>Email:</label>
        <input
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />

        <br /><br />

        <label>Password:</label>
        <input
          type="password"
          value={regPassword}
          onChange={(e) => setRegPassword(e.target.value)}
          required
        />

        <br /><br />

        <label>Confirm Password:</label>
        <input
          type="password"
          value={confirmPassword}
          onChange={(e) => setConfirmPassword(e.target.value)}
          required
        />

        <br /><br />

        <button type="submit">Register</button>
      </form>
      {error && <p style={{ color: "red" }}>{error}</p>}

      {registered && (
        <div>
          <h3>Registration Successful!</h3>
          <p>Name: {name}</p>
          <p>Email: {email}</p>
        </div>
      )}

    </div>
  )
}

export default App
