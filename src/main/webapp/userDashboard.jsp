<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<title>User Dashboard</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
    text-align: center;
    padding-top: 50px;
}

.card {
    background: white;
    padding: 30px;
    width: 300px;
    margin: auto;
    border-radius: 10px;
    box-shadow: 0 0 10px gray;
}
</style>

</head>

<body>

<div class="card">
    <h2>Welcome User 👋</h2>

    <p>Name: <%= session.getAttribute("user") %></p>

    <a href="applyLeave.jsp">Apply Leave</a><br><br>
    <a href="logout.jsp">Logout</a>
</div>

</body>
</html>