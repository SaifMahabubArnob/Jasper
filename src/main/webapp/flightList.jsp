<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Flights List</title>
</head>
<body>
    <h2>Flights List</h2>
    <a href="/flights/create">Add New Flight</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>From</th>
                <th>To</th>
                <th>Journey Date</th>
                <th>Passenger Count</th>
                <th>Ticket Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${flights}" var="flight">
                <tr>
                    <td>${flight.id}</td>
                    <td>${flight.from}</td>
                    <td>${flight.to}</td>
                    <td>${flight.journeyDate}</td>
                    <td>${flight.passengerCount}</td>
                    <td>${flight.ticketPrice}</td>
                    <td>
                        <a href="/flights/delete/${flight.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
