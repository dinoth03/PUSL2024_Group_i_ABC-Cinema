package ContactFormServlet;

import jakarta.servlet.ServletException; // For handling servlet-related exceptions.

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet; // Base class for creating HTTP Servlets.
import jakarta.servlet.http.HttpServletRequest; // Represents HTTP request information.
import jakarta.servlet.http.HttpServletResponse; // Represents HTTP response to the client.
import jakarta.servlet.http.HttpSession;

import java.io.IOException; // Handles input/output exceptions.
import java.sql.Connection; // Represents a connection to the database.
import java.sql.DriverManager; // Manages database drivers and connections.
import java.sql.PreparedStatement; // Allows safe execution of SQL queries with placeholders.
import java.sql.SQLException; // Handles SQL exceptions.

@WebServlet("/ContactFormServlet")
public class ContactFormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String feedbackType = request.getParameter("feedback-type");
        String feedbackDetails = request.getParameter("feedback-details");

        Connection connection = null;
        PreparedStatement statement = null;

        try {
            // Database connection details
            String dbURL = "jdbc:mysql://localhost:3306/abccinema";
            String dbUser = "root";
            String dbPassword = "12345678";

            // Establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert query
            String query = "INSERT INTO contacts (first_name, last_name, email, phone, feedback_type, feedback_details) VALUES (?, ?, ?, ?, ?, ?)";
            statement = connection.prepareStatement(query);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, feedbackType);
            statement.setString(6, feedbackDetails);

            // Execute the query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                // Set success message in session
                HttpSession session = request.getSession();
                response.getWriter().println( "Thank you for contacting us! We will get back to you soon.");

                // Redirect to the JSP
               
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("Database driver not found.");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error inserting data into database.");
        } finally {
            // Close resources
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
