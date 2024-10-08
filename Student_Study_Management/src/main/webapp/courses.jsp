<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Courses</title>
    <link rel="stylesheet" href="css/courses.css" />
</head>
<body>
    <div class="courseContainer">
        <h1>Your Courses</h1>
        
        <div class="courseBox">
            <h2>Web Development</h2>
            <p>Learn how to build websites using HTML, CSS, and JavaScript.</p>
            <div class="progressBar">
                <div class="progress done"></div> <!-- Full bar for completed course -->
            </div>
            <p>Completed</p>
        </div>

        <div class="courseBox">
            <h2>Data Science</h2>
            <p>Dive into data analysis, visualization, and machine learning.</p>
            <div class="progressBar">
                <div class="progress half"></div> <!-- Half bar for in-progress course -->
            </div>
            <p>50% Complete</p>
        </div>

        <div class="courseBox">
            <h2>Artificial Intelligence</h2>
            <p>Explore neural networks, deep learning, and AI algorithms.</p>
            <div class="progressBar">
                <div class="progress"></div> <!-- Empty bar for new course -->
            </div>
            <p>Not Started</p>
        </div>

        <!-- Add more course boxes as needed -->
    </div>
</body>
</html>
