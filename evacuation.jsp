<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Evacuation Routes - SafeAlertWeb</title>
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
        .container ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .container ul li {
            margin-bottom: 10px;
        }
        .form-container {
            margin-top: 50px;
        }
        .form-container form {
            display: inline-block;
            text-align: left;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        button[type="submit"] {
            background-color: #333;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
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
    <section class="container">
        <h2>Evacuation Routes</h2>
        <p>Below are the available evacuation routes and guidelines for safe evacuation:</p>
        <ul>
            <li>Route 1: From downtown to the nearest shelter</li>
            <li>Route 2: From residential areas to higher ground</li>
            <li>Route 3: From coastal areas to inland shelters</li>
        </ul>
        <p>Please follow the instructions provided by authorities and evacuate safely.</p>
    </section>
    <section class="form-container">
        <div class="container">
            <h2>Request Evacuation Route</h2>
            <form action="requestRouteServlet" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="question">Question</label>
                    <textarea id="question" name="question" rows="4" required></textarea>
                </div>
                <div class="form-group">
                    <label for="photos">Photos</label>
                    <input type="file" id="photos" name="photos" multiple>
                </div>
                <div class="form-group">
                    <label for="resources">Required Resources</label>
                    <textarea id="resources" name="resources" rows="4" required></textarea>
                </div>
                <button type="submit">Submit</button>
            </form>
        </div>
    </section>
</body>
</html>
