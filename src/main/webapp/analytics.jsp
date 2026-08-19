<%@ page import="java.sql.*,java.util.*,dao.DBConnection" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Analytics</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
    text-align: center;
}

.card {
    background: white;
    padding: 20px;
    margin: 20px auto;
    width: 400px;
    border-radius: 10px;
    box-shadow: 0 0 10px gray;
}
</style>

</head>

<body>

<h2>Analytics Dashboard 📊</h2>

<div class="card">
<h3>Frequent Absentees</h3>

<%
try {
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery(
        "SELECT user_id, COUNT(*) as total FROM leave_requests GROUP BY user_id ORDER BY total DESC LIMIT 3"
    );

    while(rs.next()) {
%>
    <p>User ID: <%= rs.getInt("user_id") %> → Leaves: <%= rs.getInt("total") %></p>
<%
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>

</div>

<div class="card">
<h3>Peak Leave Day</h3>

<%
try {
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery(
        "SELECT DAYNAME(from_date) as day, COUNT(*) as total FROM leave_requests GROUP BY day ORDER BY total DESC LIMIT 1"
    );

    if(rs.next()) {
%>
    <p><%= rs.getString("day") %> (Most Leaves: <%= rs.getInt("total") %>)</p>
<%
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>

</div>

<div class="card">
<h3>Monthly Leave Trends</h3>

<%
try {
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery(
        "SELECT MONTH(from_date) as month, COUNT(*) as total FROM leave_requests GROUP BY month"
    );

    while(rs.next()) {
%>
    <p>Month <%= rs.getInt("month") %> → Leaves: <%= rs.getInt("total") %></p>
<%
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>

</div>

</body>
</html>