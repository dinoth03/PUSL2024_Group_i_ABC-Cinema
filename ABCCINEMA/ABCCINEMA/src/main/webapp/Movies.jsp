<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*,java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Now Showing Movies</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <!-- My CSS File -->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/png" href="images/title image.png">
    <link href="css/Movies.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="index.jsp"><img src="images/New Logo Black.png" alt="" width="150" height="80" class="img-fluid" style="margin-left: 15px; padding-bottom: 5px; padding-top: 0px;"></a>
		
  	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
  	    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
  	      <ul class="navbar-nav mr-auto">
  	        <li class="nav-item"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li>
  	        <li class="nav-item active"> <a class="nav-link" href="Movies.jsp">MOVIES</a> </li>
  	        <li class="nav-item"> <a class="nav-link" href="DealsOffers.jsp">DEALS AND OFFERS</a> </li>
  	        <li class="nav-item"> <a class="nav-link" href="Location.jsp">LOCATION</a> </li>
			<li class="nav-item"> <a class="nav-link" href="AboutUs.jsp">ABOUT US</a> </li>
          </ul>
			 <form class="form-inline my-2 my-lg-0">
		      <a href="Buy.jsp" class="btn btn-outline-success my-2 my-sm-0">Buy Tickets</a>
		    
	         </form>
        </div>
    </nav>
    <br><br><br><hr>
    <h3 style="font-family: sans-serif; color: white; margin-right: 870px;"><center><b> NOW SHOWING </b></center></h3>
    
    <div class="container">
        <div class="search-container">
            <i class="fas fa-search"></i>
            <input type="text" id="movieSearch" placeholder="Search for a movie..." onkeyup="filterMovies()">
        </div><br><br>

        <div class="row" id="movieCards">
            <%
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/abccinema"; // Replace with your database URL
                String user = "root"; // Replace with your database username
                String password = "12345678"; // Replace with your database password

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    // Establish the connection
                    conn = DriverManager.getConnection(url, user, password);
                    // Create a statement
                    stmt = conn.createStatement();
                    // Execute a query to get movies
                    String sql = "SELECT title, image, id FROM movies"; // Adjust the query based on your table structure
                    rs = stmt.executeQuery(sql);

                    // Loop through the result set and create movie cards
                    while (rs.next()) {
                        String title = rs.getString("title");
                        String image = rs.getString("image"); // Ensure this column exists in your database
                        String movieId = rs.getString("id"); // Unique identifier for the movie
            %>
                        <div class="col-xl-3">
                            <div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
                                <img class="card-img-top img-fluid" src="<%= image %>" alt="<%= title %>" style="border-radius: 0px;">
                                <div class="card-body">
                                    <h5 class="card-title"><b><%= title %></b></h5>
                                 <a href="Seats.jsp?movie=<%= URLEncoder.encode(title, "UTF-8") %>" class="btn btn-primary" style="padding-top: 1px; padding-bottom: 1px; border-radius: 0px;">Buy Tickets</a>
                                </div>
                            </div>
                        </div>
            <%
                    }
                } catch (SQLException | ClassNotFoundException e) {
                    e.printStackTrace();
                } finally {
                    // Close resources
                    try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </div>
    </div><br>
    <hr>
    <h3 style="font-family: sans-serif; color: white; margin-right: 670px;"><center><b> TRAILERS OF NEW ARRIVALS</b></center></h3>
    
    <div class="container">
        <div class="row row13">
            <div class="col-xl-6"><center><iframe width="560" height="315" src="https://www.youtube.com/embed/__2bjWbetsA?si=WORIiQadgk0H5UgT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></center></div>
            <div class="col-xl-6"><iframe width="560" height="315" src="https://www.youtube.com/embed/DLET_u31M4M?si=pOw0A2qv-iJ7KBm4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>
        </div>
        
        <div class="row row15">
            <div class="col-xl-6"><center><iframe width="560" height="315" src="https://www.youtube.com/embed/VUCNBAmse04?si=zfpbmYc6J6VBV0NJ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></center></div>
            <div class="col-xl-6"><center><iframe width="560" height="315" src="https://www.youtube.com/embed/uYPbbksJxIg?si=_9MfA0mtU0iKS1Pt" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></center></div>
        </div>
    </div><br><br>
    <hr><br>
    <div class="row" style="color: #959595; text-align: justify;">
        <div class="col-xl-4"><center><h5>New Bollywood Movies</h5></center><p style="font-size: 14px;">Are you that true- Hindi movie fiend who is obsessed with everything about Bollywood? If yes, we can relate to you. We understand your love for films and keep you updated about all the new Hindi Movie releases. Just browse through our “Movies” section, check out all the new movies playing in cinemas. Book your tickets instantly. Before booking, you can also have a look at the trailer of that film right at that page.</p></div>
        <div class="col-xl-4"><center><h5>Latest Sinhala Movies</h5></center><p style="font-size: 14px;">Tamil or Sinhala, you can book tickets for all the regional language films released, right here at ABC Cinemas. What's more along with booking movie tickets, you can also check out the latest and upcoming Sinhala movies in our coming soon section. Booking process is simply a breeze at ABC Cinemas. Within few minutes, any time anywhere you can book your tickets for the latest movies at the lowest prices possible.</p></div>
        <div class="col-xl-4"><center><h5>New Hollywood Movies</h5></center><p style="font-size: 14px;">Language is not a barrier at ABC Cinemas. We speak and understand the language of cinema. So, if English movie is what you are into, we keep you up-to-date about all the new and now showing Hollywood movies near your location. Check out all the current movies and book your tickets then and there. Current most popular movies - Venom: The Last Dance / Red One / It Ends With Us.</p></div>
    </div><br>
    
    <div class="row row3"> <!-- Footer -->
        <div class="col-xl-5"><br>
            <h5 style="font-family: sans-serif;"> To always be informed!</h5>
            <h2 style="font-family: 'cooper-black-std';"><b>Sign up for</b></h2>
            <h4 style="font-family: sans-serif;">get all our Deals and Offers.</h4>
            <a href="Login.jsp" class="btn btn-primary">SUBSCRIBE</a><br><br>
            <p style="font-family: sans-serif; font-size: 12px;">@2024 ABC Cinemas All Rights © Reserved.<br> Developed by Group - i</p>
        </div>
        
        <div class="col-xl-2"><br>
            <h5 style="font-family: sans-serif;"><a href="ContactUs.jsp#feedback">Feedback</a></h5><br>
            <h6 style="font-family: sans-serif;"> Digital (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Gold (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Atmos Dolby (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Imax (2d), Imax (3d) </h6>
        </div>
        
        <div class="col-xl-2"><br>
            <h5><a href="Buy.jsp">Buy Tickets</a></h5><br>
            <h6><a href="Movies.jsp">Movies</a></h6>
            <h6><a href="DealsOffers.jsp">All Deals</a></h6>
            <h6><a href="ContactUs.jsp">Contact Us</a></h6>
            <h6><a href="Terms.jsp#privacy">Privacy Policies</a></h6>
            <h6><a href="Terms.jsp">Terms & Conditions</a></h6>
        </div>
        
        <div class="col-xl-2"><br>
            <center><img src="images/New Logo white.png" alt="" height="100px" width="280px"></center><br>
            <center>
                <a href="#"><img src="images/instagram icon.png" width="48" height="46" alt=""></a>
                <a href="#"><img src="images/fcebook icon.png" width="45" height="43" alt=""></a>
                <a href="#"><img src="images/X icon.png" width="45" height="43" alt=""></a>
            </center>
        </div>
    </div>

    <!-- Navbar Shading -->
    <script>
        window.addEventListener("scroll", function() {
            const navbar = document.querySelector(".navbar");
            if (window.scrollY > 50) {
                navbar.classList.add("scrolled");
            } else {
                navbar.classList.remove("scrolled");
            }
        });
    </script>

    <!-- JS for Search bar searching -->
    <script>
        function filterMovies() {
            const searchInput = document.getElementById("movieSearch").value.toLowerCase();
            const movieCards = document.querySelectorAll(".card");

            movieCards.forEach(card => {
                const movieTitle = card.querySelector(".card-title").innerText.toLowerCase();
                if (movieTitle.includes(searchInput)) {
                    card.parentElement.style.display = ""; // Show card
                } else {
                    card.parentElement.style.display = "none"; // Hide card
                }
            });
        }
    </script>
    
        <!-- Snow Flakes -->   
	<script>
        const snowflakeCount = 150; // Number of snowflakes
        const snowflakeSymbols = ["*", "*", "*"]; // Snowflake shapes

        for (let i = 0; i < snowflakeCount; i++) {
            const snowflake = document.createElement("div");
            snowflake.classList.add("snowflake");
            snowflake.textContent = snowflakeSymbols[Math.floor(Math.random() * snowflakeSymbols.length)];

            const size = Math.random() * 1.5 + 0.5; // Random size
            snowflake.style.fontSize = size + "rem";

            snowflake.style.left = Math.random() * 100 + "vw"; // Random horizontal position
            snowflake.style.animationDuration = Math.random() * 3 + 5 + "s"; // Random speed 3+1=high / 3+8=low
            snowflake.style.opacity = Math.random();

            document.body.appendChild(snowflake);
        }
    </script>
</body>
</html>
