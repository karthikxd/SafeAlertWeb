<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resources - SafeAlertWeb</title>
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
        .resources {
            margin-top: 50px;
        }
        .resources ul {
            list-style-type: none;
            padding: 0;
        }
        .resources ul li {
            margin-bottom: 20px;
        }
        .resources ul li a {
            background-color: #333;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
        }
        .resources ul li a:hover {
            background-color: #555;
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
<section class="resources">
    <div class="container">
        <h2>Resources</h2>
        <p>Explore the available resources to assist you during a disaster:</p>
        <ul>
            <li><a href="emergency_contacts.jsp">Emergency Contacts</a></li>
            <li><a href="first_aid_kits.jsp">First Aid Kits</a></li>
            <li><a href="food_supplies.jsp">Food Supplies</a></li>
            <li><a href="water_supplies.jsp">Water Supplies</a></li>
            <li><a href="volunteer_opportunities.jsp">Volunteer Opportunities</a></li>
        </ul>
        <div class="form-container">
            <h3>Request Evacuation Shelter</h3>
            <%
                // Retrieve form data
                String location = request.getParameter("location");
                String contact = request.getParameter("contact");
                String message = request.getParameter("message");

                if (location != null && contact != null && message != null) {
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
                        String sql = "INSERT INTO shelter_requests (location, contact_info, additional_message) VALUES (?, ?, ?)";
                        statement = connection.prepareStatement(sql);
                        statement.setString(1, location);
                        statement.setString(2, contact);
                        statement.setString(3, message);

                        // Execute the SQL statement
                        statement.executeUpdate();

                        // Display confirmation message using JavaScript
                        out.println("<script>alert('Request sent successfully!');</script>");

                        // Redirect to a success page
                        response.sendRedirect("success.jsp");
                    } catch (SQLException | ClassNotFoundException e) {
                        // Handle any errors
                        e.printStackTrace();
                        // Redirect to an error page
                        response.sendRedirect("error.jsp");
                    } finally {
                        // Close JDBC objects
                        try { if (statement != null) statement.close(); } catch (Exception e) {}
                        try { if (connection != null) connection.close(); } catch (Exception e) {}
                    }
                }
            %>
            <form action="resources.jsp" method="post">
                <!-- Your form fields here -->
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" id="location" name="location" required>
                </div>
                <div class="form-group">
                    <label for="contact">Contact Info</label>
                    <input type="text" id="contact" name="contact" required>
                </div>
                <div class="form-group">
                    <label for="message">Additional Message</label>
                    <textarea id="message" name="message" rows="4"></textarea>
                </div>
                <button type="submit">Request Shelter</button>
            </form>
        </div>
    </div>
</section>
</body>
</html>
