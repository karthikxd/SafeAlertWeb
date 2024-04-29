-- Create the Safe database
CREATE DATABASE Safe;

-- Use the Safe database
USE Safe;

-- Create the users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Insert sample values into the users table
INSERT INTO users (username, password) VALUES
('user1', 'password1'),
('user2', 'password2'),
('user3', 'password3');

-- Create the evacuation_routes table
CREATE TABLE evacuation_routes (
    route_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    start_location VARCHAR(100) NOT NULL,
    end_location VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    required_resources TEXT NOT NULL
);

-- Insert sample values into the evacuation_routes table
INSERT INTO evacuation_routes (name, start_location, end_location, description, required_resources) VALUES
('Route 1', 'Downtown', 'Nearest shelter', 'Evacuation route from downtown to the nearest shelter', 'Emergency kits, food supplies'),
('Route 2', 'Residential areas', 'Higher ground', 'Evacuation route from residential areas to higher ground', 'First aid kits, water supplies'),
('Route 3', 'Coastal areas', 'Inland shelters', 'Evacuation route from coastal areas to inland shelters', 'Volunteer opportunities');

-- Create the shelter_requests table
CREATE TABLE shelter_requests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(100) NOT NULL,
    contact_info VARCHAR(100) NOT NULL,
    additional_message TEXT
);

-- Insert sample values into the shelter_requests table
INSERT INTO shelter_requests (location, contact_info, additional_message) VALUES
('Location 1', 'Contact info 1', 'Additional message 1'),
('Location 2', 'Contact info 2', 'Additional message 2'),
('Location 3', 'Contact info 3', 'Additional message 3');

-- Create the personalized_recommendations table
CREATE TABLE personalized_recommendations (
    recommendation_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    current_location VARCHAR(100) NOT NULL,
    question TEXT NOT NULL,
    required_resources TEXT NOT NULL
);

-- Insert sample values into the personalized_recommendations table
INSERT INTO personalized_recommendations (name, email, current_location, question, required_resources) VALUES
('John Doe', 'john@example.com', 'Current location 1', 'Question 1', 'Emergency kits, communication devices'),
('Jane Smith', 'jane@example.com', 'Current location 2', 'Question 2', 'First aid supplies, water bottles'),
('Alice Johnson', 'alice@example.com', 'Current location 3', 'Question 3', 'Flashlights, batteries');
