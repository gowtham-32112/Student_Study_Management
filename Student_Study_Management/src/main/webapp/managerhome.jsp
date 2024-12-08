<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manager Home</title>
    <link rel="stylesheet" href="css/managerhome.css" />
    <style>
        /* General styles */
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .logo-header {
            display: flex;
            align-items: center;
            background-color: #000000;
            color: white;
            padding: 15px 30px;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .logo-header img {
            margin-right: 10px;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #76ABAE;
            color: white;    
            display: flex;
            justify-content: space-between;
            padding: 15px 30px;
            position: sticky;
            top: 0;
            z-index: 10;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1rem;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #FFF9BF;
        }

        /* Main container styles */
        .container {
            margin: 30px auto;
            max-width: 800px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        /* Tabs */
        .tabs {
            display: flex;
            justify-content: space-around;
            background-color: #000000;
            color: white;
            padding: 15px 0;
        }

        .tab {
            background-color: #76ABAE;
            cursor: pointer;
            flex: 1;
            text-align: center;
            font-weight: bold;
            padding: 10px;
            transition: background-color 0.3s ease;
        }

        .tab:hover {
            background-color: #FFF9BF;
        }

        .tab-content {
            display: none;
            padding: 20px;
        }

        .tab-content.active {
            display: block;
        }

        /* Form Styles */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        form label {
            font-weight: bold;
        }

        form input[type="text"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        form button {
            background-color: #0047ab;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #00376b;
        }

        /* Review Uploaded Courses */
        #uploadedCourses ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        #uploadedCourses li {
            background-color: #f1f1f1;
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        #uploadedCourses li strong {
            color: #0047ab;
        }
    </style>
</head>
<body>
    <h1 class="logo-header">
        <img src="https://tse4.mm.bing.net/th?id=OIG1.HXrVqPaLSkt68CXw7LN8&pid=ImgGn" class="logo" width="40" height="40">
        <span>FutureTrail</span>
    </h1>
    <!-- Top Navigation Bar -->
    <div class="navbar">
        <div class="navbar-left">
            <a href="/managerhome">Manager Home</a>
        </div>
        <div class="navbar-right">
            <a href="/">Logout</a>
        </div>
    </div>

    <!-- Main Content Area -->
    <div class="container">
        <!-- Tabs for Course Upload and Review -->
        <div class="tabs">
            <div class="tab" onclick="showTab('upload')">Upload Course</div>
            <div class="tab" onclick="showTab('review')">Review Uploads</div>
        </div>

        <!-- Course Upload Section -->
        <div id="upload" class="tab-content active">
            <h2>Upload Course Material</h2>
            <form id="uploadForm" onsubmit="uploadCourse(event)">
                <label for="courseName">Course Name:</label>
                <input type="text" id="courseName" name="courseName" placeholder="Enter Course Name" required />
                <label for="courseLink">Course Link (URL):</label>
                <input type="text" id="courseLink" name="courseLink" placeholder="Enter Course URL" required />
                <button type="submit">Upload Course</button>
            </form>
        </div>

        <!-- Review Uploads Section -->
        <div id="review" class="tab-content">
            <h2>Uploaded Courses</h2>
            <div id="uploadedCourses">
                <ul id="coursesList">
                    <!-- Dynamically added uploaded course items will appear here -->
                </ul>
            </div>
        </div>
    </div>

    <!-- JavaScript for Tabs and Upload Logic -->
    <script>
        function showTab(tabName) {
            const tabs = document.querySelectorAll('.tab-content');
            tabs.forEach(tab => {
                tab.classList.remove('active');
            });
            document.getElementById(tabName).classList.add('active');
        }

        function uploadCourse(event) {
            event.preventDefault(); // Prevent form submission

            const courseName = document.getElementById('courseName').value;
            const courseLink = document.getElementById('courseLink').value;

            if (courseName && courseLink) {
                // Add uploaded course to the list
                const courseList = document.getElementById('coursesList');
                const listItem = document.createElement('li');
                listItem.innerHTML = `
                    <strong>Course Name:</strong> ${courseName}<br />
                    <strong>Course Link:</strong> <a href="${courseLink}" target="_blank">${courseLink}</a>
                `;
                courseList.appendChild(listItem);

                // Reset form and switch to review tab
                document.getElementById('uploadForm').reset();
                showTab('review');
            } else {
                alert('Please provide both a course name and a link.');
            }
        }
    </script>
</body>
</html>
