<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>

<style>
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
    width: 350px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

h2 {
    margin-bottom: 15px;
}

p {
    margin-bottom: 20px;
    color: #333;
}

a {
    display: block;
    text-decoration: none;
    margin: 10px 0;
    padding: 10px;
    background: #667eea;
    color: white;
    border-radius: 6px;
    transition: 0.3s;
}

a:hover {
    background: #5a67d8;
}
</style>

</head>

<body>

<div class="container">

    <h2>Admin Panel ⚙️</h2>

    <p>Welcome, <b><%= session.getAttribute("user") %></b></p>

    <a href="viewRequests.jsp">📋 View Leave Requests</a>

    <a href="analytics.jsp">📊 View Analytics</a>

    <a href="logout.jsp">🚪 Logout</a>

</div>

</body>
</html>