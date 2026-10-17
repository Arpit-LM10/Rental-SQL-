USE Rentiq;
-- CREATE TABLE PROPERTIES (
-- property_id INT AUTO_INCREMENT PRIMARY KEY ,
-- owners_id INT NOT NULL ,
-- property_title  VARCHAR (120) NOT NULL ,
-- property_type ENUM (
-- 					'Apartment',
--                     'Independent House',
--                     'Studio',
--                     'Villa') NOT NULL ,
-- city VARCHAR(50),
-- locality VARCHAR(50) NOT NULL ,
-- bedrooms TINYINT UNSIGNED NOT NULL , 
-- monthly_rent DECIMAL(10,2) NOT NULL ,
-- furnishing_Status  ENUM (
--         'Unfurnished',
--         'Semi-Furnished',
--         'Furnished'
--     ) NOT NULL,
--     availability_status ENUM(
--         'Available',
--         'Rented',
--         'Under Maintenance'
--     ) DEFAULT 'Available',

--     FOREIGN KEY (owners_id)
--         REFERENCES Owners(owners_id)
--         ON DELETE RESTRICT
--         ON UPDATE CASCADE
-- );
INSERT INTO Properties
(ownerS_id, property_title, property_type, city, locality,
 bedrooms, monthly_rent, furnishing_status, availability_status)
VALUES
(1, 'Sea View Apartment', 'Apartment', 'Mumbai', 'Andheri West', 2, 35000, 'Furnished', 'Available'),
(1, 'Compact City Home', 'Apartment', 'Mumbai', 'Goregaon East', 1, 22000, 'Semi-Furnished', 'Rented'),
(2, 'Thane Family Flat', 'Apartment', 'Thane', 'Hiranandani Estate', 3, 42000, 'Furnished', 'Available'),
(2, 'Budget Studio', 'Studio', 'Thane', 'Majiwada', 1, 14000, 'Unfurnished', 'Available'),
(3, 'Pune Green Residency', 'Apartment', 'Pune', 'Wakad', 2, 26000, 'Semi-Furnished', 'Rented'),
(3, 'Pune Independent Home', 'Independent House', 'Pune', 'Baner', 3, 48000, 'Furnished', 'Available'),
(4, 'Navi Mumbai Comfort', 'Apartment', 'Navi Mumbai', 'Nerul', 2, 28000, 'Furnished', 'Under Maintenance'),
(5, 'Mira Road Family Flat', 'Apartment', 'Mira Road', 'Shanti Nagar', 2, 19000, 'Semi-Furnished', 'Available'),
(4, 'Premium Navi Mumbai Villa', 'Villa', 'Navi Mumbai', 'Kharghar', 4, 65000, 'Furnished', 'Available'),
(5, 'Mira Road Studio', 'Studio', 'Mira Road', 'Bhayandar East', 1, 12000, 'Unfurnished', 'Rented');

SELECT  * FROM Properties ;