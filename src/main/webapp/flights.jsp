<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h2>All Flights</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Trip Type</th>
                <th>From</th>
                <th>To</th>
                <th>Journey Date</th>
                <th>Return Date</th>
                <th>Passengers</th>
                <th>Airline</th>
                <th>Ticket Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="flight" items="${flights}">
                <tr>
                    <td>${flight.id}</td>
                    <td>${flight.tripType}</td>
                    <td>${flight.fromLocation}</td>
                    <td>${flight.toLocation}</td>
                    <td>${flight.journeyDate}</td>
                    <td>${flight.returnDate}</td>
                    <td>${flight.passengerCount}</td>
                    <td>${flight.airline}</td>
                    <td>${flight.ticketPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
