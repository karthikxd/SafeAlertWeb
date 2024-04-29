<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SafeAlert Recommendations - SafeAlertWeb</title>
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
        .recommendations {
            margin-top: 50px;
        }
        .recommendations form {
            display: inline-block;
            text-align: left;
        }
        .recommendations .form-group {
            margin-bottom: 20px;
        }
        .recommendations .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .recommendations .form-group input[type="text"], 
        .recommendations .form-group textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .recommendations button[type="submit"] {
            background-color: #333;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .recommendations button[type="submit"]:hover {
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
        <h2>Safety Recommendations</h2>
        <p>Here are some safety recommendations and resources to help you stay safe during disasters:</p>
        <ul>
            <li>Stay informed about local alerts and evacuation orders.</li>
            <li>Prepare an emergency kit with essential supplies.</li>
            <li>Have a communication plan with your family and loved ones.</li>
            <li>Follow evacuation routes provided by authorities.</li>
            <li>Seek shelter in designated safe locations.</li>
        </ul>
        <p>For personalized safety recommendations, please fill out the form below:</p>
    </section>
    <section class="recommendations">
        <div class="container">
            <h2>Personalized Recommendations</h2>
            <%-- JDBC code to insert data into the database --%>
            <%
                if (request.getMethod().equalsIgnoreCase("post")) {
                    // Retrieve form data
                    String name = request.getParameter("name");
                    String email = request.getParameter("email");
                    String location = request.getParameter("location");
                    String question = request.getParameter("question");
                    String resources = request.getParameter("resources");

                    // JDBC connection parameters
                    String jdbcURL = "jdbc:mysql://localhost:3306/Safe";
                    String dbUsername = "root";
                    String dbPassword = "";

                    Connection connection = null;
                    PreparedStatement statement = null;

                    try {
                        // Connect to the database
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

                        // Prepare SQL statement
                        String sql = "INSERT INTO personalized_recommendations (name, email, current_location, question, required_resources) VALUES (?, ?, ?, ?, ?)";
                        statement = connection.prepareStatement(sql);
                        statement.setString(1, name);
                        statement.setString(2, email);
                        statement.setString(3, location);
                        statement.setString(4, question);
                        statement.setString(5, resources);

                        // Execute the SQL statement
                        statement.executeUpdate();

                        // Redirect to a success page
                        response.sendRedirect("success1.jsp");
                    } catch (SQLException | ClassNotFoundException e) {
                        // Redirect to an error page
                        response.sendRedirect("error1.jsp");
                    } finally {
                        // Close JDBC objects
                        try { if (statement != null) statement.close(); } catch (Exception e) {}
                        try { if (connection != null) connection.close(); } catch (Exception e) {}
                    }
                }
            %>
            <form method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="location">Current Location</label>
                    <input type="text" id="location" name="location" required>
                </div>
                <div class="form-group">
                    <label for="question">Question</label>
                    <textarea id="question" name="question" rows="4" required></textarea>
                </div>
                <div class="form-group">
                    <label for="resources">Required Resources</label>
                    <textarea id="resources" name="resources" rows="4" required></textarea>
                </div>
                <button type="submit">Get Recommendations</button>
            </form>
        </div>
    </section>
</body>
</html>
