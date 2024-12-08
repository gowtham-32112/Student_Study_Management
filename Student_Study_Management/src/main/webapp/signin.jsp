<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/signin.css"> <!-- Link to the CSS file -->
</head>
<body>
    <div class="loginWindow">
        <h2 class="loginHeader">Sign In</h2>
        <form class="loginContent" action="/signin/validate" method="post">
            <input type="text" id="email" name="email" placeholder="Email" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <button type="submit" class="signinButton">Sign In</button>
        </form>

        <!-- Display error message if login fails -->
        <p id="ack">${errorMessage}</p>

        <!-- Links for Forgot Password and Sign Up -->
        <div class="link-container">
            <a href="/forgetpswd">Forgot Password?</a> | <a href="/signup">Sign Up Now</a>
        </div>
    </div>
</body>
</html>
