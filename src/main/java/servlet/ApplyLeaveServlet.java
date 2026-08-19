package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.DBConnection;

@WebServlet("/ApplyLeaveServlet")
public class ApplyLeaveServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");
        String reason = request.getParameter("reason");

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO leave_requests(user_id, from_date, to_date, reason, status) VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            // TEMP: using user_id = 1 (we'll improve later)
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("user_id");

            ps.setInt(1, userId);
            ps.setString(2, fromDate);
            ps.setString(3, toDate);
            ps.setString(4, reason);
            ps.setString(5, "Pending");

            int i = ps.executeUpdate();

            if (i > 0) {
            	 response.sendRedirect("userDashboard.jsp");
            } else {
                response.getWriter().println("Failed ❌");
        } 
            }catch (Exception e) {
            e.printStackTrace();
        }
    }
}