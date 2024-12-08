<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css" />
    <script>
        // Function to validate password and confirm password
        function validatePasswords() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                document.getElementById("message").innerHTML = "Passwords do not match!";
                document.getElementById("message").style.color = "red";
                return false; // Prevent form submission
            } else {
                document.getElementById("message").innerHTML = "";
                return true; // Allow form submission
            }
        }

        // Function to toggle visibility of password fields
        function togglePasswordVisibility(inputId, toggleIconId) {
            var input = document.getElementById(inputId);
            var icon = document.getElementById(toggleIconId);

            if (input.type === "password") {
                input.type = "text";
                icon.classList.remove("fa-eye-slash");
                icon.classList.add("fa-eye");
            } else {
                input.type = "password";
                icon.classList.remove("fa-eye");
                icon.classList.add("fa-eye-slash");
            }
        }
    </script>
    <style>
        .password-field {
            position: relative;
            display: flex;
            align-items: center;
            margin-top: 20px;
        }
        .password-field input {
            flex: 1;
            padding-right: 30px;
        }
        .password-field .toggle-icon {
            position: absolute;
            right: 10px;
            cursor: pointer;
            font-size: 18px;
            color: #888;
        }
        .password-field .toggle-icon:hover {
            color: #555;
        }
    </style>
    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="signupWindow">
        <div class="signupHeader">Sign Up</div>
        <div class="signupContent">
            <!-- Form submission will call the validatePasswords function -->
            <form action="/signup/save" method="POST" onsubmit="return validatePasswords()">
                <input type="text" name="username" placeholder="Username" required />

                <input type="email" name="email" placeholder="Email" required />

                <!-- Password Field with Toggle Icon -->
                <div class="password-field">
                    <input type="password" id="password" name="password" placeholder="Password" required />
                    <i id="togglePassword" class="fas fa-eye-slash toggle-icon" 
                       onclick="togglePasswordVisibility('password', 'togglePassword')"></i>
                </div>

                <!-- Confirm Password Field with Toggle Icon -->
                <div class="password-field">
                    <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" required />
                    <i id="toggleConfirmPassword" class="fas fa-eye-slash toggle-icon" 
                       onclick="togglePasswordVisibility('confirmPassword', 'toggleConfirmPassword')"></i>
                </div>

                <div style="display: flex; align-items: center; margin-top: 20px;">
                    <input type="checkbox" name="terms" required style="margin-right: 10px;" />
                    <label>I agree to the <a href="/term" target="_blank" style="color: blue; text-decoration: underline;">Terms and Conditions</a></label>
                </div>

                <button class="signupButton" type="submit">Sign Up</button>
            </form>

            <div style="display: block; height: 80px; line-height: 12px">
                <label id="message"></label> <!-- Display messages here -->
            </div>

            <div style="display: block; text-align: center">Already have an account?</div>
            <label class="signinLabel" onClick="location.href='/signin'">SIGN IN NOW</label>
        </div>
    </div>
</body>
</html>
