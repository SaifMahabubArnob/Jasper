
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-Up Form</title>
    <link rel="stylesheet" href="css/style6.css"> <!-- CSS ফাইল লিংক -->
</head>
<body>
    <div class="signup-container">
        <form class="signup-form">
            <h1>Create an Account</h1>
            <p>Join us and explore the amazing features!</p>
            
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" placeholder="Enter your username" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" placeholder="Confirm your password" required>
            </div>

            <button type="submit" class="signup-btn">Sign Up</button>
            <div class="alt-link">
                <p>Already have an account? <a href="#">Log in</a></p>
            </div>
        </form>
    </div>
</body>
</html>
