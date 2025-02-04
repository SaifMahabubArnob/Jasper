<!DOCTYPE html>
<html>
<head>
    <title>Create Flight</title>
</head>
<body>
    <h2>Create New Flight</h2>
    <form action="/flights/save" method="post">
        <label for="from">From:</label>
        <input type="text" id="from" name="from" required><br>

        <label for="to">To:</label>
        <input type="text" id="to" name="to" required><br>

        <label for="journeyDate">Journey Date:</label>
        <input type="date" id="journeyDate" name="journeyDate" required><br>

        <label for="passengerCount">Passenger Count:</label>
        <input type="number" id="passengerCount" name="passengerCount" required><br>

        <label for="ticketPrice">Ticket Price:</label>
        <input type="number" id="ticketPrice" name="ticketPrice" required><br>

        <button type="submit">Save Flight</button>
    </form>
</body>
</html>
