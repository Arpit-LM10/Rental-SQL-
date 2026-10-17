USE Rentiq;
CREATE TABLE payments (
payment_id INT AUTO_INCREMENT PRIMARY KEY ,
lease_id INT NOT NULL,
billing_month DATE NOT NULL,
due_date DATE NOT NULL,
amount_due DECIMAL(10,2) NOT NULL,
amount_paid DECIMAL(10,2) NOT NULL DEFAULT 0.00,
payment_status ENUM('Paid','Pending','Partial','Late'),
payment_method ENUM('UPI','Card','Cash','Bank Transfer'),
paid_date DATE,
UNIQUE (lease_id,billing_month),
FOREIGN KEY (lease_id)
	REFERENCES lease(lease_id)
);

INSERT INTO payments(lease_id , billing_month , due_date , amount_due,amount_paid , payment_status,payment_method,paid_date)
VALUES
(1, '2025-11-01', '2025-11-05', 35000, 35000, 'Paid', 'UPI', '2025-11-03'),
(2, '2026-08-01', '2026-08-05', 22000, 22000, 'Paid', 'Bank Transfer', '2026-08-04'),
(2, '2026-09-01', '2026-09-05', 22000, 0, 'Late', NULL, NULL),
(3, '2026-02-01', '2026-02-05', 42000, 42000, 'Paid', 'UPI', '2026-02-03'),
(4, '2026-07-01', '2026-07-05', 26000, 13000, 'Partial', 'UPI', '2026-07-04'),
(5, '2025-10-01', '2025-10-05', 48000, 48000, 'Paid', 'Bank Transfer', '2025-10-03'),
(6, '2026-03-01', '2026-03-05', 19000, 19000, 'Paid', 'UPI', '2026-03-04'),
(7, '2025-08-01', '2025-08-05', 65000, 65000, 'Paid', 'Bank Transfer', '2025-08-02'),
(8, '2026-09-01', '2026-09-05', 12000, 0, 'Late', NULL, NULL),
(8, '2026-10-01', '2026-10-05', 12000, 12000, 'Paid', 'UPI', '2026-10-04');

SELECT * FROM payments;