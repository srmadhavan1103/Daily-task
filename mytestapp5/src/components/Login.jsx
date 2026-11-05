import { useState } from "react";
import { useNavigate } from "react-router-dom";
function Login() {
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const navigate = useNavigate();
    function handleLogin(event) {
        event.preventDefault();

        if (username && password) {
            navigate("/dashboard");
        }
    }
    return (
        <div>
            <h2>Login Page</h2>

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
        </div>
    );
}
export default Login;