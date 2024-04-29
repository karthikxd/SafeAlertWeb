<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // JDBC Connection
    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish connection to the local MySQL database
        String url = "jdbc:mysql://localhost:3306/SafeAlertDB";
        String dbUsername = "root"; // MySQL root username
        String dbPassword = ""; // MySQL root password, leave empty if no password is set
        conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Prepare statement to insert user into database
        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);

        // Execute the statement
        int rowsAffected = stmt.executeUpdate();

        // Check if registration was successful
        if (rowsAffected > 0) {
            // Registration successful, redirect to login page
            response.sendRedirect("login.jsp?registration=success");
        } else {
            // Registration failed
            response.sendRedirect("register.jsp?registration=failure");
        }
    } catch (ClassNotFoundException | SQLException e) {
        // Handle exceptions
        e.printStackTrace();
        response.sendRedirect("register.jsp?registration=error");
    } finally {
        // Close resources
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
