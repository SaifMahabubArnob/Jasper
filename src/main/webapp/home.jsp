<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our Website</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e3f2fd; /* Light Blue Background */
        }
        header {
            background-color: #1e2a38; /* Dark Blue Header */
            color: white;
            padding: 20px;
            text-align: center;
        }
        nav {
            background-color: #00796b; /* Teal Navigation Bar */
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        nav a:hover {
            background-color: #004d40; /* Dark Teal on Hover */
        }
        .content {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .btn {
            display: inline-block;
            background-color: #ff5722; /* Orange Button */
            color: white;
            padding: 15px 30px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            margin: 20px 0;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #d84315; /* Dark Orange on Hover */
        }
        footer {
            background-color: #1e2a38; /* Dark Blue Footer */
            color: white;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Welcome to Our Website!</h1>
        <p>Your journey to a great experience starts here.</p>
    </header>

    <!-- Navigation Bar -->
    <nav>
        <a href="/home">Home</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact</a>
        <a href="/services">Services</a>
    </nav>

    <!-- Main Content Section -->
    <div class="content">
        <h1>Explore Our Platform</h1>
        <p>We provide a wide range of services to enhance your experience.</p>
        <a href="/login" class="btn">Go to Login</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2025 Your Company. All Rights Reserved.</p>
    </footer>

</body>
</html>
