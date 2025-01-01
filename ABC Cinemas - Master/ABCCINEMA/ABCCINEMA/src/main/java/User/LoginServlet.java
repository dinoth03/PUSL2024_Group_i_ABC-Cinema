package User;

import java.io.IOException; // Handles input/output exceptions.


import java.sql.Connection;  // Represents a connection to the database.
import java.sql.DriverManager;  // Manages database drivers and connections.
import java.sql.PreparedStatement;  // Allows safe execution of SQL queries with placeholders.
import java.sql.ResultSet;
import java.sql.SQLException; // Handles SQL exceptions.

import jakarta.servlet.RequestDispatcher; // For forwarding or including resources (JSP, another servlet).
import jakarta.servlet.ServletException; // For handling servlet-related exceptions.

import jakarta.servlet.http.HttpServlet; // Base class for creating HTTP Servlets.
import jakarta.servlet.http.HttpServletRequest; // Represents HTTP request information.
import jakarta.servlet.http.HttpServletResponse;  // Represents HTTP response to the client.
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");   // User input
        String password = request.getParameter("password");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/abccinema";
        String dbUsername = "root";
        String dbPassword = "12345678";
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establish a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            // SQL query to check if the user exists
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);

            rs = stmt.executeQuery();

            if (rs.next()) {
                // Login successful
                HttpSession session = request.getSession();
                session.setAttribute("users", email);
                response.sendRedirect("HomePage.jsp"); // Redirect to home page after login
            } else {
                // Invalid login credentials
                request.setAttribute("errorMessage", "Invalid email or password.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
