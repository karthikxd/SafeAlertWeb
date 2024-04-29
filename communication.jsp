<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Communication - SafeAlertWeb</title>
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
        .message-container {
            margin-top: 50px;
            text-align: left;
        }
        .message {
            background-color: rgba(255, 255, 255, 0.3);
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .whatsapp-button {
            background-color: #25d366;
        }
        .whatsapp-button:hover {
            background-color: #128c7e;
        }
        .interaction-button {
            background-color: #007bff;
        }
        .interaction-button:hover {
            background-color: #0056b3;
        }
        .message-sent-alert {
            color: #28a745;
            font-weight: bold;
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
        <h2>Disaster Communication</h2>
        <div class="form-container">
            <h3>Send Message</h3>
            <form action="sendMessageServlet" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit">Send</button>
            </form>
        </div>
    </div>
</section>
<section class="message-container">
    <div class="container">
    </div>
</section>
<section class="additional-features">
    <div class="container">
        <h2>Additional Features</h2>
        <button class="whatsapp-button" onclick="openWhatsAppWeb()">Open WhatsApp Web</button>
        <button class="interaction-button" onclick="connectToInteraction()">Connect to Interaction</button>
        <p class="message-sent-alert" id="messageSentAlert" style="display: none;">Message sent successfully!</p>
    </div>
</section>
<script>
    function openWhatsAppWeb() {
        window.open('https://web.whatsapp.com/', '_blank');
    }

    function connectToInteraction() {
        alert('Connected to Interaction!');
    }
</script>
</body>
</html>
