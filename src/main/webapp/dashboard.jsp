<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="css/style1.css">
	<link rel="stylesheet" href="css/style2.css">
	<link rel="stylesheet" href="css/style3.css">
	<link rel="stylesheet" href="css/style7.css">
<!--<link rel="stylesheet" href="css/style8.css">-->
		
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	    <!-- FontAwesome for Social Media Icons -->
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
	
    <style>
       
    </style>
    <script>
        function showForm(type) {
            const sections = ["bus", "air", "ship", "hotel"];
            sections.forEach(section => {
                document.getElementById(section).style.display = section === type ? 'block' : 'none';
            });
        }
    </script>
</head>
<body>

	<!-- Header Section -->
	<div class="header">
	    <h1>Welcome to BdTickets</h1>
	</div>

	
	<!-- Navbar Section -->
	<div class="navbar" style="display: flex; justify-content: space-between; align-items: center; padding: 10px; background-color: #f8f9fa;">
	    <!-- Logo Section -->
	    <div class="logo">
	        <img src="https://bdtickets.com/images/alt-logo-new.png" alt="BDTickets Logo" style="width: 120px; height: auto;">
	    </div>
	    
	    <!-- Menu Section -->
		
		
	    <div style="display: flex; gap: 15px; align-items: center;">
	        <a href="#" onclick="showForm('bus')" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJgAAACUCAMAAABY3hBoAAAAY1BMVEX///8AAADq6urv7+9NTU3z8/Ph4eFQUFA7OzvExMSFhYUyMjJ9fX2fn5/k5OS4uLja2topKSn5+fnNzc1HR0cODg5AQEBfX19VVVWQkJCurq5paWkiIiIbGxumpqYWFhZycnJ6Ppt7AAAEdElEQVR4nO2a2ZarIBBF0yBxHtEoZvL/v/IGUIOAScxk7lq13xpI9bGAohg2GwAAAAAAAAAAAAAAAAAAAAD4SQhOtl8mwaS4oyppu/BvBQ4NS29oQ1G+hqoeL8IzuuJqRVmcc2wdW9HKsjg1MnQVzVAZlu6XcXZjX+WZLizoVbEtJl8HI9odewGaslgWB2R+anwYxKTbdhMJhdSVrqVKaPDPQkSnFrIVdRVb6rdxVI+hyr/WoR0viCbNMfo4W3oK9m4ZHrSpeQ21VBSo8c1fM6ZdXSZ6UnVYssrCNOCOOlz+pzrC/DX05E3HItFTdNDBY0hFVxJWnfOyi9Nsi3iOMR3t/I9wqwurGkdDdPDBKHb60K1XuB4vPVvaX+qErTJOfTRJK1IhNlOEeYawsMBTiAjDkV58qaB8rldG+5a3d8z2o61go0NCtXxGmPGr08TPCpkIQkax+HzH0n7TrzWmMPk//tDvCUuEqfj3hMl0IkS/JwyJvmx/T5h02fEHhVGRZaS/J2xT8yqxlH9UmGtpf1uYzCnovDCcTEFise9QYuCLAGu0Fx9SWtoPtuzCNs7gabuwaudpCL8cjWLPk8mIvb1phrMTdeF+37HWp9NlaSNWjL9kTtiX2TX74NSmlGZJUvKCyCZsxTyxOniNyGk9ZApD3nrCrqSmsA1d8xRjILAI+w4ko2nMgm5fu97BHD3OasIGCoKTLKN+etk1NdftxmF1YTpFksqI/WvCLlmZ96PCtiBsISBsKSBsKSBsKf+5MILxB06zb1p9QBiKu9px66g1Ly1eALVR7Tp1F89YvSssGy9MLtsj49biWbLuarWxWr0njE2yt2P7Hl3tUbVascXCir2eU9o2u4sxbtP25lXlbWGGrvHc6hVi0+p+mbDegsu2BGes3ze9fHsiD1n/PJZhsmXuzPeqwhK9Tm6UWD+nkbyfO7wqTF6DBP1sJPKyKNe90gvjg/FMtbpI91D8js40jKTWwdun1mJHrk8O8wfieKh5KdYSEX5qtUg6QGuXccdW/UlxjNTjbt/s30Q0o8R2PP4YRJ4wTa0K5/gTq0gEOmeTyZvCg3pBkJseLoTLPNd2ofAY8kqinoYH4bJctSpvJ3iHM3MKC05TB1tm+jNow/Q00yznjq3tdek3hKUzzcQ/L9jZVreix8b1jzLLHaV2FNmZLZ6hm1oNLE3CQFnbC6JcC2Nx3FhOshIsfuO/cCmN5VHl5K0MEsGqnVi99QhJPiyY9KX4tHLuBc5D4NLoCNmT955DKch+UzwqB6ktSVmA8V4hs/XuTWQsPIw2WpmbvZjIypuiaszsUrl26uvhTfpBWVNMCPb7VPblvKef2Y3PrdI+TM2c988xnBDnZTnknJacbiFj9nksy+Gg11toI1ES/v47X9alvrsareoZ112ItiAEb9B1UaYFrvqZfCVVou7Ov9/+Mfzd1Wr4ZE5cpBF/u1CV7G2yhDRWcqu76NabyXsQnCDy9q04ISj5xAYfAAAAAAAAAAAAAAAAAAAAAD7DP8tfTMbTH0jUAAAAAElFTkSuQmCC" alt="Bus Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Bus
	        </a>
			
			
	        <a href="#" onclick="showForm('air')" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,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"
				alt="Air Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Air
	        </a>
	        <a href="#" onclick="showForm('ship')" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,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"
				 alt="Ship Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Ship
	        </a>
	        <a href="#" onclick="showForm('hotel')" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,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"
				 alt="Hotel Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Hotel
	        </a>
	        <a href="flashDeals.jsp" style="display: flex; align-items: center;">
	            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUSRTM1bd7FxAtG_oIb2qkOf6k4clsodEMWA&s"
				 alt="Deals Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Flash Deals
	        </a>
	        <a href="myBooking.jsp" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,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"
				 alt="Booking Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            My Booking
	        </a>
	        <a href="tel:16247" style="display: flex; align-items: center;">
	            <img src="data:image/png;base64,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"
				 alt="Phone Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Call 16247
	        </a>
	        <a href="signUp.jsp" style="display: flex; align-items: center;">
	            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtYnIOM6R6COoA3jzfYzZ4iJJ5hAQg4Al6mg&s"

				alt="Sign Up Icon" style="width: 20px; height: 20px; margin-right: 5px;">
	            Sign Up
	        </a>
			
			<a href="<c:url value='/admin/tickets'/>" style="display: flex; align-items: center;">
			    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI2QRWu5ow1jvU9h3wdv6Z5-tZRepmJ8XDIQ&s"
			         alt="Admin Icon" style="width: 30px; height: 30px; margin-right: 5px;">
			    Admin
			</a>


			
			
	    </div>
	</div>

	
	
		   <!-- Forms Section -->
		   <div class="container">
		       <div id="bus" class="form-container" style="display: block;">
		           <h2>Book a Bus</h2>
		           <form action="/busSearch" method="post">
		               <!-- From and To Location -->
		               <select name="fromLocation" required>
		                   <option value="">Select Starting Location</option>
		                   <option value="Dhaka">Dhaka</option>
		                   <option value="Chittagong">Chittagong</option>
		                   <option value="Sylhet">Sylhet</option>
		               </select>
		               <select name="toLocation" required>
		                   <option value="">Select Destination</option>
		                   <option value="Dhaka">Dhaka</option>
		                   <option value="Chittagong">Chittagong</option>
		                   <option value="Sylhet">Sylhet</option>
		               </select>

		               <!-- Journey Details -->
		               <input type="date" name="journeyDate" required>
		               <input type="time" name="journeyTime" required>
		               <input type="number" name="seats" placeholder="Number of Seats" min="1" required>
		               
		               <!-- Class Selection -->
		               <select name="busClass" required>
		                   <option value="">Select Bus Class</option>
		                   <option value="AC">AC</option>
		                   <option value="Non-AC">Non-AC</option>
		                   <option value="Sleeper">Sleeper</option>
		               </select>

		               <!-- Passenger Details -->
		               <input type="text" name="passengerName" placeholder="Passenger's Name" required>
		               <input type="tel" name="phone" placeholder="Phone Number" required>
		               <input type="email" name="email" placeholder="Email Address" required>

		               <!-- Age Group -->
		               <select name="ageGroup" required>
		                   <option value="">Select Age Group</option>
		                   <option value="child">Child</option>
		                   <option value="adult">Adult</option>
		                   <option value="senior">Senior</option>
		               </select>

		               <!-- Discount Code -->
		               <input type="text" name="discountCode" placeholder="Discount Code">
		               <p>Discount: <span id="discount">0</span> BDT</p>

		               <!-- Terms and Conditions -->
		               <label>
		                   <input type="checkbox" name="terms" required> I agree to the <a href="/terms">terms and conditions</a>.
		               </label>

		               <!-- Round Trip Return Date -->
		               <div id="returnDateContainer" style="display: none;">
		                   <input type="date" name="returnDate" placeholder="Return Date" id="returnDate">
		                   <input type="time" name="returnTime" placeholder="Return Time" id="returnTime">
		               </div>

		               <!-- Trip Type -->
		               <label>
		                   <input type="radio" name="tripType" value="one-way" checked> One-way
		               </label>
		               <label>
		                   <input type="radio" name="tripType" value="round-trip"> Round-trip
		               </label>

		               <!-- Price Estimation -->
		               <p>Estimated Fare: <span id="fare">0</span> BDT</p>

		               <button type="submit">Search Bus</button>
		           </form>
		       </div>
		   </div>

		   <script>
		       // JavaScript to toggle return date and time based on trip type
		       const tripTypeRadios = document.querySelectorAll('input[name="tripType"]');
		       const returnDateContainer = document.getElementById('returnDateContainer');
		       const busClassSelect = document.querySelector('[name="busClass"]');
		       const seatsInput = document.querySelector('[name="seats"]');
		       const fareElement = document.getElementById('fare');
		       const discountInput = document.querySelector('[name="discountCode"]');
		       const discountElement = document.getElementById('discount');

		       const priceList = {
		           "AC": 500,
		           "Non-AC": 300,
		           "Sleeper": 400
		       };

		       // Function to calculate fare based on selected bus class and number of seats
		       function calculateFare() {
		           const selectedClass = busClassSelect.value;
		           const numberOfSeats = seatsInput.value;
		           const pricePerSeat = priceList[selectedClass] || 0;  // Default to 0 if no class is selected
		           let totalFare = pricePerSeat * numberOfSeats;

		           // Apply discount if available
		           let discount = 0;
		           if (discountInput.value === 'DISCOUNT10') {
		               discount = 10;
		           } else if (discountInput.value === 'DISCOUNT20') {
		               discount = 20;
		           }

		           totalFare -= discount;
		           fareElement.textContent = totalFare;
		           discountElement.textContent = discount;
		       }

		       // Event listeners for bus class, seats input, and discount code
		       busClassSelect.addEventListener('change', calculateFare);
		       seatsInput.addEventListener('input', calculateFare);
		       discountInput.addEventListener('input', calculateFare);

		       // Function to toggle return date visibility based on trip type
		       tripTypeRadios.forEach(radio => {
		           radio.addEventListener('change', function() {
		               if (this.value === 'round-trip') {
		                   returnDateContainer.style.display = 'block';
		               } else {
		                   returnDateContainer.style.display = 'none';
		               }
		           });
		       });

		       // Initial check to display return fields if round-trip is selected by default
		       if (document.querySelector('input[name="tripType"]:checked').value === 'round-trip') {
		           returnDateContainer.style.display = 'block';
		       }

		       // Initial fare calculation (if inputs are pre-filled)
		       calculateFare();
		   </script>

		   
		   
		   
		   
		   
		   
		
		   
		   
		   
		   
		  <div id="flightBookingSection"> 
		   <title>Book a Flight</title>
		       <script>
		           function toggleReturnDate() {
		               const roundTrip = document.getElementById("roundTrip").checked;
		               const returnDateField = document.getElementById("returnDateField");
		               returnDateField.style.display = roundTrip ? "block" : "none";
		           }

		           function calculateFare() {
		               const ticketPrice = {
		                   'American Airlines': 600,
		                   'Indian Airlines': 500,
		                   'Canadian Airlines': 550,
		                   'France Airlines': 650,
		                   'Australia Airlines': 700,
		                   'Bangladesh Airlines': 450,
		                   'Thailand Airlines': 400,
		                   'Malaysia Airlines': 500,
		                   'Singapore Airlines': 600
		               };

		               const airline = document.getElementById("airline").value;
		               const passengers = document.getElementById("passengerCount").value;

		               if (airline && passengers) {
		                   const fare = ticketPrice[airline] * passengers;
		                   document.getElementById("ticketPrice").value = fare;
		               }
		           }
		       </script>
		       <style>
		           body {
		               font-family: Arial, sans-serif;
		           }
		           .form-container {
		               width: 400px;
		               margin: auto;
		               padding: 20px;
		               border: 1px solid #ccc;
		               border-radius: 8px;
		               box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		           }
		           .form-container h2 {
		               text-align: center;
		           }
		           label {
		               display: block;
		               margin-top: 10px;
		           }
		           input, select, button {
		               width: 100%;
		               padding: 8px;
		               margin-top: 5px;
		               border: 1px solid #ccc;
		               border-radius: 4px;
		           }
		           .trip-type {
		               display: flex;
		               justify-content: space-between;
		               align-items: center;
		           }
		           .trip-type label {
		               display: inline-block;
		               margin-right: 10px;
		           }
		           .trip-type input {
		               margin-right: 5px;
		           }
		       </style>
		   </head>
		   <body>

		       <div id="air" class="form-container">
		           <h2>Book a Flight</h2>
		           <form action="airSearch" method="post">
		               
		               <!-- Trip Type -->
		               <div class="trip-type">
		                   <label>Trip Type:</label>
		                   <label for="oneWay">
		                       <input type="radio" id="oneWay" name="tripType" value="oneWay" onclick="toggleReturnDate()" checked> One-Way
		                   </label>
		                   <label for="roundTrip">
		                       <input type="radio" id="roundTrip" name="tripType" value="roundTrip" onclick="toggleReturnDate()"> Round-Trip
		                   </label>
		               </div>
		               
		               <!-- From Location -->
					   <label for="from">From:</label>
					   <input type="text" id="from" name="fromLocation" placeholder="From" required><br>

		               <!-- To Location -->
					   <label for="to">To:</label>
					   <input type="text" id="to" name="toLocation" placeholder="To" required><br>
		               
		               <!-- Journey Date -->
		               <label for="journeyDate">Journey Date:</label>
		               <input type="date" id="journeyDate" name="journeyDate" required><br>
		               
		               <!-- Return Date -->
		               <div id="returnDateField" style="display: none;">
		                   <label for="returnDate">Return Date:</label>
		                   <input type="date" id="returnDate" name="returnDate"><br>
		               </div>
		               
		               <!-- Arrival Time -->
		               <label for="arrivalTime">Arrival Time:</label>
		               <input type="time" id="arrivalTime" name="arrivalTime" required><br>
		               
		               <!-- Passenger Type -->
		               <label for="passengerType">Passenger Type:</label>
		               <select id="passengerType" name="passengerType" required>
		                   <option value="Adult">Adult</option>
		                   <option value="Child">Child</option>
		                   <option value="Infant">Infant</option>
		               </select><br>
		               
		               <!-- Number of Passengers -->
		               <label for="passengerCount">Number of Passengers:</label>
		               <input type="number" id="passengerCount" name="passengerCount" min="1" required><br>
		               
		               <!-- Meal Preferences -->
		               <label for="mealPreference">Meal Preference:</label>
		               <select id="mealPreference" name="mealPreference">
		                   <option value="Vegetarian">Vegetarian</option>
		                   <option value="Non-Vegetarian">Non-Vegetarian</option>
		                   <option value="Vegan">Vegan</option>
		               </select><br>
		               
		               <!-- Preferred Class -->
		               <label for="classType">Preferred Class:</label>
		               <select id="classType" name="classType">
		                   <option value="Economy">Economy</option>
		                   <option value="Business">Business</option>
		                   <option value="First">First Class</option>
		               </select><br>
		               
		               <!-- Travel Insurance -->
		               <label for="insurance">Add Travel Insurance:</label>
		               <input type="checkbox" id="insurance" name="insurance" value="yes"> Yes, Add Travel Insurance<br>
		               
		               <!-- Discount Coupons -->
		               <label for="couponCode">Enter Promo Code:</label>
		               <input type="text" id="couponCode" name="couponCode" placeholder="Enter Promo Code"><br>
		               
		               <!-- Airline Selection -->
		               <label for="airline">Airline:</label>
		               <select id="airline" name="airline" onchange="calculateFare()" required>
		                   <option value="American Airlines">American Airlines</option>
		                   <option value="Indian Airlines">Indian Airlines</option>
		                   <option value="Canadian Airlines">Canadian Airlines</option>
		                   <option value="France Airlines">France Airlines</option>
		                   <option value="Australia Airlines">Australia Airlines</option>
		                   <option value="Bangladesh Airlines">Bangladesh Airlines</option>
		                   <option value="Thailand Airlines">Thailand Airlines</option>
		                   <option value="Malaysia Airlines">Malaysia Airlines</option>
		                   <option value="Singapore Airlines">Singapore Airlines</option>
		               </select><br>
		               
		               <!-- Ticket Price -->
		               <label for="ticketPrice">Ticket Price:</label>
		               <input type="number" id="ticketPrice" name="ticketPrice" placeholder="Enter Ticket Price" required readonly><br>
		               
		               <!-- Payment Method -->
		               <label for="paymentMethod">Payment Method:</label>
		               <select id="paymentMethod" name="paymentMethod" required>
		                   <option value="creditCard">Credit Card</option>
		                   <option value="paypal">PayPal</option>
		                   <option value="googlePay">Google Pay</option>
		               </select><br>
		               
		               <button type="submit">Search Flights</button>
		           </form>
		        </div>
			   </div>			   
			 				   
								   
								   
								   
								   
								   
								   

		       <div id="ship" class="form-container" style="display: none;">
		           <h2>Book a Ship</h2>
		           <form action="ship.jsp" method="post">
		               <input type="text" name="from" placeholder="From" required>
		               <input type="text" name="to" placeholder="To" required>
		               <input type="date" name="journeyDate" required>
		               <button type="submit">Search Ships</button>
		           </form>
		       </div>
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			 
		       <div id="hotel" class="form-container" style="display: none;">
		           <h2>Book a Hotel</h2>
		           <form action="hotelSearch" method="post">
		               <input type="text" name="city" placeholder="City" required>
		               <input type="date" name="checkIn" required>
		               <input type="date" name="checkOut" required>
		               <button type="submit">Search Hotels</button>
		           </form>
		       </div>
		   </div>


		   
	<!-- Flash Deals Section -->
	   <section class="flash-deals">
	       <h2>Flash Deals</h2>
	       <div class="deals-carousel">
	           <div class="deal-card">
	               <img src="https://static1.bdtickets.com/aaum/promotional/24a5a95f-0136-4f39-9497-b9e90ed0a43f" alt="Deal 1">
	               <h3>Enjoy 0% on Winter Cruises</h3>
	               <button>Book Now</button>
	           </div>
	           <div class="deal-card">
	               <img src="https://static1.bdtickets.com/aaum/banners/c1e0b533-134a-432d-98cd-d90661a41923" alt="Deal 2">
	               <h3>Up to $300 Savings on Flights</h3>
	               <button>Book Now</button>
	           </div>
	           <div class="deal-card">
	               <img src="https://static1.bdtickets.com/aaum/promotional/9708b0fa-b599-41c7-a5bf-f45e52f490b7" alt="Deal 3">
	               <h3>Save Big on City Hotel Stays</h3>
	               <button>Book Now</button>
	           </div>
	       </div>
	   </section>

	   <!-- Frequently Traveled Bus Routes Section -->
	   <section class="frequent-routes">
	       <h2>Frequently Traveled Bus Routes</h2>
	       <div class="routes-grid">
	           <div class="route-card">
	               <img src="https://static1.bdtickets.com/aaum/banners/a4df1537-0bcc-47b9-ae5f-928fdb58f06c"alt="Route 1">
	               <p>Dhaka to Cox's Bazar</p>
	           </div>
	           <div class="route-card">
	               <img src="https://static1.bdtickets.com/aaum/banners/5dc7b536-fc1c-429b-9cfa-df534ca713c1" alt="Route 2">
	               <p>Dhaka to Rajshahi</p>
	           </div>
	           <div class="route-card">
	               <img src="https://static1.bdtickets.com/aaum/banners/77054242-4fa4-4eda-99cf-2ba276f548ef" alt="Route 3">
	               <p>Dhaka to Khulna</p>
	           </div>
	       </div>
	   </section>

	   <!-- Popular Bus Routes Section -->
	   <section class="popular-routes">
	       <h2>Popular Bus Routes</h2>
	       <ul class="routes-list">
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Cox's Bazar" class="location-logo">
	               <span>Dhaka to Cox's Bazar</span>
				   <a href="https://bdtickets.com/popular-routes/dhaka-to-coxs-bazar" class="route-btn">Book Now</a>
				  
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Khagrachari" class="location-logo">
	               <span>Dhaka to Khagrachari</span>
	                <a href=" https://bdtickets.com/popular-routes/dhaka-to-khagrachari" class="route-btn">Book Now</a>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Barisal" class="location-logo">
	               <span>Dhaka to Barisal</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAA51BMVEX/////AADnAADsAAD8AADzAAD5AADiAADvAADfAADcAAD//Pz/Cwv2AAD/9PT/+fn/Gxv/Jib/7+//ISGzAAD7ysr+2tr/6ur/5eX/ExPuDg7/0tLzQ0P/ZGT/MjL/np7/SUn/sLD/qan/h4f/u7v/kpL/xcX/UFDOAADnISHmGBj/WVn/cXH3Wlr/f3/xLi7BAADgqqr/Pj7ldnbxbW3zYWHqS0vsxsbvoKDv0tLjjY3ZQEDWb2/VKirx4ODVkZHQf3/JX1/AOzvBGhq5ISHCR0fqp6fiKirkt7fxkJDthITfZWXbV1fg4ZQ1AAAM0klEQVR4nO2dZ3fiOhCG1w0XjLFxcAESmoEAgeSSkHKz7bZkye7//z1XtgFLttzYRDbn8H7Ysy06epjRjEaNT59OOumkk0466aSySDEtwzCsRrXojvyOqo3x6FynYPWWfaN+bFBVxXSuVAqv3sho1IvuYWY1rP4iBmQrddi0joLHcoZ2MoqnVbetFN3VNBmD8wwknrSh0yi6u0myRnNKVrMYxpO9dEobDeoDMFRsW87KwlKUPmwX3Wu8mldqdhCfBvz31aiEvlbvXgCzaLE0LKTgb2WZkuelM451TqkgscSYhg0LpqGobrlGTtPtk44f+RESBMejOS+Rq9UHgERlKYyTsZUKHgalUa2iGXZShhRwfT06fWEBiqtEHNajoYyiKXyZd55JbD1kly1JAg5CMy7DwLGuQJ7UbVVFYViYJQuNXYIEal3JKpCu2qocY5ZUHp9Gc4pmMZe2LNu66iaMRJTEoePTXBRMo4y8rC+rUCKMY0kyzpam2PTZlylvqCDDJQ4l0TgeTa/ImNZWdT08hYk1SwpO0dnTAtMx4GYawlJLhomjYQue2ShXrnvospyHJcE4XkNFDZs+BaJxKCLXMsDE4ng0xTia5U5hbGR2ydY4LhNNDI5Lc1UIzLk7hYmwAJrfMI4MIkGzAJax233EyXwWLmwcezVfLBaTi0iYi3G2HvlFqHrPA4BH/44FMg573nXGbcNV0+kPV5lwusRhukjO93IlB8vt62rQRtb6GsZ4aafT9EgXN41eMgvQhWNGHUYxlunGGRGG6YZLZLYWYtnEuH7VuEjDmZtEWZTIumXIMHZSf0ZpNGRHTf8imeU8+cfbahKNTF2RzJzVpRyq+BEna6U6vbVKMI6tE63T2hNVZ2MNo8cNF0hWJz5Kqxo1IjjfHNgaOvGHWYRRlr2Kdi+OpqJr8oRcYdNYyihMRYBg7rI5vHNdweMAGJ0l52ftnqohbgYbJuuHWh/ZYRqfB8BobCbrvoscVtPsGMNog6ytNBZRGI8G+LA9JzULUEaUhlQxsGHW2aeJzgWGBuDIKnBiUkWada4iLBRkmOs8zj7BwQAcWdeIDZp2aOMC9rJFnobGegwNa1NDQoNmHMr+cLrs52opXBJAOD0y8zN3A8PTbqkY9rJ8yW4QB1Nha2QigLLcwsg+DSfsaYR1zqZQAqRCJRMBzDmF0AAYYcsj5B22cDwTdFWFcMhEACtY9POKZh/GwxHyjtph0HlO03UNyqNklgOtYOi7a0MVQdjTMHnbcgJTtDRb1/WAZklkXQOCcWlqQqDrvG0Z3H68tDR3myeAOycCYyBxWYZY8o5/EAG2ned0XdB0VYOKtgmRRNNGYNgWE8Ascze2ZbkA44VTdTgArIjAoDmTFSCaYe7GfDfTWjVgFzROXxQCw7R+B4Zz04smXKiChsJoRGCaCEyNYZi9be7ytlV14zkIY1rL1gqxTDsCA2h8nPu8bZkARtVtTtM0nUNhyIwZIwrDtGiPhs/b1gPXAjZpcTUuhFKpzAuDcWkADp23rUcOkLRcmsg+SI4q7zdk4WBcTwN6ytnW2gbuBWiE6LYOoRmAhoPxaIQ/c7bF24JH481TURwyczNzgoXxosBzvqaeBA0EM31fQsA0ZGbNjSUexqWZ5vOzzyCMcUILqu4CHDLLgPUuDFNhEJrPeVqqfuFcGlRbFo7QWtM4DgbQPH/N0dA3Zjv4MTQTQns0SNZkGYSG/569ncaz0ALZMgzj+VqN1OqMNYdhBISGfs4+ar7NQN5v6REWL7D1Ce0DKCPYNAKN0PCfs36kD8+6igPxRezYSR+BYVBdvmTLdl//ElWsVTwRW2v+1IQ3ATmUReCfH7K0oXy/jA6WQOR2AZBMUwtZhpH+zjBs6t++tBJYOIL7gHCmYcMwzM3fqQmv+vKP2EqwDMGds0/NFUQTgWFu/k3ztO//TqGFUIyXETw/U4X9jMPQnL0k/vx/Z9Nw4kfUInqOdgBdWWRpHM1/8TubDzeAJWn0Z90WfSc14Ot+dJRGuDw7e1Fwea9ufT47e9WZJBaO8Lkm+OwMhzGNcHlz9vcfX0MBtv714fvZ2Q0NJmRJI2ZB+FiTMof9DGcb8ebm7N/vPx4sxR/MdfPp4eUvgALyS7DUjh0xmfd430sOtBXI0DgcRgK+dvbPX9+//QH08u3zf+CPNxLNCYHwhiF/gRM611Sh8TQt6RJ4W6CbS4kWUOEMMybOgqxrMHE0NM0DoMubG/CLJLrrUYyQhpNyIupjBOWaGk3jcVoMmIf6/+KR+MMpGaeQG1sKGgLwOC2MvZJxci/xvo+gGRpHx+BgWSI4EItQ0GUAJThAV6HjaOIUYxuBeFjeyQn8TKDfBUcgs/aPUyMIzzUa1QE03nZ1gTe1xntHqzAH0ERwhHWBV2kbQ1wIONw4ReTLQMFqQNjPDrLOsNA7zvXANAKGJqd1rou4bQKpPUkyTc649lb0Hdq9adhwCAjhJIJ5LPeFv3IQ7NZg/QzCaaVZh/TlDIz2NWclBmZHQ6fQLMrwwsHeNHg/C3Bo/KxzZzjyF5ow2m/XxJpmx5NIk+uo6sdpvxyQBJNKU2i+DLQ/GMDxaTjxNLlPd32UrnY0yTAAh46lKc2LIPvlACGNho6zTf6Tah+mXc3JimkwND5C02SvzCXK3M03adc04nQ6TTIRhqaw+hKnXXiu8S7LjJ/OkqwToZmWyDDANOsgOs9mAOc6yTSRmU3Bs+WwdscDQXQWZ9OZmAgTimk02R2MdO1qTnk2k6bT2XSayILStEpmGDBqvBggq5qHkjhkwjSkDmNkl19z2noNkIip6caj8XHo19IZxr0iSHlvA81AAOD5DDiAxpvhvJXxRc2RrNuypusgMnvKREPT9yV5DAyV2fMeO1E9w2SmaW2K7jdeA/dVQFlmdjDpOIDmvmRhea8LlwakGkhpNLNS1Jc4jSnvYi0tZqfpFN3neE28G4KIaVJoMp2AKkZ+YcPSPJ+RJ/flAZLy9zkZPqwYFr409SVOpnemphKBiaG5Lbq/yfJv1yIhIB5nVqoyJir/cR0OAxPF4fNdhC5A/j4njiVCc19yw4BR4607CVjToDh8SZb9kuSZhpViaAIc/q70hvGe1fVCQBwNf0SG2dacFUmMxfFZ3kpXX2Llna7nRTEeh6f5TgnrS5zabnjmpEQavqRlTFQj212pFZNoyllf4mS6pmGkBJzZ0RjGfZiKompioKhhylpfYlRduYWAFEszK/1EBlY7CAE4nNei+5dPE7cQEEU8jlj46YV8argTNEnE45S6vsRp6G7W4GmkIxr9vhQbis4IjvhWdN9yqzpwazSM+OnRGcbLnEh03klKvidUTlUdt0aL6pjyZSBQc4ajs6vCv5fhMDkqRUshR5OOob7ECdScNVFCcWZHUV/iNF5RvCTBONKR1Jc4DcEsAKH5crSG+fTJ6FEiTCPlfTCkVBrJjCQFODkeCyihGr2KtNcRGaaqNCzjqdlsGxZ023SwDQGejiBf1s2npvPy+Ofbz9u3x8eXcdOAv6F1Ugtgyl1fVo0fLsTzqzT9tXn5o/kU/aLZ9i4EAMMkN6ZYD0+FBW7Lebv99UW6lL68vTwY4Zu/e82FHUzK6lK98bX9eLtpkgcyH117SNLsp2OY2BvZ+/+5CwG/0lutm5bz8/mnQ5THuHuduf3bGEr6l/0OaR8m2+ivKuYt/3pLLFQY9/4nnXFR0vRDQI5lP2UjShlesH8HKbeud02zp4xq3zUNn8t1GrepQ+w91JiC5Nfp5vncTNeSLzkv+jivBGieRXH6lnP7fixK+fcvf8zyGfMAOSI/fcx7m8q8kw6YLd9++DLOgucPOInQ/POA+vLHhy8WfjkIpn5IaHr7cJg1TXfI7BM1X/mPnmS3eZpek1j3djo0/eE3HX/RND398DeuzNsZkSNPU/cJCfpDD1ZbP93NdSLHt9be0Wq646RPyw5Qtd5/dY873xGabA46LZ9n3TcaiTPmfAJzTKu/cK/azu7JrXuam/vdOf7XYb+dUgNkUVWxjHZ/OfVO1F+vH8nWAJv1bH8xYbYe9UGxbJmHdKHesIzmuD/atUffv5EtZ1yZzmYBP1QkdNbL0aC/pUpNki5Du+n0+5vhutPav60zeXssaL/TcLrr2e5hkh3TtLNY3y2Ho82mOxj0HWc8Hje3Ar91nP7joLvZjIbLu8Wko0GvZ3CtdddpF3jJoW61x9116OUY6NUl7fp61Qm0ur6easwOPnhqRhDU8+4Y/VLEYqSYhtEfdoJvOhOSXi70pGvem+ZbLfwYUjTHXtW60rCag+WcTsHw5X9dXUWbLwdNs5FhGaEYVasNYzwYXc1X8SgrECn6Y0OpVksKESN3ydYyfGWJcSeddNJJJ510Ehn9D2JzSO+E/pKTAAAAAElFTkSuQmCC" alt="Dhaka to Chittagong" class="location-logo">
	               <span>Dhaka to Chittagong</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Khulna" class="location-logo">
	               <span>Dhaka to Khulna</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Bandarban" class="location-logo">
	               <span>Dhaka to Bandarban</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Teknaf" class="location-logo">
	               <span>Dhaka to Teknaf</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Rangamati" class="location-logo">
	               <span>Dhaka to Rangamati</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Rangpur" class="location-logo">
	               <span>Dhaka to Rangpur</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Kuakata" class="location-logo">
	               <span>Dhaka to Kuakata</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	           <li>
	               <img src="data:image/png;base64,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" alt="Dhaka to Sylhet" class="location-logo">
	               <span>Dhaka to Sylhet</span>
	               <button class="route-btn">Book Now</button>
	           </li>
	       </ul>
	   </section>

	   <!-- Popular Hotels Section -->
	   <section class="popular-hotels">
	       <h2>Popular Hotels</h2>
	       <div class="hotels-grid">
	           <div class="hotel-card">
	               <img src="https://bdtickets.com/images/hotels/sea_pearl.jpg" alt="Hotel 1">
	               <h3>Sea Pearl Beach Resort</h3>
				   <h4>Price starts from ৳17000 </h4>
	               <p>★★★★★</p>
	           </div>
	           <div class="hotel-card">
	               <img src="https://bdtickets.com/images/hotels/hotel_agrabad.jpg" alt="Hotel 2">
	               <h3>Hotel Agrabad</h3>
				   <h4>Price starts from ৳11,500 </h4>
	               <p>★★★★★</p>
	           </div>
	           <div class="hotel-card">
	               <img src="https://bdtickets.com/images/hotels/sand_castle_1.jpg" alt="Hotel 3">
	               <h3>Grand Sultan Resort</h3>
				   <h4>Price starts from ৳18,000 </h4>
	               <p>★★★★★</p>
	           </div>
	       </div>
	   </section>
	
	
	   
	   
	   <!-- QR code section -->
	   
	   <section class="app-promotion">
	           <div class="app-preview">
	               <img src="image/add-app-2.png" alt="bdtickets App Preview" />
	           </div>
	           <div class="app-details">
	               <h2>Download Our App</h2>
	               <p>Instant Access Via Google Play And Apple Store</p>
	               <div class="store-links">
	                   <!-- Wrap the images in anchor tags to make them clickable -->
	                   <a href="https://play.google.com/store/apps/details?id=com.bdtickets" target="_blank">
	                       <img src="image/playstore.png" alt="Get it on Google Play">
	                   </a>
	                   <a href="https://apps.apple.com/us/app/bdtickets/idXXXXXXXXX" target="_blank">
	                       <img src="image/appstore.png" alt="Download on the App Store">
	                   </a>
	               </div>
	               <div class="qr-code">
	                   <img src="image/qr-code-4.png" alt="QR Code">
	               </div>
	           </div>
	       </section>
	   
	   
	
	   <!-- Payment Logos Section -->
	   <section class="payment-logos">
	       <h3>We Accept</h3>
	       <img src="/image/we-accept-web.png" alt="Payment Methods" class="payment-logo">
	   </section>


	<!-- Footer Section -->
	<div class="footer">
	    <!-- Left Section -->
	    <div class="footer-left">
	        <!-- Logo -->
	        <div class="logo">
	            <img src="https://bdtickets.com/images/alt-logo-new.png" alt="BDTickets Logo">
	        </div>
	        <!-- Description -->
	        <p><strong>bdtickets.com</strong> is a premium online booking portal which allows you to purchase tickets for various bus, launch, airline & hotel room booking services both internationally & locally across the country.</p>
	    </div>

	    <!-- Center Section -->
	    <div class="footer-center">
	        <!-- Footer Links -->
	        <div class="footer-links">
	            <a href="#">Company Info</a>
	            <a href="#">Terms and Conditions</a>
	            <a href="#">FAQ</a>
	            <a href="#">Privacy Notice</a>
	            <a href="#">Cancellation Policy</a>
	            <a href="#">How To Buy Ticket</a>
	        </div>
	        <!-- About Section -->
	        <p><strong>About bdtickets</strong></p>
	        <a href="#">About Us</a>
	        <a href="#">Contact Us</a>
	    </div>

	    <!-- Right Section -->
	    <div class="footer-right">
	        <!-- Developer Info -->
	        <p>System developed and maintained by <strong>Bluetech Solutions</strong></p>
	        <!-- Social Media Icons -->
	        <div class="social-icons">
	            <a href="https://facebook.com" class="fab fa-facebook"></a>
	            <a href="https://youtube.com" class="fab fa-youtube"></a>
	            <a href="https://instagram.com" class="fab fa-instagram"></a>
	        </div>
	    </div>
	</div>

	<!-- Footer Bottom Text -->
	<p class="footer-bottom">&copy; 2025 Your Company Name. All Rights Reserved.</p>


	    <!-- Bootstrap JS -->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	

</body>
</html>
