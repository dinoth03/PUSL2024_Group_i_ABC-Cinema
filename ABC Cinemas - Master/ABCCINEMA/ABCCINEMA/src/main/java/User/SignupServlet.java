package User;

import java.io.IOException; // Handles input/output exception


import java.sql.Connection; // Represents a connection to the database.
import java.sql.DriverManager; // Manages database drivers and connections.
import java.sql.PreparedStatement;  // Allows safe execution of SQL queries with placeholders.

import java.sql.SQLException; // Handles SQL exceptions.
import jakarta.servlet.RequestDispatcher; // For forwarding or including resources (JSP, another servlet).
import jakarta.servlet.ServletException;  // For handling servlet-related exceptions.

import jakarta.servlet.http.HttpServlet; // Base class for creating HTTP Servlets.
import jakarta.servlet.http.HttpServletRequest; // Represents HTTP request information.
import jakarta.servlet.http.HttpServletResponse;  // Represents HTTP response to the client.


public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	//retrieve the details from the from
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/abccinema";
        String dbUsername = "root";
        String dbPassword = "12345678";
        
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish a connection to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            // SQL query to insert a new user into the database
            String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                // Signup successful, redirect to login page
                response.sendRedirect("Login.jsp");
            } else {
                // Error occurred during signup
                request.setAttribute("errorMessage", "Failed to create an account. Please try again.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("Login.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
