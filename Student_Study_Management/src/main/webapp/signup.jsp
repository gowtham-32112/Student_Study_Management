<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css" />
</head>
<body>
    <div class="signupWindow">
        <div class="signupHeader">Sign Up</div>
        <div class="signupContent">
            <form action="/signup/save" method="POST">
                <div style="display: block; padding-top: 20px;">Username*</div>
                <input type="text" name="username" required />

                <div style="display: block; padding-top: 20px;">Email*</div>
                <input type="email" name="email" required />

                <div style="display: block; padding-top: 20px;">Password*</div>
                <input type="password" name="password" required />

                <button class="signupButton" type="submit">Sign Up</button>
            </form>

            <div style="display: block; height: 80px; line-height: 12px">
                <label id="message">${message}</label> <!-- Display messages here -->
            </div>

            <div style="display: block; text-align: center">Already have an account?</div>
            <label class="signinLabel" onClick="location.href='/'">SIGN IN NOW</label>
        </div>
    </div>
</body>
</html>
