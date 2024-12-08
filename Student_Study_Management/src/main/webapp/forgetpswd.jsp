<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
</head>
<body>
    <h2>Forgot Password</h2>
    <form action="/reset-password" method="post">
        <label for="email">Enter your registered email:</label>
        <input type="email" id="email" name="email" required>
        
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
