<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Contact Us | Feedback</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <!-- My CSS File -->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/png" href="images/title image.png">
    <link href="css/ContactUs.css" rel="stylesheet" type="text/css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">
            <img src="images/New Logo Black.png" alt="" width="150" height="80" class="img-fluid" style="margin-left: 15px; padding-bottom: 5px; padding-top: 0px;">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a></li>
                <li class="nav-item"><a class="nav-link" href="Movies.jsp">MOVIES</a></li>
                <li class="nav-item"><a class="nav-link" href="DealsOffers.jsp">DEALS AND OFFERS</a></li>
                <li class="nav-item"><a class="nav-link" href="Location.jsp">LOCATION</a></li>
                <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">ABOUT US</a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a href="Buy.jsp" class="btn btn-outline-success my-2 my-sm-0">Buy Tickets</a>
            </form>
        </div>
    </nav>
    
    <br><br><br>
    <hr>
    <h3 style="font-family: sans-serif; color: white; margin-right: 870px;"><center><b> CONTACT US </b></center></h3><br>
    
    <div class="container">
        <div class="row row40">
            <div class="col-xl-4">
                <center>
                    <h4>Marketing & Advertising</h4>
                    <p>
                        <a href="#" onClick="openTelLink()">+94 72 502 6115</a><br>
                        <a href="mailto:abcmarketing@gmail.com" onClick="checker()">abcmarketing@gmail.com</a>
                    </p>
                </center>
            </div>
            <div class="col-xl-4">
                <center>
                    <h4>Theatre Contact Details</h4>
                    <p>
                        <a href="#" onClick="openTelLink()">+94 75 850 2154</a><br>
                        <a href="mailto:abctheatre@gmail.com" onClick="checker()">abctheatre@gmail.com</a>
                    </p>
                </center>
            </div>
            <div class="col-xl-4">
                <center>
                    <h4>Customer Care Service</h4>
                    <p>
                        <a href="#" onClick="openTelLink()">11 2 800 574</a> / 
                        <a href="#" onClick="openTelLink()">11 2 500 874</a><br>
                        (9.00am - 11.30pm - 24/7)<br>
                        <a href="mailto:abccustomercare@gmail.com" onClick="checker()">abccustomercare@gmail.com</a>
                    </p>
                </center>
            </div>
        </div>
        <br><br><br>

        <section id="feedback">
            <br><br><br>
            <h3 style="font-family: sans-serif; color: white; margin-right: 880px;"><center><b> FEEDBACKS </b></center></h3><br>
            <div class="row">
                <div class="col-xl-6">
                    <br>
                    <h2 id="h2" style="margin-left: 20px;"> How important you are!</h2>
                    <hr style="margin-left: 20px;">
                    <h5 id="h5" style="margin-left: 20px;">ABC Cinemas needs customer feedback as it helps make the movie going experience better for them. Through suggestions from the audiences and presenting cause of complaints the services such as seating comfort, sound quality, snack options and ticketing processes can be enhanced. Feedback keeps viewers loyal and builds in trust with viewers by creating a personalized experience that makes them want to watch again and again. ABC Cinemas knows what audiences are looking for and continues to stay step ahead of the rivals, providing you an unforgettable cinematic experience.</h5>
                    <hr style="margin-left: 20px;"> 
                    <h4 id="h4" style="margin-left: 20px;"> We value your feedback! </h4>
                </div>
                <div class="col-xl-6">
                    <div class="feedback-card">
                        <div class="header">
                            <h2>How would you rate your experience on ABC Cinemas?</h2>
                        </div>
                        <div class="stars">
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star">&#9733;</span>
                            <span class="star inactive">&#9733;</span>
                        </div>
                        
                        <form action="ContactFormServlet" method="post">
                            <label for="first-name">First Name:</label>
                            <input type="text" id="first-name" name="first-name" required>
                            
                            <label for="last-name">Last Name:</label>
                            <input type="text" id="last-name" name="last-name" required>
                            
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required>
                            
                            <label for="phone">Phone:</label>
                            <input type="text" id="phone" name="phone" required>
                            
                            <label for="feedback-type">What would you like to share with us?</label>
                            <select id="feedback-type" name="feedback-type">
                                <option value="suggestion">Suggestion</option>
                                <option value="technical-error">Technical error</option>
                                <option value="greatness">Great Experience</option>
                                <option value="complaint">Complaint</option>
                            </select>

                            <label for="feedback-details">Write your ideas & experience about us here!</label>
                            <textarea id="feedback-details" name="feedback-details" placeholder="Write your feedback here..." required></textarea>

                            <p id="p1">If you need assistance with ABC Cinemas, please <a href="#" onClick="openTelLink()">click here</a> to contact us as soon as possible.</p>
                            <button type="submit" class="submit-btn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div><!-- End of Container -->
    
    <br><br><br>
    <div class="row row3">
        <div class="col-xl-5">
            <br>
            <h5 style="font-family: sans-serif;"> To always be informed!</h5> 
            <h2 style="font-family: 'cooper-black-std';"><b>Sign up for</b></h2>
            <h4 style="font-family: sans-serif;">get all our Deals and Offers.</h4>
            <a href="Login.jsp" class="btn btn-primary">SUBSCRIBE</a><br><br>
            <p style="font-family: sans-serif; font-size: 12px;">@2024 ABC Cinemas All Rights � Reserved.<br> Developed by Group - i</p>
        </div>
        
        <div class="col-xl-2"><br>
            <h5 style="font-family: sans-serif;"><a href="ContactUs.jsp#feedback">Feedback</a></h5><br>
            <h6 style="font-family: sans-serif;"> Digital (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Gold (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Atmos Dolby (2d), (3d) </h6>
            <h6 style="font-family: sans-serif;"> Imax (2d), Imax (3d) </h6> 
            <h5 style="font-family: sans-serif;">New&nbsp;<a href="#" style="font-family: Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; color: darkblue; font-size: 25px;">IMAX</a>&nbsp;Experience</h5>
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
    
    <!-- Smooth Scrolling to PRIVACY POLICY -->
    <style>
        html {
            scroll-behavior: smooth;
        }
    </style>
    
    <script>
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });
    </script>
    
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
    
    <!-- Onclick Prompt -->
    <script>
        function checker() {
            var result = confirm('Open Pick an App?');
            if (result == false) {
                event.preventDefault();
            }
        }
    </script>
    
    <!-- JS for Opening the App list in the User device -->
    <script>
        function openTelLink() {
            // This will trigger the app picker
            window.location.href = "tel:+94 72 502 6115";
        }
    </script>
    
    <!-- JS for Star Clicker -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const stars = document.querySelectorAll('.star');
            stars.forEach((star, index) => {
                star.addEventListener('click', () => {
                    // Reset all stars
                    stars.forEach(s => s.classList.remove('active'));
                    // Set active stars
                    for (let i = 0; i <= index; i++) {
                        stars[i].classList.add('active');
                    }
                });
            });
        });
    </script>
</body>
</html>
