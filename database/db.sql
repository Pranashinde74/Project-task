CREATE DATABASE SciAstraDB;

USE SciAstraDB;

CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content TEXT,
    publish_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    discounted_price DECIMAL(10, 2)
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount_paid DECIMAL(10, 2),
    payment_method VARCHAR(50)
);
