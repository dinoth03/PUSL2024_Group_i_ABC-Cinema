<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Our Deals & Offers </title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<!-- My CSS File -->
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link rel="icon" type="image/png" href="images/title image.png">
	<link href="css/dealsand.css" rel="stylesheet" type="text/css">
  </head>
  <body>
	  
     
    <nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="index.jsp"><img src="images/New Logo Black.png" alt="" width="150" height="80" class="img-fluid" style="margin-left: 15px; padding-bottom: 5px; padding-top: 0px;"></a>
		
  	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
  	    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
  	      <ul class="navbar-nav mr-auto">
  	        <li class="nav-item"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li>
  	        <li class="nav-item"> <a class="nav-link" href="Movies.jsp">MOVIES</a> </li>
  	        <li class="nav-item active"> <a class="nav-link" href="DealsOffers.jsp">DEALS AND OFFERS</a> </li>
  	        <li class="nav-item"> <a class="nav-link" href="Location.jsp">LOCATION</a> </li>
			<li class="nav-item"> <a class="nav-link" href="AboutUs.jsp">ABOUT US</a> </li>
          </ul>
			 <form class="form-inline my-2 my-lg-0">
		      <a href="Buy.jsp" class="btn btn-outline-success my-2 my-sm-0">Buy Tickets</a>
		    
	         </form>
        </div>
    </nav>
	  <br><br><br><hr>
	  <h3 style= "font-family: sans-serif; color: white; margin-right: 870px;"><center><b> DEALS & OFFERS </b></center></h3><br>
	  
	  <div class="container">
		  
       <div class="row row50">
	    <div class="col-xl-8"><img class="d-block mx-auto img-fluid" src="images/offers1.jpg" alt="" width="600px" height="250px" style="padding-right: 50px;"></div>
	    <div class="col-xl-3"> <br><hr>
			
		 <p style="color: lightgray;">Exclusive Member Discounts: Up to 50% Off Movie Tickets! <br><br>
         <span id="view-more-btn" class="view-more-btn" onclick="toggleParagraph()">View More</span>
         </p>
         <p id="extra-info" class="hidden" style="color: lightgray;">
           Enjoy the ultimate cinematic experience with incredible discounts available for all members. Don't wait—grab your tickets today and make the most of this special offer!
         </p>
			
	    </div>
       </div> <br>
	  
	   <div class="row row51">
	    <div class="col-xl-8"><img class="d-block mx-auto img-fluid" src="images/offers2.jpg" alt="" width="600px" height="250px" style="padding-right: 50px;"></div>
	    <div class="col-xl-3"> <br><hr>
			
		    <p style="color: lightgray;">MOANA 2 Collectible popcorn Combo - now at ABC Cinemas! <br><br>
         <span id="view-more-btn-1" class="view-more-btn" onclick="toggleParagraph1()">View More</span>
         </p>
         <p id="extra-info-1" class="hidden" style="color: lightgray;">
           Featuring a limited-edition cup and topper inspired by your favorite characters, this combo also includes a small popcorn and drink to enhance your movie experience. Don’t miss your chance to grab this stunning keepsake while supplies last. Make your next visit to ABC Cinemas unforgettable with this must-have collectible!
         </p>
			
		   </div>
       </div> <br>
	  
	   <div class="row row52">
	    <div class="col-xl-8"><img class="d-block mx-auto img-fluid" src="images/offers3.jpg" alt="" width="600px" height="250px" style="padding-right: 50px;"></div>
	    <div class="col-xl-3"><br><hr>
		    <p style="color: lightgray;">Exciting Movie Ticket Discounts with Cargills Bank! <br><br>
         <span id="view-more-btn-2" class="view-more-btn" onclick="toggleParagraph2()">View More</span>
         </p>
         <p id="extra-info-2" class="hidden" style="color: lightgray;">
            Enjoy a *20% discount on movie tickets* when you pay with your Cargills Bank Credit Card. Don’t miss this opportunity to watch your favorite movies at a fraction of the cost. Simply book your tickets online through ABC Cinemas, click the "unlock offers" link at checkout, and avail of this amazing deal.
         </p></div>
       </div> <br>
	  
	   <div class="row row53">
	    <div class="col-xl-8"><img class="d-block mx-auto img-fluid" src="images/offers4.jpg" alt="" width="600px" height="250px" style="padding-right: 50px;"></div>
	    <div class="col-xl-3"><br><hr>
		    <p style="color: lightgray;">Summer Movie Express for KIDS! <br><br>
         <span id="view-more-btn-3" class="view-more-btn" onclick="toggleParagraph3()">View More</span>
         </p>
         <p id="extra-info-3" class="hidden" style="color: lightgray;">
            Treat your little ones to their favorite kids' movies all summer long at special discounted rates. This exciting program promises a delightful escape into the world of animated adventures and heartwarming tales. Plus, a portion of the proceeds will go to benefit the Will Rogers Institute, making it an experience filled with joy and purpose.!
         </p></div>
       </div>
		  
		  <div class="container"> <hr style="background-color: darkgrey;"> </div><br>
		  
		  <p style="margin-left: 50px; margin-right: 50px; text-align: justify; color: white; font-size: 20px;"> "Unlock exclusive benefits at ABC Cinemas! Our four special offers are available exclusively to our registered customers. Don’t miss out—register now and enjoy exciting rewards designed just for you!" </p> 
  
	  </div> <!-- End of container -->
	  
  <br><br><br>
	      <div class="row row3">
      <div class="col-xl-5"> <br>
		  <h5 style=" font-family: sans-serif;"> To always be informed!</h5> 
			<h2 style="font-family: 'cooper-black-std';"><b>Sign up for</b></h2> <h4 style=" font-family: sans-serif;">get all our Deals and Offers.</h4>
			<a href="Login.jsp" class="btn btn-primary">SUBSCRIBE</a><br><br>
		    <p style=" font-family: sans-serif; font-size: 12px;">@2024 ABC Cinemas All Rights © Reserved.<br> Developed by Group - i</p>
	  </div>
		    	
	  <div class="col-xl-2"><br>
		  <h5 style=" font-family: sans-serif;"><a href="ContactUs.jsp#feedback">Feedback</a></h5> <br>
		  <h6 style=" font-family: sans-serif;"> Digital (2d), (3d) </h6>
		  <h6 style=" font-family: sans-serif;"> Gold (2d), (3d) </h6>
		  <h6 style=" font-family: sans-serif;"> Atmos Dolby (2d), (3d) </h6>
		  <h6 style=" font-family: sans-serif;"> Imax (2d), Imax (3d) </h6> 
		  <h5 style=" font-family: sans-serif;">New&nbsp;<a href="#" style="font-family: Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; color: darkblue; font-size: 25px;">IMAX</a>&nbsp;Experience</h5>
	       </div>
		
	  <div class="col-xl-2"> <br>
		  <h5><a href="Buy.jsp">Buy Tickets</a></h5> <br>
		  <h6><a href="Movies.jsp">Movies</a></h6>
		  <h6><a href="DealsOffers.jsp">All Deals</a></h6> 
		  <h6><a href="ContactUs.jsp">Contact Us</a></h6> 
		  <h6><a href="Terms.jsp#privacy">Privacy Policies</a></h6> 
		  <h6><a href="Terms.jsp">Terms & Conditions</a></h6>
	  </div>
		
      <div class="col-xl-2"> <br>
		  <center><img src="images/New Logo white.png" alt="" height="100px" width="280px"></center> <br>
		  <center> <a href="#"><img src="images/instagram icon.png" width="48" height="46" alt=""></a> 
				  <a href="#"><img src="images/fcebook icon.png" width="45" height="43" alt=""></a>
				  <a href="#"><img src="images/X icon.png" width="45" height="43" alt=""></a> </center>
      </div>
    </div>  
	  
    <script>
     function toggleParagraph() {
      const paragraph = document.getElementById('extra-info');
      const viewMoreButton = document.getElementById('view-more-btn');
      
      // Show the hidden paragraph
      paragraph.classList.remove('hidden');
      
      // Hide the "View More" button
      viewMoreButton.classList.add('hidden');
     }
    </script>
	  
	  <script>
     function toggleParagraph1() {
      const paragraph = document.getElementById('extra-info-1');
      const viewMoreButton = document.getElementById('view-more-btn-1');
      
      // Show the hidden paragraph
      paragraph.classList.remove('hidden');
      
      // Hide the "View More" button
      viewMoreButton.classList.add('hidden');
     }
    </script>
	  
	   <script>
     function toggleParagraph2() {
      const paragraph = document.getElementById('extra-info-2');
      const viewMoreButton = document.getElementById('view-more-btn-2');
      
      // Show the hidden paragraph
      paragraph.classList.remove('hidden');
      
      // Hide the "View More" button
      viewMoreButton.classList.add('hidden');
     }
    </script>
    
	  <script>
     function toggleParagraph3() {
      const paragraph = document.getElementById('extra-info-3');
      const viewMoreButton = document.getElementById('view-more-btn-3');
      
      // Show the hidden paragraph
      paragraph.classList.remove('hidden');
      
      // Hide the "View More" button
      viewMoreButton.classList.add('hidden');
     }
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
</body>
</html>