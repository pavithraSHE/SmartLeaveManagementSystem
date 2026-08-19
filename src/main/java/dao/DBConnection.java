package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            String username = System.getenv("DB_USERNAME");
            String password = System.getenv("DB_PASSWORD");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/leave_db?useSSL=false&serverTimezone=UTC",
                username,
                password
            );

            System.out.println("Database Connected Successfully");

        } catch (Exception e) {
            System.out.println("DB Error:");
            e.printStackTrace();
        }

        return con;
    }
}