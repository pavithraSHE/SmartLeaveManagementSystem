<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<title>Apply Leave</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(135deg, #ff9a9e, #fad0c4);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background: white;
    padding: 30px;
    border-radius: 10px;
    width: 350px;
    box-shadow: 0 0 10px gray;
}

h2 {
    text-align: center;
}

input, textarea {
    width: 100%;
    padding: 8px;
    margin: 10px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #ff758c;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background: #ff5e78;
}
</style>

</head>

<body>

<div class="container">
    <h2>Apply Leave</h2>

    <form action="ApplyLeaveServlet" method="post">

        <label>From Date:</label>
        <input type="date" name="fromDate" required>

        <label>To Date:</label>
        <input type="date" name="toDate" required>

        <label>Reason:</label>
        <textarea name="reason" required></textarea>

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>