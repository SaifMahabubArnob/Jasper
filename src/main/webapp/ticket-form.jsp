<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Ticket Form</title>
</head>
<body>
    <h1>Ticket Form</h1>
    <form action="<c:url value='/admin/tickets'/>" method="post">
        <label for="userName">User Name</label>
        <input type="text" id="userName" name="userName" value="${ticket.userName}" required/><br>

        <label for="eventName">Event Name</label>
        <input type="text" id="eventName" name="eventName" value="${ticket.eventName}" required/><br>

        <label for="bookingDate">Booking Date</label>
        <input type="datetime-local" id="bookingDate" name="bookingDate" value="${ticket.bookingDate}" required/><br>

        <button type="submit">Save Ticket</button>
    </form>
</body>
</html>
