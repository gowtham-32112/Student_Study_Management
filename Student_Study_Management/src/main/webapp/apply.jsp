<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Apply for Job</title>
    <link rel="stylesheet" type="text/css" href="css/apply.css">
</head>
<body>
    <div class="apply-container">
        <header>
            <h1>Job Application</h1>
        </header>
        <section>
            <form action="success.jsp" method="post" class="apply-form">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
                
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>
                
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required>
                
                <button type="submit" class="apply-btn" >Apply</button>

            </form>
        </section>
    </div>
</body>
</html>
