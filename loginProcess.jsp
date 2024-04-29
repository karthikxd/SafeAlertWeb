<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    // Retrieve form data
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // JDBC Connection
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Establish connection to the local MySQL database
        String url = "jdbc:mysql://localhost:3306/SafeAlertDB";
        String dbUsername = "root"; // MySQL root username
        String dbPassword = ""; // MySQL root password, leave empty if no password is set
        conn = DriverManager.getConnection(url, dbUsername, dbPassword);

        // Prepare statement to check user credentials
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);

        // Execute the query
        rs = stmt.executeQuery();

        // Check if user exists and credentials are correct
        if (rs.next()) {
            // User authenticated, set session attribute and redirect to main page
            session.setAttribute("username", username);
            response.sendRedirect("index.jsp");
        } else {
            // Authentication failed, redirect to login page with error message
            response.sendRedirect("login.jsp?error=Invalid credentials");
        }
    } catch (ClassNotFoundException | SQLException e) {
        // Handle exceptions
        e.printStackTrace();
        response.sendRedirect("login.jsp?error=An error occurred");
    } finally {
        // Close resources
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
