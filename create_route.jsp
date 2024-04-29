<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Evacuation Route - SafeAlertWeb</title>
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
        .form-group input[type="text"],
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
<section class="form-container">
    <div class="container">
        <h2>Create Evacuation Route</h2>
        <form action="createRouteServlet" method="post">
            <div class="form-group">
                <label for="name">Route Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="startLocation">Start Location</label>
                <input type="text" id="startLocation" name="startLocation" required>
            </div>
            <div class="form-group">
                <label for="endLocation">End Location</label>
                <input type="text" id="endLocation" name="endLocation" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="resources">Required Resources</label>
                <textarea id="resources" name="resources" rows="4" required></textarea>
            </div>
            <button type="submit">Create Route</button>
        </form>
    </div>
</section>
</body>
</html>
