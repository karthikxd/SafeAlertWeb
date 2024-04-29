<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Alerts - SafeAlertWeb</title>
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
        .alert {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
        }
        .alert h3 {
            margin: 0;
        }
        .alert p {
            margin-top: 5px;
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
        <h2>Alerts</h2>
        <div class="alert">
            <h3>Alert Title 1</h3>
            <p>Description of the alert goes here. It can be multiple lines long if necessary.</p>
        </div>
        <div class="alert">
            <h3>Alert Title 2</h3>
            <p>Description of the alert goes here. It can be multiple lines long if necessary.</p>
        </div>
        <!-- Add more alerts as needed -->
    </section>
</body>
</html>
