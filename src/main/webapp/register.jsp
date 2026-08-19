<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<style>
.title {
    text-align: center;
    color: white;
    position: absolute;
    top: 30px;
    font-size: 26px;
    font-weight: bold;
}

body {
    font-family: Arial;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background: white;
    padding: 35px;
    border-radius: 12px;
    width: 320px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

input, select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 15px;
}

button:hover {
    background: #5a67d8;
}

.link {
    text-align: center;
    margin-top: 10px;
}

.link a {
    text-decoration: none;
    color: #667eea;
}
</style>

</head>

<body>
<h1 class="title">Smart Leave Management System <br> <small>with Approval Insights</small> </h1>
<div class="container">
    <h2>Create Account</h2>

    <form action="RegisterServlet" method="post">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>

        <select name="role">
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select>

        <button type="submit">Register</button>
    </form>

    <div class="link">
        <a href="login.jsp">Already have an account? Login</a>
    </div>
</div>
</body>
</html>

