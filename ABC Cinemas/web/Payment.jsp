<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Online Movie Tickets Booking</title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<!-- My CSS File -->
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link rel="icon" type="image/png" href="images/title image.png">
	<link href="css/Payment.css" rel="stylesheet" type="text/css">
	 <!-- PayPal SDK -->
     
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
	  <br><br><br><hr style="background-color: #303030;">
	  <h2 style= "font-family: sans-serif; color: black;  margin-right: 600px;"><center><b> Payment </b></center></h2><br>
	
 		<div class="container">
        <div class="section">
            <h3>Movie Booking Summary</h3><hr>
            <div class="receipt">
              
                <p id="price">Total Price: LKR.1200</p><br>
                <p class="total" id="total_price"><b>Total Price: LKR.1200</b></p>
            </div>
        </div>

        <div class="section">
            <h3>Payment Method</h3><hr>
             <form action="CompleteBookingServlet" method="POST">
               <div class="payment-methods">
                <!-- PayPal Button -->
               
                <div id="paypal-button-container" ></div>
         
                <center><div class="card-form">
                    <input type="text" placeholder="Card Number" required id="cd">
                    <input type="text" placeholder="Expiration (MM/YY)" required id="ex">
                    <input type="text" placeholder="CVV" required id="cvv">
                    <input type="text" placeholder="First Name" required id="fname">
                    <input type="text"  placeholder="Last Name" required id="lname">
                    <input  type="email" name="email" placeholder="Email" required id="email">
					
                </div></center>
				
				<div class="buttons">
            		<a href="Movies.jsp" class="back-btn" id="back">BACK</a>
            		<input  class="pay-now-btn"  type="submit" value="PAY NOW" id="pay"></a>
        		</div>
           	   </div><form> <br>
			
			<input type="checkbox" id="check1" required>
            <label for="check1">I agree to the <a href="Terms.html" id="tnm">Terms & Conditions</a></label>
				
        </div>
    	</div>
    

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
	  
	  <!-- PayPal Sandbox Configuration Load -->
	   <!-- Include the PayPal JavaScript SDK -->
	   <script src="https://www.paypal.com/sdk/js?client-id=AS8svvryxGm8WdNhTp-2NZJcHdVJvTfTEfQB6w7yij6sfRCsHd-6pBiHe61dv7UrQ_x04bcaZ-j_OkBo&currency=USD"></script>
	   <!-- This is ABCCinemas App under ABCCinemas Sandbox Account -->
	   <!-- Username & Password for the sandbox account of the site -->
	   <!-- Email :- CinemasABC@gmail.com  /  Password :- ABC@cinemas -->
		
	  <script>
        // Render the PayPal button into #paypal-button-container
        paypal.Buttons({
            style: {
                layout: 'horizontal'
            },
            createOrder: function(data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '36' // Total price dynamically passed
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                return actions.order.capture().then(function(details) {
                    alert('Transaction completed by ' + details.payer.name.given_name + '!');
                });
            }
        }).render('#paypal-button-container');
      </script>
	  
	  <!-- JS to transfered Movie, Seats details from Seats Page -->
	  <script>
		  // Function to retrieve query parameters
		  function getQueryParam(param) {
			  const urlParams = new URLSearchParams(window.location.search);
			  return urlParams.get(param);
		  }

		  // Get data from the URL query parameters
		  const movieName = getQueryParam('movie');
		  const seatCount = getQueryParam('seats');
		  const totalPrice = getQueryParam('totalPrice');

		  // Display the data in the receipt section
		  if (movieName) {
			  document.getElementById('movie_name').textContent = `Movie Name: ${movieName}`;
		  }

		  if (seatCount) {
			  document.getElementById('seats').textContent = `Seats: ${seatCount}`;
		  }

		  if (totalPrice) {
    		  document.getElementById('total_price').textContent = `Total Price: LKR.${totalPrice}`;
		  }
		  
		  
	  </script>
	  
</body>
</html>
