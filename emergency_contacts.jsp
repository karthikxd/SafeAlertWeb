<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Emergency Contacts - SafeAlertWeb</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('disaster.jpg');
            background-size: cover;
            background-position: center;
            color: white;
        }
        header {
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        header h1 {
            margin: 0;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .container p {
            margin-bottom: 10px;
        }
        .emergency-contacts {
            margin-top: 50px;
        }
        .emergency-contacts ul {
            list-style-type: none;
            padding: 0;
        }
        .emergency-contacts ul li {
            margin-bottom: 20px;
        }
        .emergency-contacts ul li a {
            background-color: #333;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
        }
        .emergency-contacts ul li a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <h1>SafeAlertWeb</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </nav>
    </div>
</header>
<section class="emergency-contacts">
    <div class="container">
        <h2>Emergency Contacts</h2>
        <p>Here are some important contacts for emergency services:</p>
        <ul>
            <li>Police Department: 911</li>
            <li>Fire Department: 911</li>
            <li>Ambulance Services: 911</li>
            <li><a href="https://www.redcross.org/get-help/disaster-relief-and-recovery-services/find-an-open-shelter.html" target="_blank">Red Cross Shelter Locator</a></li>
            <li><a href="https://discover.pbcgov.org/publicsafety/dem/pages/shelters.aspx" target="_blank">Palm Beach County Shelters</a></li>
            <!-- Add more emergency contacts or links as needed -->
        </ul>
        <p>Download contact list:</p>
        <ul>
            <li><a href="emergency_contacts.csv" download>Download as CSV</a></li>
            <li><a href="emergency_contacts.xlsx" download>Download as Excel</a></li>
            <!-- Provide other file formats as needed -->
        </ul>
    </div>
</section>
</body>
</html>
