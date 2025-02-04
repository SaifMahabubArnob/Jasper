

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Search</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            width: 50%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .form-container h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .form-container input, .form-container button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-container button {
            background-color: #ff5733;
            color: #fff;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: #ff784e;
        }

        .results-container {
            margin: 20px auto;
            width: 90%;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .hotel {
            display: flex;
            border-bottom: 1px solid #eee;
            padding: 15px;
        }

        .hotel img {
            width: 150px;
            height: auto;
            border-radius: 5px;
            margin-right: 15px;
        }

        .hotel-details {
            flex-grow: 1;
        }

        .hotel-details h3 {
            margin: 0;
            color: #333;
        }

        .hotel-details .rating {
            color: #ffcc00;
            font-weight: bold;
        }

        .hotel-details .facilities, .hotel-details .price {
            margin: 10px 0;
        }

        .hotel-details .price {
            color: #ff5733;
            font-weight: bold;
        }

        .hotel-details .original-price {
            color: grey;
            text-decoration: line-through;
            margin-left: 10px;
        }

        .hotel-details .discount {
            color: green;
            font-weight: bold;
            margin-left: 10px;
        }

        .hotel-details .refund-policy {
            margin-top: 5px;
            font-size: 0.9em;
            color: #555;
        }

        .hotel-details .location {
            margin-top: 5px;
            font-size: 0.9em;
            color: #555;
        }

        .select-room {
            align-self: center;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .select-room:hover {
            background-color: #3bda5b;
        }
    </style>
</head>
<body>
    <div class="form-container">
     <!--   <h2>Book a Hotel</h2>-->
      <!--  <form id="hotelSearchForm">
            <input type="text" name="city" placeholder="City" required>
            <input type="date" name="checkIn" required>
            <input type="date" name="checkOut" required>-->
            <button type="button" onclick="searchHotels()">Search Hotels</button>
        <!--</form>-->
    </div>

    <div class="results-container" id="resultsContainer" style="display: none;">
        <!-- Hotel 1 -->
        <div class="hotel">
            <img src="/path/to/ramada.jpg" alt="Ramada by Wyndham">
            <div class="hotel-details">
                <h3>Ramada by Wyndham</h3>
                <span class="rating">Rating: 9.30</span>
                <div class="facilities">Wi-fi, Swimming Pool, Fitness Centre, Restaurant, Breakfast Included, Room Service</div>
                <div class="price">
                    Tk 8500 / per night 
                    <span class="original-price">Tk 20500</span> 
                    <span class="discount">59% off</span>
                </div>
                <div class="refund-policy">Non Refundable</div>
                <div class="location">Cox's Bazar, Bangladesh - Kolatoli Beach</div>
            </div>
            <button class="select-room">Select Room</button>
        </div>

        <!-- Hotel 2 -->
        <div class="hotel">
            <img src="/path/to/sea-pearl.jpg" alt="Sea Pearl Beach Resort">
            <div class="hotel-details">
                <h3>Sea Pearl Beach Resort & SPA</h3>
                <span class="rating">Rating: 9.20</span>
                <div class="facilities">Wi-fi, Swimming Pool, Fitness Centre, Airport Shuttle, Restaurant, Bar</div>
                <div class="price">
                   Tk 7999 / per night 
                    <span class="original-price">Tk 18000</span> 
                    <span class="discount">56% off</span>
                </div>
                <div class="refund-policy">Refundable</div>
                <div class="location">Cox's Bazar, Bangladesh - Jaliapalong</div>
            </div>
            <button class="select-room">Select Room</button>
        </div>

        <!-- Hotel 3 -->
        <div class="hotel">
            <img src="/path/to/best-western.jpg" alt="Best Western Heritage">
            <div class="hotel-details">
                <h3>Best Western Heritage</h3>
                <span class="rating">Rating: 9.00</span>
                <div class="facilities">Wi-fi, Airport Shuttle, Restaurant</div>
                <div class="price">Tk 9400 / per night</div>
                <div class="refund-policy">Refundable</div>
                <div class="location">Cox's Bazar, Bangladesh - 173-01, Bypass Road, Kolatoli Circle</div>
            </div>
            <button class="select-room">Select Room</button>
        </div>
    </div>

    <script>
        function searchHotels() {
            document.getElementById('resultsContainer').style.display = 'block';
        }
    </script>
</body>
</html>
