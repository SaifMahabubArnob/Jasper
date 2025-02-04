<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Ticket List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            text-align: center;
            font-size: 24px;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }

        h1 {
            color: #4CAF50;
            text-align: center;
            margin-bottom: 20px;
        }

        .create-link {
            display: inline-block;
            margin-bottom: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
        }

        .create-link:hover {
            background-color: #45a049;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .action-links a {
            text-decoration: none;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            margin: 0 5px;
        }

        .edit-link {
            background-color: #4CAF50;
        }

        .edit-link:hover {
            background-color: #45a049;
        }

        .delete-link {
            background-color: #f44336;
        }

        .delete-link:hover {
            background-color: #e53935;
        }
    </style>
</head>
<body>
<header>
    Ticket Management System
</header>
<div class="container">
    <h1>All Tickets</h1>
    <a href="<c:url value='/admin/tickets/new' />" class="create-link">Create New Ticket</a>
    <table>
        <thead>
            <tr>
                <th>Ticket ID</th>
                <th>User Name</th>
                <th>Event Name</th>
                <th>Booking Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ticket" items="${tickets}">
                <tr>
                    <td>${ticket.id}</td>
                    <td>${ticket.userName}</td>
                    <td>${ticket.eventName}</td>
                    <td>${ticket.bookingDate}</td>
                    <td class="action-links">
                        <a href="<c:url value='/admin/tickets/edit/${ticket.id}'/>" class="edit-link">Edit</a>
                        <a href="<c:url value='/admin/tickets/delete/${ticket.id}'/>" class="delete-link">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
