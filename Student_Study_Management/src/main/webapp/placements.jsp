<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Placement Drives</title>
    <link rel="stylesheet" href="css/placements.css">
</head>
<body>

<div class="container">
    <!-- Tabs Section -->
    <div class="tabs">
        <button class="tab active">My Drives</button>
        <button class="tab">All Drives</button>
    </div>

    <!-- Main Content Section -->
    <div class="content">
        <h2>My Drives</h2>
        
        <!-- Filter and Sort Options -->
        <div class="filters">
            <select class="sort-by">
                <option>Sort By</option>
                <option>Date</option>
                <option>Status</option>
            </select>
            <button class="filter-btn">Filters</button>
        </div>

        <!-- No Data Found Placeholder -->
        <div class="no-data">
            <div class="no-data-icon">
                <!-- Icon placeholders -->
                <div class="clipboard"></div>
                <div class="clipboard"></div>
            </div>
            <p>No data found</p>
        </div>
    </div>

    <!-- Summary Section -->
    <div class="summary">
        <h3>Summary</h3>
        <div class="summary-item">
            <span class="icon">★</span>
            <span>No. of Drives</span>
            <span>0</span>
        </div>
        <div class="summary-item">
            <span class="icon">✓</span>
            <span>Placed</span>
            <span>0</span>
        </div>
        <div class="summary-item">
            <span class="icon">⏳</span>
            <span>Waiting</span>
            <span>0</span>
        </div>
        <div class="summary-item">
            <span class="icon">✗</span>
            <span>Rejected</span>
            <span>0</span>
        </div>
    </div>
</div>

</body>
</html>
