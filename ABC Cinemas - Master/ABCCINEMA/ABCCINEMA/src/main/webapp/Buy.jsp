<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Buy Special Showings </title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<!-- My CSS File -->
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link rel="icon" type="image/png" href="images/title image.png">
	<link href="css/Buy.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  </head>
  <body>
	  
      
    <nav class="navbar navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="index.jsp"><img src="images/New Logo Black.png" alt="" width="150" height="80" class="img-fluid" style="margin-left: 15px; padding-bottom: 5px; padding-top: 0px;"></a>
		
  	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
  	    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
  	      <ul class="navbar-nav mr-auto">
  	        <li class="nav-item"> <a class="nav-link" href="index.jsp">HOME <span class="sr-only">(current)</span></a> </li>
  	        <li class="nav-item"> <a class="nav-link" href="Movies.jsp">MOVIES</a> </li>
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
	 <h3 style= "font-family: sans-serif; color: white; margin-right: 870px;"><center><b> BUY NOW - SPECIALS SHOWINGS</b></center></h3>
	  
	<div class="search-container">
		 <i class="fas fa-search"></i>
         <input type="text" id="movieSearch" placeholder="Search for a movie..." onkeyup="filterMovies()">
    </div> <br>
	  
  	<div class="container">
	  
	<div class="row row79">
  		<div class="col-xl-4"><center><img src="images/card 10.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Oppenheimer</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: July 21, 2023</li>
			   			<li>Director: Christopher Nolan</li>
			   			<li>Budget: 100 million USD</li>
			  			<li>Awards: A.Award for Best Picture</li>
			  			<li>Distributed by: Universal Pictures.</li>
			   			<li>Adapted from: Tragedy of J. Robert Oppenheimer</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  			<h5 style=" font-family: sans-serif; margin-top: 50px; margin-left: 80px; color: white;">New&nbsp;<a href="#" id="imax">IMAX</a>&nbsp;Experience</h5>
	  			<a href="Seats.jsp?movie=Oppenheimer" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn1">BOOK NOW</a></div>
	</div> <br>
	  
	<div class="row row80">
  		<div class="col-xl-4"><center><img src="images/card 1.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Venom: The Last Dance</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: October 24, 2024</li>
			   			<li>Director: Kelly Marcel</li>
			   			<li>Box office: $472.8 million</li>
			   			<li>Story by: Tom Hardy; Kelly Marcel</li>
			   			<li>Distributed by: Sony Pictures Releasing</li>
			   			<li>Based on: Marvel Comics</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  			<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | IMAX </h5>
	  			<a href="Seats.jsp?movie=Venom: The Last Dance" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn2">BOOK NOW</a></div>
	</div> <br>
	
	<div class="row row81">
  		<div class="col-xl-4"><center><img src="images/card 2.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">The Wild Robot</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: September 27, 2024</li>
			   			<li>Director: Chris Sanders</li>
			   			<li>Box office: $322 million</li>
			   			<li>Music by: Kris Bowers</li>
			   			<li>Distributed by: Universal Pictures</li>
			   			<li>Adapted from: The Wild Robot / R.T: 9.7/10 </li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  			<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | LUXE </h5>
	  			<a href="Seats.jsp?movie=The Wild Robot" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn3">BOOK NOW</a></div>
	</div> <br>
	
	<div class="row row82">
  		<div class="col-xl-4"><center><img src="images/card 3.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Red One</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: November 15, 2024</li>
			   			<li>Director: Jake Kasdan</li>
			   			<li>Box office: $164 million</li>
			   			<li>Story by: Hiram Garcia</li>
			   			<li>Distributed by: Warner Bros. Pictures</li>
			   			<li>Budget: 250 million USD</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  		<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | IMAX </h5>
	  		<a href="Seats.jsp?movie=Red One" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn4">BOOK NOW</a></div>
	</div> <br>


	<div class="row row83">
  		<div class="col-xl-4"><center><img src="images/card 4.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">It Ends With Us</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: August 9, 2024</li>
			   			<li>Director: Justin Baldoni</li>
			   			<li>Box office: $350 million</li>
			   			<li>Adapted from: It Ends with Us</li>
			   			<li>Distributed by: Sony Pictures Releasing</li>
			   			<li>Cinematography: Barry Peterson / R.T: 6.5/10</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  			<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | LUXE </h5>
	  			<a href="Seats.jsp?movie=It Ends With Us" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn5">BOOK NOW</a></div>
	</div> <br>

	<div class="row row84">
  		<div class="col-xl-4"><center><img src="images/card 5.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Smile 2</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: October 18, 2024</li>
			   			<li>Director: Parker Finn</li>
			   			<li>Box office: $138 million</li>
			   			<li>Music by: Cristobal Tapia de Veer</li>
			   			<li>Distributed by: Paramount Pictures</li>
			   			<li>Cinematography: Charlie Sarroff / R.T: 5.7/10</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  		<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | LUXE </h5>
	  		<a href="Seats.jsp?movie=Smile 2" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn6">BOOK NOW</a></div>
	</div> <br>

	<div class="row row84">
  		<div class="col-xl-4"><center><img src="images/card 9.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Amaran</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: October 31, 2024</li>
			   			<li>Director: Rajkumar Periasamy</li>
			   			<li>Box office: est. ₹320 crore</li>
			   			<li>Music composed by: G. V. Prakash Kumar</li>
			   			<li>Producers: Kamal Haasan, R Mahendran, Mahendran</li>
			   			<li>Language: Tamil</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  		<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | LUXE </h5>
	  		<a href="Seats.jsp?movie=Amaran" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn7">BOOK NOW</a></div>
	</div> <br>

	<div class="row row84">
  		<div class="col-xl-4"><center><img src="images/card 11.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Pushpa 2</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: December 5, 2024</li>
			   			<li>Director: Sukumar</li>
			   			<li>Budget: ₹400–500 crore</li>
			   			<li>Music composed by: Devi Sri Prasadl</li>
			   			<li>Producers: Naveen Yerneni, Y. Ravi Shankar</li>
			   			<li>Language: Tamil</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  		<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | LUXE </h5>
	  		<a href="Seats.jsp?movie=Pushpa 2" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn8">BOOK NOW</a></div>
	</div> <br>

	<div class="row row84">
  		<div class="col-xl-4"><center><img src="images/card 13.jpg" alt="" width="180px"></center></div>
  			<div class="col-xl-4"> 
    			<div class="card col-md-4 col-xl-12" style="background-color: black; color: white;">
      			<div class="card-body">
        		<h5 class="card-title">Deadpool and Wolverine</h5>
        		<p class="card-text">
	    			<ul>
		  				<li>Release date: July 25, 2024</li>
			   			<li>Director: Shawn Levy</li>
			   			<li>Box office: $1.338 billion</li>
			   			<li>Budget: $200 million</li>
			   			<li>Distributed by: Walt Disney Studios Motion Pictures</li>
			   			<li>Based on: Marvel Comics</li>
	    			</ul>
		  		</p>
      			</div>
    			</div>
  			</div>
  			<div class="col-xl-4">
	  		<h5 style="margin-top: 50px; margin-left: 40px; color: white;"> Digital 2D | Dolby Atmos | IMAX </h5>
	  		<a href="Seats.jsp?movie=Deadpool and Wolverine" class="btn btn-primary" style="margin-top: 40px; margin-left: 120px;" id="btn9">BOOK NOW</a></div>
	</div> <br>

	</div> <!-- container --> 
	  
	  <br>
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

	  <div id="preloader">
         <center> <img src="images/New Logo white.png" alt="" height="120" width="380"></center> <br>
	     <div class="loader"></div>
      </div>
	 
	<!-- JS for Search bar searching -->  
	<script>
		function filterMovies() {
			// Get the search input value
			const searchInput = document.getElementById("movieSearch").value.toLowerCase();
        
        	// Get all movie rows
        	const rows = document.querySelectorAll(".row");
        
			// Loop through each row to check if the movie name matches the search input
        	rows.forEach(row => {
            	const movieTitle = row.querySelector(".card-title")?.innerText.toLowerCase();
            
            	// Check if the title includes the search input
            	if (movieTitle && movieTitle.includes(searchInput)) {
					row.style.display = "flex"; // Show matching rows
            	} else {
                	row.style.display = "none"; // Hide non-matching rows
            	}
        	});
    	}
	</script>

	<!-- Pre loader -->
    <script>
	 	window.addEventListener("load", function () {
  		const preloader = document.getElementById("preloader");
  		const mainContent = document.getElementById("main-content");

		setTimeout(() => {
    	preloader.style.display = "none"; // Hide preloader
    	mainContent.style.display = "block"; // Show main content
		}, 1000); // Adjust delay as needed (1000ms = 1 second)
		});
		
		const navbar = document.getElementById('navbar');
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
