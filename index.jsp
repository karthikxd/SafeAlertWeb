<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SafeAlertWeb</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
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
        .hero {
            background-image: url('disaster.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 100px 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            overflow: hidden;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        footer p {
            margin: 5px 0;
        }
        .body-content {
            padding: 50px 0;
        }
        .body-content h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .body-content ul {
            list-style-type: disc;
            margin-left: 20px;
            padding-left: 20px;
        }
        .body-content p {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>SafeAlertWeb</h1>
            <nav>
                <ul>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="alerts.jsp">Alerts</a></li>
                    <li><a href="evacuation.jsp">Evacuation Routes</a></li>
                    <li><a href="recommendations.jsp">Safe Travel</a></li>
                    <li><a href="create_route.jsp">Create Evacuation Route</a></li>
                    <li><a href="resources.jsp">Resources</a></li>
                    <li><a href="communication.jsp">Communication</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="hero">
        <div class="container">
            <h2>Welcome to SafeAlertWeb</h2>
            <p>Empowering communities to stay safe during disasters.</p>
        </div>
    </section>

    <div class="container">
        <section class="body-content">
            <h2>Why Choose SafeAlertWeb?</h2>
            <p>SafeAlertWeb is a reliable and user-friendly platform designed to help communities stay safe during disasters. Here's why you should choose us:</p>
            <ul>
                <li>Receive timely alerts on disasters to keep yourself and your loved ones informed and prepared.</li>
                <li>Access guidance on evacuation routes to ensure safe and efficient evacuation during emergencies.</li>
                <li>Get recommendations for safe travel to navigate through disaster-affected areas with confidence.</li>
                <li>Benefit from early safety notifications to take necessary precautions and stay ahead of potential risks.</li>
            </ul>
            <p>Join SafeAlertWeb today and become part of a community dedicated to disaster readiness and communication!</p>
        </section>
    </div>

    <footer>
        <div class="container">
            <p>SafeAlertWeb - Empowering communities to stay safe during disasters</p>
            <p>Contact us: support@safealertweb.com | Phone: 123-456-7890</p>
        </div>
    </footer>
</body>
</html>
