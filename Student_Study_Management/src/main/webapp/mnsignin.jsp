<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Sign In</title>
    <link rel="stylesheet" href="css/mnsignup.css" />
    <script>
        function togglePasswordVisibility(id, iconId) {
            const passwordField = document.getElementById(id);
            const icon = document.getElementById(iconId);
            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.className = "fas fa-eye-slash";
            } else {
                passwordField.type = "password";
                icon.className = "fas fa-eye";
            }
        }

        function redirectToHome() {
            // Redirect to the manager home page
            window.location.href = '/managerhome';
        }
    </script>
</head>
<body>
    <div class="signup-container">
        <h2>Manager Sign In</h2>
        <form action="/mnsignin/validate" method="POST" onsubmit="event.preventDefault(); redirectToHome();">
            <div class="form-group">
                <label for="mnemail">Email</label>
                <input type="email" id="mnemail" name="mnemail" placeholder="Enter your email" required />
            </div>
            <div class="form-group">
                <label for="mnpassword">Password</label>
                <div class="password-wrapper">
                    <input type="password" id="mnpassword" name="mnpassword" placeholder="Enter your password" required />
                    <i id="togglePassword" class="fas fa-eye" onclick="togglePasswordVisibility('mnpassword', 'togglePassword')"></i>
                </div>
            </div>
            <button type="submit" class="btn">Sign In</button>
        </form>
        <p>Don't have an account? <a href="/mnsignup">Sign up here</a>.</p>
    </div>
</body>
</html>
