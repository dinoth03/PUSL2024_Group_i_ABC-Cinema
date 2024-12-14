/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package BookingServlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve selected seats, date, and time from the form
        String[] selectedSeats = request.getParameterValues("seats");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        // Assuming user is logged in, fetch the user ID
        int userId = 1; // Replace with the actual user ID from the session
        
        // Movie ID (you can retrieve dynamically from the page)
        int movieId = 1; // Replace with the actual movie ID

        // Convert seat array to a comma-separated string
        String seatNumbers = (selectedSeats != null) ? String.join(",", selectedSeats) : "";

        // Set up the database connection
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            // Set up DB connection (replace with your own credentials)
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/abc_db", "root", "12345678");

            // SQL query to insert booking details
            String sql = "INSERT INTO booking (movie_id, user_id, seat_numbers, booking_date, booking_time) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, movieId);
            stmt.setInt(2, userId);
            stmt.setString(3, seatNumbers);
            stmt.setString(4, date);
            stmt.setString(5, time);

            // Execute the update
            int rowsAffected = stmt.executeUpdate();
            
            if (rowsAffected > 0) {
                // Successfully booked, redirect to confirmation page or show success message
                response.sendRedirect("payment.jsp");
            } else {
                // Failed to book, show an error message
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
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