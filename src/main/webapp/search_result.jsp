<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Search Result</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
        }
        .info {
            margin-top: 20px;
            font-size: 18px;
            color: #343a40;
        }
        .info strong {
            color: #007bff;
        }
        .btn-back {
            margin-top: 20px;
            display: block;
            text-align: center;
        }
        .btn-back a {
            text-decoration: none;
            font-weight: bold;
            color: white;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: 0.3s;
        }
        .btn-back a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Flight Search Saved Successfully!</h1>
        <div class="info">
            <p><strong>From:</strong> <c:out value="${search.fromLocation}" /></p>
            <p><strong>To:</strong> <c:out value="${search.toLocation}" /></p>
            <p><strong>Journey Date:</strong> <c:out value="${search.journeyDate}" /></p>
        </div>
        <div class="btn-back">
            <a href="/">Go Back to Home</a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
