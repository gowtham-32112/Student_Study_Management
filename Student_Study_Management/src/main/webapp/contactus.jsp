<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="css/contactus.css">
</head>
<body>
    <div class="contact-container">
        <header>
            <h1>Contact Us</h1>
            <p>We'd love to hear from you! Please fill out the form below to get in touch.</p>
        </header>

        <section class="contact-form">
            <form action="/submitContact" method="post">
                <div class="form-group">
                    <label for="name">Full Name*</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address*</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>

                <div class="form-group">
                    <label for="message">Message*</label>
                    <textarea id="message" name="message" placeholder="Write your message here" rows="6" required></textarea>
                </div>

                <div class="form-group">
                    <button type="submit" class="submit-button">Send Message</button>
                </div>
            </form>
        </section>

        <footer class="contact-footer">
            <p>If you prefer, you can also reach us at: <strong>contact@company.com</strong></p>
            <p>Or call us at: <strong>+1-800-555-1234</strong></p>
        </footer>
    </div>
</body>
</html>
