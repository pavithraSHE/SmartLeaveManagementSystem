<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

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
    background: linear-gradient(135deg, #43cea2, #185a9d);
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
}

input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border-radius: 6px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 10px;
    background: #43cea2;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
}

button:hover {
    background: #2ebf91;
}

.link {
    text-align: center;
    margin-top: 10px;
}

.link a {
    text-decoration: none;
    color: #185a9d;
}
</style>

</head>

<body>
    <h1 class="title">Smart Leave Management System <br> <small>with Approval Insights</small></h1>

<div class="container">
    <h2>Login</h2>

    <form action="LoginServlet" method="post">
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter Password" required>

        <button type="submit">Login</button>
    </form>

    <div class="link">
        <a href="register.jsp">Create new account</a>
    </div>
</div>

</body>
</html>

