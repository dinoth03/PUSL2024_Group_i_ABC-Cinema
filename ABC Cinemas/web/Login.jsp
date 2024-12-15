<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Login | Account Center</title>
    <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<!-- My CSS File -->
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link rel="icon" type="image/png" href="images/title image.png">
	<link href="css/Login.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  </head>
  <body>

	  <br><br><br>
	  
	 
	  
	  <div class="container" id="container">
        <div class="form-container sign-up" id="formcon">
           <form action="SignupServlet" method="post">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your Email for registeration</span>
                <input type="text" name="name" placeholder="Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in">
            <form action="LoginServlet" method="post">
                <h1>LogIn</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your Email & Password</span>
                 <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>
                <a href="#">Forget Your Password?</a>
                <button>LogIn</button>
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome !</h1>
                    <img src="images/New Logo Black.png" alt="" width="300px" height="100px"><br>
                    <button class="hidden" id="login">LogIn</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <img src="images/New Logo white.png" alt="" width="300px" height="100px">
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </div> <br><br>
	  
	  
	  <script>
	   	  const container = document.getElementById('container');
		  const registerBtn = document.getElementById('register');
		  const loginBtn = document.getElementById('login');

		  registerBtn.addEventListener('click', () => {
    		container.classList.add("active");
		  });

		  loginBtn.addEventListener('click', () => {
    		container.classList.remove("active");
		  });
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
	  
</body>
</html>
