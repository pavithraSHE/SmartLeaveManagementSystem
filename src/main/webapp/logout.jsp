<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %>

<%
    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="1;URL=login.jsp">
<title>Logging out...</title>

<style>
body {
    font-family: Arial;
    text-align: center;
    padding-top: 100px;
    background: #f4f6f9;
}
</style>
</head>

<body>

<h2>Logging out... 🔒</h2>
<p>Redirecting to login page...</p>

</body>
</html>