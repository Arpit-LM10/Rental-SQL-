CREATE DATABASE  rentiq;
USE Rentiq;
 CREATE TABLE owners(
owners_id INT AUTO_INCREMENT PRIMARY KEY ,
owners_name VARCHAR(100) NOT NULL ,
email VARCHAR(100) NOT NULL  UNIQUE,
phone VARCHAR(20) NOT NULL UNIQUE,
city VARCHAR(50) NOT NULL ,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO owners(owners_name , email , phone , city )
VALUES ('Aarav Mehta', 'aarav.mehta@example.com', '+919876500101', 'Mumbai'),
('Neha Shah', 'neha.shah@example.com', '+919876500102', 'Thane'),
('Rohan Kulkarni', 'rohan.kulkarni@example.com', '+919876500103', 'Pune'),
('Priya Nair', 'priya.nair@example.com', '+919876500104', 'Navi Mumbai'),
('Kabir Desai', 'kabir.desai@example.com', '+919876500105', 'Mira Road');
