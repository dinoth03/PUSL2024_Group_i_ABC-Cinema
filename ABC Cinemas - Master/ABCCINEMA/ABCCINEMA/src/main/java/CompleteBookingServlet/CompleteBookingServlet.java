package CompleteBookingServlet;

import jakarta.servlet.*; //handling HTTP requests and responses. 

import jakarta.servlet.http.*; //Provides HTTP-specific functionality for servlets
import jakarta.servlet.annotation.*; //Provides annotations for configuring servlets
import java.io.IOException; //exception handeling
import java.util.Properties;

import jakarta.mail.*; //Provides the core classes and interfaces for working with email
import jakarta.mail.internet.*; //Contains classes specifically for handling internet email

@WebServlet("/completeBooking")
public class CompleteBookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve booking details from the request
        String userEmail = request.getParameter("email");

        // Validate inputs
        if (userEmail == null) {
            response.getWriter().println("Invalid booking details.");
            return;
        }

        // Send confirmation email
        boolean emailSent = sendConfirmationEmail(userEmail);

        if (emailSent) {
            response.getWriter().println("Booking completed and confirmation email sent successfully.");
        } else {
            response.getWriter().println("Booking completed but failed to send confirmation email.");
        }
    }

    private boolean sendConfirmationEmail(String userEmail) {
        String host = "smtp.gmail.com"; // Replace with your SMTP host
        String port = "587"; // Replace with your SMTP port
        String fromEmail = "dinoth08@gmail.com"; // Replace with your email address
        String password = "zpzp thom tyqi oyem"; // Replace with your email password

        // SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Create session
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        });

        try {
            // Create the email message
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userEmail));
            message.setSubject("Booking Confirmation");
            message.setText("Dear Customer,\n\n" +
                            "Thank you for your booking.\n" +
                            "Best regards,\nABC Cinema");

            // Send the email
            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }
}
