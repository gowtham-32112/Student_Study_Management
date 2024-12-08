<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Study Portal</title>
    <!-- Link to the external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
    <header class="header">
        <div class="container">
        
            <h1 class="logo-header">
            	<img src="https://tse4.mm.bing.net/th?id=OIG1.HXrVqPaLSkt68CXw7LN8&pid=ImgGn" class="logo" width="40" height="40">
            	<span>FutureTrail</span>
            </h1>
            <nav>
                <ul class="nav-links">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#courses">Courses</a></li>
                    
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="/signup">Register</a></li>
                    or
                    <li><a href="/signin">Signin</a></li>
                    
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section id="home" class="section hero">
        <div class="container">
            <h2>Welcome to the Student Career Portal</h2>
            <p>FutureTrail will Give Opportunity to Make your Career Better!</p>
            <a href="/mnsignup">Are You a Manager?</a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section about">
        <div class="container">
            <h1>About Us</h1>
            <h3><p>Welcome to <b>FutureTrail</b></h3> </br>Your ultimate destination for bridging the gap between education and employment. We are dedicated to empowering students by providing a platform that connects them with real-world career opportunities and job placements tailored to their aspirations.

						</br><b><h4>Our mission is to:</h4></b>
						
						</br><b>Guide Students:</b> Help them navigate their career paths with expert insights, resources, and tools.
						</br><b>Empower Growth:</b> Foster skill development through internships, workshops, and training programs.
						</br><b>Create Connections:</b> Collaborate with leading organizations to bring a variety of job opportunities right to our platform.
						</br>At <b>FutureTrail</b>, we understand the challenges students face in transitioning from academics to professional life. Our innovative system offers personalized job recommendations, resume-building tools, and resources to ensure students are well-prepared for their careers.
						
						Whether you're looking to kickstart your career, discover your passion, or find your dream job, we're here to support you every step of the way. Together, let's turn ambitions into achievements.
						
			</p>
        </div>
    </section>

    <!-- Courses Section -->
    <section id="courses" class="section courses">
        <div class="container">
            <h2>Courses</h2>
            <div class="course-cards">
                <div class="course-card">
                    <h3>JAVA FULL STACK DEVELOPMENT</h3>
                    <p>Java is a popular programming language used for a wide range of applications</p>
                </div>
                <div class="course-card">
                    <h3>PYTHON</h3>
                    <p>Python is used to develop websites and web applications. Python frameworks like Django and Flask can help developers quickly build secure and maintainable websites. </p>
                </div> 	
                <div class="course-card">
                    <h3>HTML/CSS</h3>
                    <p>CSS is used to style and layout web pages for example, to alter the font, color, size, and spacing of your content, split it into multiple columns, or add animations and other decorative features.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Resources Section -->
    <section id="resources" class="section resources">
        <div class="container">
            <h2>Resources</h2>
            <ul>
                <li>Download lecture notes</li>
                <li>Access e-books and articles</li>
                <li>Practice with quizzes and mock exams</li>
            </ul>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section contact">
        <div class="container">
            <h2>Contact Us</h2>
            <form action="/submitContact" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit" class="cta-btn">Send Message</button>
            </form>
        </div>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Student Study Portal. All rights reserved.</p>
    </footer>
</body>
</html>
