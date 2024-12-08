<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Sign Up</title>
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
        <h2>Manager Sign Up</h2>
        <form onsubmit="event.preventDefault(); redirectToHome();">
            <div class="form-group">
                <label for="mnusername">Username</label>
                <input type="text" id="mnusername" name="mnusername" placeholder="Enter your username" required />
            </div>
            <div class="form-group">
                <label for="mnemail">Email</label>
                <input type="email" id="mnemail" name="mnemail" placeholder="Enter your email" required />
            </div>
            <div class="form-group">
                <label for="mnpassword">Password</label>
                <div class="password-wrapper">
                    <input type="password" id="mnpassword" name="mnpassword" placeholder="Enter your password" required />
                    <i id="togglePassword1" class="fas fa-eye" onclick="togglePasswordVisibility('mnpassword', 'togglePassword1')"></i>
                </div>
            </div>
            <div class="form-group">
                <label for="mnconfirmPassword">Confirm Password</label>
                <div class="password-wrapper">
                    <input type="password" id="mnconfirmPassword" name="mnconfirmPassword" placeholder="Confirm your password" required />
                    <i id="togglePassword2" class="fas fa-eye" onclick="togglePasswordVisibility('mnconfirmPassword', 'togglePassword2')"></i>
                </div>
            </div>
            <p id="message"></p>
            <button type="submit" class="btn">Sign Up</button>
        </form>
        <p>Already have an account? <a href="/mnsignin">Sign in here</a>.</p>
    </div>
</body>
</html>
