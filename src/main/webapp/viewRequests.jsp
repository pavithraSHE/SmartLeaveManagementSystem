<%@ page import="java.sql.*,dao.DBConnection" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<title>View Requests</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
}

h2 {
    text-align: center;
    margin-top: 20px;
}

table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    border: 1px solid #ccc;
    text-align: center;
}

th {
    background: #007bff;
    color: white;
}

a {
    text-decoration: none;
    color: blue;
    margin: 0 5px;
}

a:hover {
    text-decoration: underline;
}
</style>

</head>

<body>

<h2>Leave Requests</h2>

<table>
<tr>
    <th>ID</th>
    <th>User ID</th>
    <th>User Name</th>
    <th>From</th>
    <th>To</th>
    <th>Reason</th>
    <th>Status</th>
    <th>Action</th>
</tr>

<%
try {
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();

    //  JOIN query
    ResultSet rs = st.executeQuery(
        "SELECT lr.*, u.name FROM leave_requests lr JOIN users u ON lr.user_id = u.user_id"
    );

    while(rs.next()) {
%>

<tr>
    <td><%= rs.getInt("leave_id") %></td>
    <td><%= rs.getInt("user_id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("from_date") %></td>
    <td><%= rs.getString("to_date") %></td>
    <td><%= rs.getString("reason") %></td>
    <td><%= rs.getString("status") %></td>

    <td>
        <a href="ApproveServlet?id=<%= rs.getInt("leave_id") %>&status=Approved">Approve</a> |
        <a href="ApproveServlet?id=<%= rs.getInt("leave_id") %>&status=Rejected">Reject</a>
    </td>
</tr>

<%
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>

</table>

</body>
</html>