<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ABC Cinemas - Seats Selecting</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <!-- My CSS File -->
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/Seats.css" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/png" href="images/title image.png">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Round|Material+Icons+Sharp|Material+Icons+Two+Tone" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"/>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp"><img src="images/New Logo Black.png" alt="" width="150" height="80" class="img-fluid" style="margin-left: 15px; padding-bottom: 5px;"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">HOME</a></li>
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
    <br><br><hr><br>

    <div class="center">
        <div class="tickets">
            <div class="ticket-selector">
                <div class="head">
                    <div class="title" style="font-family: alice; font-size: 30px;">Movie Name</div>
                </div>
                <p>Available Dates and Times</p>
                <div class="timings">
                    <div class="dates">
                        <input type="radio" name="date" id="d1" checked />
                        <label for="d1" class="dates-item">
                            <div class="day">Sun</div>
                            <div class="date">11</div>
                        </label>
                        <input type="radio" id="d2" name="date" />
                        <label class="dates-item" for="d2">
                            <div class="day">Mon</div>
                            <div class="date">12</div>
                        </label>
                        <input type="radio" id="d3" name="date" />
                        <label class="dates-item" for="d3">
                            <div class="day">Tue</div>
                            <div class="date">13</div>
                        </label>
                        <input type="radio" id="d4" name="date" />
                        <label class="dates-item" for="d4">
                            <div class="day">Wed</div>
                            <div class="date">14</div>
                        </label>
                        <input type="radio" id="d5" name="date" />
                        <label class="dates-item" for="d5">
                            <div class="day">Thu</div>
                            <div class="date">15</div>
                        </label>
                        <input type="radio" id="d6" name="date" />
                        <label for="d6" class="dates-item">
                            <div class="day">Fri</div>
                            <div class="date">16</div>
                        </label>
                        <input type="radio" id="d7" name="date" />
                        <label for="d7" class="dates-item">
                            <div class="day">Sat</div>
                            <div class="date">17</div>
                        </label>
                    </div>
                    <div class="times">
                        <input type="radio" name="time" id="t1" checked />
                        <label for="t1" class="time">11:00</label>
                        <input type="radio" id="t2" name="time" />
                        <label for="t2" class="time">14:30</label>
                        <input type="radio" id="t3" name="time" />
                        <label for="t3" class="time">18:00</label>
                        <input type="radio" id="t4" name="time" />
                        <label for="t4" class="time">21:30</label>
                    </div>
                </div><br>

                <div class="seats">
                    <div class="status">
                        <div class="item">Available</div>
                        <div class="item">Booked</div>
                        <div class="item">Selected</div>
                    </div>
                    <div class="all-seats">
                        <input type="checkbox" name="tickets" id="s1" />
                        <label for="s1" class="seat booked"></label>
                    </div>
                </div>
                <p><center>Screen</center></p>
            </div>

            <div class="price">
                <div class="total">
                    <span><span class="count">0</span> Tickets</span>
                    <div class="amount">0</div>
                </div>
              
                <a href="Payment.jsp" class="btn btn-primary" type="button" id="seat">Book Now</a>
            </div>
        </div>
    </div><br>

    <div class="row row3">
        <div class="col-xl-5"><br>
            <h5 style="font-family: sans-serif;">To always be informed!</h5>
            <h2 style="font-family: 'cooper-black-std';"><b>Sign up for</b></h2>
            <h4 style="font-family: sans-serif;">get all our Deals and Offers.</h4>
            <a href="Login.jsp" class="btn btn-primary">SUBSCRIBE</a><br><br>
            <p style="font-family: sans-serif; font-size: 12px;">@2024 ABC Cinemas All Rights © Reserved.<br> Developed by Group - i</p>
        </div>

        <div class="col-xl-2"><br>
            <h5 style="font-family: sans-serif;"><a href="ContactUs.jsp#feedback">Feedback</a></h5><br>
            <h6 style="font-family: sans-serif;">Digital (2D), (3D)</h6>
            <h6 style="font-family: sans-serif;">Gold (2D), (3D)</h6>
            <h6 style="font-family: sans-serif;">Atmos Dolby (2D), (3D)</h6>
            <h6 style="font-family: sans-serif;">IMAX (2D), IMAX (3D)</h6>
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

    <!-- Seats Booking System -->
    <script>
        // Data structure to store booked seats for each date and time
        const bookedSeatsData = {
            d1: { t1: [1, 5, 12], t2: [3, 7, 15], t3: [2, 6, 10], t4: [4, 8, 14] },
            d2: { t1: [11, 14, 18], t2: [20, 25, 30], t3: [1, 9, 16], t4: [2, 8, 13] },
            d3: { t1: [7, 13, 19], t2: [5, 12, 18], t3: [8, 15, 22], t4: [3, 11, 17] },
            // Add data for other dates (d4, d5, etc.) and times (t1, t2, t3, t4)
        };

        // Function to render seats
        function renderSeats(dateId, timeId) {
            const seats = document.querySelector(".all-seats");
            seats.innerHTML = ""; // Clear existing seats
            const bookedSeats = bookedSeatsData[dateId]?.[timeId] || []; // Get booked seats for selected date and time

            for (let i = 2; i <= 60; i++) {
                const isBooked = bookedSeats.includes(i);
                seats.insertAdjacentHTML(
                    "beforeend",
                    `<input type="checkbox" name="tickets" id="s${i}" ${isBooked ? "disabled" : ""} />
                     <label for="s${i}" class="seat ${isBooked ? "booked" : ""}"></label>`
                );
            }

            // Add event listeners for available seats
            const tickets = seats.querySelectorAll("input:not([disabled])");
            tickets.forEach((ticket) => {
                ticket.addEventListener("change", () => {
                    let amount = document.querySelector(".amount").innerHTML;
                    let count = document.querySelector(".count").innerHTML;
                    amount = Number(amount);
                    count = Number(count);

                    if (ticket.checked) {
                        count += 1;
                        amount += 1200.00;
                    } else {
                        count -= 1;
                        amount -= 1200.00;
                    }

                    document.querySelector(".amount").innerHTML = amount;
                    document.querySelector(".count").innerHTML = count;
                });
            });
        }

        // Event listeners for date and time changes
        const dateInputs = document.querySelectorAll(".dates input");
        const timeInputs = document.querySelectorAll(".times input");

        dateInputs.forEach((dateInput) => {
            dateInput.addEventListener("change", () => {
                const selectedDate = document.querySelector(".dates input:checked").id;
                const selectedTime = document.querySelector(".times input:checked").id;
                renderSeats(selectedDate, selectedTime);
            });
        });

        timeInputs.forEach((timeInput) => {
            timeInput.addEventListener("change", () => {
                const selectedDate = document.querySelector(".dates input:checked").id;
                const selectedTime = document.querySelector(".times input:checked").id;
                renderSeats(selectedDate, selectedTime);
            });
        });

        // Initial render (default selection)
        renderSeats("d1", "t1");

        // Function to retrieve query parameters
        function getQueryParam(param) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(param);
        }

        // Get the movie name from the URL and display it
        const movieName = getQueryParam('movie');
        if (movieName) {
            const titleElement = document.querySelector('.title');
            titleElement.textContent = movieName;
        }

        document.getElementById('seat').addEventListener('click', function() {
            const selectedDate = document.querySelector(".dates input:checked").id;
            const selectedTime = document.querySelector(".times input:checked").id;
            const seatCount = document.querySelector(".count").innerText; // Seat count
            const totalPrice = document.querySelector(".amount").innerText; // Total price
            
            // Check if any seats have been selected
            const selectedSeats = document.querySelectorAll(".all-seats input:checked");
            if (selectedSeats.length === 0) {
                // If no seats are selected, show an alert
                alert("Please select at least one seat to proceed.");
                return; // Exit the function
            }
             // Redirect to Payment.jsp
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
</body>
</html>