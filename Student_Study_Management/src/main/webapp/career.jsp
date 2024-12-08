<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Career Opportunities</title>
    <link rel="stylesheet" type="text/css" href="css/career.css">
</head>
<body>
    <div class="career-container">
        

        <!-- Display List of Job Opportunities -->
        <section class="opportunities">
            <h2>Available Opportunities</h2>
            <form action="apply.jsp" method="post" class="applying">
            <div id="jobList">
                <!-- Default Example Job Listings -->
                <article class="job" data-id="job1" data-link="/apply">
                    <h2>Software Engineer</h2>
                    <p><strong>Company:</strong> ABC Tech</p>
                    <p><strong>Location:</strong> New York, USA</p>
                    <p><strong>Details:</strong> We are looking for a skilled software engineer with experience in Java, Spring Boot...</p>
                    <button type="submit" class="apply-btn">Apply Now</button>
                </article>
				
				
                <article class="job" data-id="job2" data-link="/apply">
                    <h2>Data Scientist</h2>
                    <p><strong>Company:</strong> XYZ Analytics</p>
                    <p><strong>Location:</strong> London, UK</p>
                    <p><strong>Details:</strong> Looking for a data scientist proficient in Python, Machine Learning...</p>
                    <button type="submit" class="apply-btn" >Apply Now</button>
                </article>
            </div>
            </form>
        </section>
        
        <!-- Form to Create New Job Opportunities -->
        <section class="create-opportunity">
            <h2>Create New Opportunity</h2>
            <form id="jobForm" onsubmit="addJob(event)">
                <label for="jobTitle">Job Title:</label>
                <input type="text" id="jobTitle" name="jobTitle" required>
                
                <label for="company">Company:</label>
                <input type="text" id="company" name="company" required>
                
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required>
                
                <label for="details">Details:</label>
                <textarea id="details" name="details" rows="4" required></textarea>
                
                <label for="applyLink">Application Link:</label>
                <input type="url" id="applyLink" name="applyLink" required>
                
                <button type="submit">Add Opportunity</button>
            </form>
        </section>
    </div>

    <script>
        // Function to handle the "Apply Now" functionality
        function applyForJob(jobId) {
            // Get the job element
            const job = document.querySelector(`.job[data-id="${jobId}"]`);
            const jobButton = job.querySelector('.apply-btn');
            const applyLink = job.getAttribute('data-link'); // Get the application link

            // If the job is already applied, do nothing
            if (!jobButton || localStorage.getItem(jobId) === 'applied') return;

            // Redirect to the application link
            if (applyLink) {
                window.location.href = applyLink;
            }

            // Mark the job as applied
            jobButton.textContent = "Applied";
            jobButton.disabled = true;
            jobButton.classList.add("applied");

            // Save the applied state to localStorage
            localStorage.setItem(jobId, 'applied');
        }

        // Function to load applied states from localStorage
        function loadAppliedJobs() {
            const jobs = document.querySelectorAll('.job');
            jobs.forEach(job => {
                const jobId = job.getAttribute('data-id');
                const jobButton = job.querySelector('.apply-btn');

                // Check if the job is marked as applied
                if (localStorage.getItem(jobId) === 'applied') {
                    jobButton.textContent = "Applied";
                    jobButton.disabled = true;
                    jobButton.classList.add("applied");
                }
            });
        }

        // Function to add a new job dynamically
        function addJob(event) {
            event.preventDefault(); // Prevent form submission
            
            // Get form values
            const jobTitle = document.getElementById("jobTitle").value;
            const company = document.getElementById("company").value;
            const location = document.getElementById("location").value;
            const details = document.getElementById("details").value;
            const applyLink = document.getElementById("applyLink").value;

            // Generate a unique ID for the new job
            const jobId = `job${Date.now()}`;

            // Create a new job entry
            const jobList = document.getElementById("jobList");
            const job = document.createElement("article");
            job.classList.add("job");
            job.setAttribute("data-id", jobId);
            job.setAttribute("data-link", applyLink); // Store the application link
            job.innerHTML = ` 
                <h2>${jobTitle}</h2>
                <p><strong>Company:</strong> ${company}</p>
                <p><strong>Location:</strong> ${location}</p>
                <p><strong>Details:</strong> ${details}</p>
                <button class="apply-btn" onclick="applyForJob('${jobId}')">Apply Now</button>
            `;

            // Add the new job to the list
            jobList.appendChild(job);

            // Clear the form
            document.getElementById("jobForm").reset();
        }

        // Load applied jobs when the page is loaded
        window.onload = loadAppliedJobs;
    </script>
</body>
</html>
	