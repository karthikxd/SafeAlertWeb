<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resources - SafeAlertWeb</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        /* Your CSS styles here */
    </style>
</head>
<body>
<header>
    <!-- Your header content here -->
</header>
<section class="resources">
    <!-- Your resources section content here -->
    <div class="form-container">
        <h3>Request Evacuation Shelter</h3>
        <%
            // Retrieve form data
            String location = request.getParameter("location");
            String contact = request.getParameter("contact");
            String message = request.getParameter("message");

            if (location != null && contact != null && message != null) {
                // JDBC connection parameters
                String jdbcURL = "jdbc:mysql://localhost:3306/SafeAlertDB";
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

                    // Redirect to a success page
                    response.sendRedirect("shelterRequestSuccess.jsp");
                } catch (SQLException | ClassNotFoundException e) {
                    // Handle any errors
                    e.printStackTrace();
                    // Redirect to an error page
                    response.sendRedirect("shelterRequestError.jsp");
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
</section>
</body>
</html>
