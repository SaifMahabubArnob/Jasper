
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Details</title>
</head>
<body>
    <h2>Your Booking Details</h2>
    <table border="1">
        <tr>
            <th>From Location</th>
            <th>To Location</th>
            <th>Journey Date</th>
            <th>Journey Time</th>
            <th>Seats</th>
            <th>Bus Class</th>
            <th>Passenger Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Age Group</th>
            <th>Discount Code</th>
            <th>Fare</th>
        </tr>
        <tr>
            <td>${booking.fromLocation}</td>
            <td>${booking.toLocation}</td>
            <td>${booking.journeyDate}</td>
            <td>${booking.journeyTime}</td>
            <td>${booking.seats}</td>
            <td>${booking.busClass}</td>
            <td>${booking.passengerName}</td>
            <td>${booking.phone}</td>
            <td>${booking.email}</td>
            <td>${booking.ageGroup}</td>
            <td>${booking.discountCode}</td>
            <td>${booking.fare}</td>
        </tr>
    </table>
</body>
</html>

