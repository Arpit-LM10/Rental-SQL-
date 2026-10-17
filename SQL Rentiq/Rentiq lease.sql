USE Rentiq;
-- CREATE TABLE lease(
-- lease_id INT AUTO_INCREMENT PRIMARY KEY ,
-- property_id INT NOT NULL ,
-- buyers_id INT NOT NULL  ,
-- start_date DATE NOT NULL ,
-- end_date DATE NOT NULL ,
-- agreed_monthly_rent DECIMAL(10,2) NOT NULL ,
-- security_deposit DECIMAL(10,2) NOT NULL ,
-- lease_status ENUM('Active','Completed','Terminated')NOT NULL ,
-- FOREIGN KEY (property_id)
-- REFERENCES PROPERTIES(property_id),
-- FOREIGN KEY (buyers_id)
-- REFERENCES buyers(buyers_id)
-- );
-- INSERT INTO lease (property_id , buyers_id , start_date , end_date , agreed_monthly_rent,security_deposit,lease_status)
-- VALUES
-- (1, 4, '2025-01-01', '2025-12-31', 35000, 70000, 'Completed'),
-- (2, 1, '2026-01-01', '2026-12-31', 22000, 44000, 'Active'),
-- (3, 2, '2025-04-01', '2026-03-31', 42000, 84000, 'Completed'),
-- (5, 3, '2026-06-01', '2027-05-31', 26000, 52000, 'Active'),
-- (6, 7, '2025-01-01', '2025-12-31', 48000, 96000, 'Completed'),
-- (8, 6, '2025-05-01', '2026-04-30', 19000, 38000, 'Completed'),
-- (9, 5, '2024-11-01', '2025-10-31', 65000, 130000, 'Completed'),
-- (10, 8, '2026-04-01', '2027-03-31', 12000, 24000, 'Active');


-- SELECT * FROM owners;
-- SELECT * FROM properties;
-- SELECT * FROM buyers;
-- SELECT * FROM lease;
SELECT
    l.lease_id,
    t.buyers_name,
    p.property_title,
    l.agreed_monthly_rent,
    l.lease_status
FROM lease l
JOIN buyers t
    ON l.buyers_id = t.buyers_id
JOIN Properties p
    ON l.property_id = p.property_id;