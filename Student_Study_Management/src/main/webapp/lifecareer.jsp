<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Life & Career</title>
    <link rel="stylesheet" href="css/lifecareer.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .header {
            background-color: #0047ab;
            color: white;
            text-align: center;
            padding: 20px 0;
            font-size: 1.8rem;
            font-weight: bold;
            position: relative;
        }

        /* Go Back Button */
        .go-back {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #ffffff;
            color: #0047ab;
            border: 2px solid #0047ab;
            border-radius: 5px;
            padding: 8px 12px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: bold;
            transition: background-color 0.3s, color 0.3s;
        }

        .go-back:hover {
            background-color: #0047ab;
            color: white;
        }

        /* Tab Navigation */
        .tabs {
            display: flex;
            justify-content: space-around;
            background-color: #00376b;
            color: white;
        }

        .tab {
            padding: 15px 20px;
            cursor: pointer;
            text-align: center;
            font-weight: bold;
            flex: 1;
            transition: background-color 0.3s;
        }

        .tab:hover, .tab.active {
            background-color: #0047ab;
        }

        /* Tab Content */
        .tab-content {
            display: none;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            border-radius: 10px;
            max-width: 800px;
        }

        .tab-content.active {
            display: block;
        }

        /* Other styles omitted for brevity */
    </style>
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        Life & Career
        <button class="go-back" onclick="goBack()">Go Back</button>
    </div>

    <!-- Tab Navigation -->
    <div class="tabs">
        <div class="tab active" onclick="switchTab('passion')">Passion</div>
        <div class="tab" onclick="switchTab('professional')">Professional</div>
        <div class="tab" onclick="switchTab('skills')">Skills</div>
    </div>

    <!-- Tab Contents -->
    <div id="passion" class="tab-content active">
        <h2>Your Passion</h2>
        <div class="form-section">
            <textarea id="passionInput" placeholder="Write your passion here..."></textarea>
            <button onclick="displayText('passionDisplay', 'passionInput')">Submit</button>
        </div>
        <div id="passionDisplay" class="display-section"></div>
    </div>

    <div id="professional" class="tab-content">
        <h2>Your Professional Goals</h2>
        <div class="form-section">
            <textarea id="professionalInput" placeholder="Write your professional goals here..."></textarea>
            <button onclick="displayText('professionalDisplay', 'professionalInput')">Submit</button>
        </div>
        <div id="professionalDisplay" class="display-section"></div>
    </div>

    <div id="skills" class="tab-content">
        <h2>Your Skills</h2>
        <div class="skills-container" id="skillsContainer">
            <!-- Dynamic Skill Entries -->
        </div>
        <button class="add-skill" onclick="addSkillEntry()">Add Skill</button>
    </div>

    <!-- JavaScript -->
    <script>
        function goBack() {
            window.history.back();
        }

        function switchTab(tabId) {
            const tabs = document.querySelectorAll('.tab-content');
            const tabButtons = document.querySelectorAll('.tab');

            tabs.forEach(tab => tab.classList.remove('active'));
            tabButtons.forEach(tab => tab.classList.remove('active'));

            document.getElementById(tabId).classList.add('active');
            document.querySelector(`.tab[onclick="switchTab('${tabId}')"]`).classList.add('active');
        }

        function displayText(displayId, inputId) {
            const text = document.getElementById(inputId).value;
            document.getElementById(displayId).innerText = text;
        }

        function addSkillEntry() {
            const container = document.getElementById('skillsContainer');
            const skillEntry = document.createElement('div');
            skillEntry.classList.add('skill-entry');
            skillEntry.innerHTML = `
                <input type="text" placeholder="Enter skill...">
                <div class="rating">
                    <i class="fas fa-star" onclick="rateSkill(this, 1)"></i>
                    <i class="fas fa-star" onclick="rateSkill(this, 2)"></i>
                    <i class="fas fa-star" onclick="rateSkill(this, 3)"></i>
                    <i class="fas fa-star" onclick="rateSkill(this, 4)"></i>
                    <i class="fas fa-star" onclick="rateSkill(this, 5)"></i>
                </div>
            `;
            container.appendChild(skillEntry);
        }

        function rateSkill(star, rating) {
            const stars = star.parentElement.querySelectorAll('i');
            stars.forEach((s, index) => {
                if (index < rating) {
                    s.classList.add('active');
                } else {
                    s.classList.remove('active');
                }
            });
        }
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
