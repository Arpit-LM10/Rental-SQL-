USE Rentiq;
-- ***** REVENUE PERFORMANCE *******
-- SELECT 
-- SUM(amount_due) AS total_rent_due,
-- SUM(amount_paid) AS total_amount_collected,
-- SUM(amount_due-amount_paid) AS outstanding_amount,
-- ROUND(
-- SUM(amount_paid)*100.0/
-- NULLIF(SUM(amount_due),0),2
-- ) AS collection_percentage 
-- FROM payments;

-- ***** City Wise Rental Analysis  *******
-- SELECT 
-- city,
-- COUNT(*) AS total_properties,
-- ROUND(AVG(monthly_rent),2) AS average_rent,
-- MIN(monthly_rent) AS minimum_rent ,
-- MAX(monthly_rent) AS  maximum_rent
-- FROM properties 
-- GROUP BY city
-- ORDER BY average_rent;

-- ***** Property Availability Analysis  *******
-- SELECT 
-- availability_status ,
-- COUNT(*) AS total_properties ,
-- ROUND(AVG(monthly_rent),2) AS average_listed_rent,
-- SUM(monthly_rent) AS total_monthly_listed_rent
-- FROM properties 
-- GROUP BY availability_status
-- ORDER BY total_properties DESC;

-- ***** Payment Status Analysis  *******
-- SELECT 
-- payment_status,
-- COUNT(*) AS payment_records ,
-- SUM(amount_due) AS total_billed , 
-- SUM(amount_paid) AS total_collected,
-- SUM(amount_due-amount_paid) AS outstanding_amount
-- FROM payments
-- GROUP BY payment_status
-- ORDER BY outstanding_amount DESC;


-- ***** Owners Report   *******

-- SELECT 
-- o.owners_id,
-- o.owners_name,

-- COUNT(p.property_id) AS total_properties,
-- ROUND(AVG(monthly_rent),2) AS avg_monthly_earning,
-- MAX(monthly_rent) AS maximum_earning_through_rent,
-- SUM(
-- 	CASE
-- 		WHEN p.availability_status='Available' THEN 1 
--         ELSE 0 
-- 	END
-- ) AS avaiable_properties
-- FROM owners o 
-- LEFT JOIN properties p
-- ON o.owners_id=p.owners_id
-- GROUP BY o.owners_id,o.owners_name
-- ORDER BY total_properties DESC , avg_monthly_earning DESC;

-- STEP 17: Buyer Lease Summary

-- SELECT
--     b.buyers_id,
--     b.buyers_name,
--     COUNT(l.lease_id) AS total_leases,
--     SUM(
--         CASE
--             WHEN l.lease_status = 'Active' THEN 1
--             ELSE 0
--         END
--     ) AS active_leases,
--     SUM(
--         CASE
--             WHEN l.lease_status = 'Active'
--             THEN l.agreed_monthly_rent
--             ELSE 0
--         END
--     ) AS active_monthly_rent
-- FROM buyers b
-- LEFT JOIN lease l
--     ON b.buyers_id = l.buyers_id
-- GROUP BY b.buyers_id, b.buyers_name
-- ORDER BY active_monthly_rent DESC;

-- STEP 16: Top 3 Properties in Each City

-- WITH ranked_properties AS (
--     SELECT
--         property_id,
--         property_title,
--         city,
--         monthly_rent,
--         ROW_NUMBER() OVER (
--             PARTITION BY city
--             ORDER BY monthly_rent DESC, property_id
--         ) AS rent_rank
--     FROM Properties
-- )
-- SELECT
--     city,
--     rent_rank,
--     property_title,
--     monthly_rent
-- FROM ranked_properties
-- WHERE rent_rank <= 3
-- ORDER BY city, rent_rank;

-- STEP 20A: Database Record Count

-- SELECT 'Owners' AS table_name, COUNT(*) AS total_records
-- FROM owners

-- UNION ALL

-- SELECT 'Buyers', COUNT(*)
-- FROM buyers

-- UNION ALL

-- SELECT 'Properties', COUNT(*)
-- FROM Properties

-- UNION ALL

-- SELECT 'Leases', COUNT(*)
-- FROM lease

-- UNION ALL

-- SELECT 'Payments', COUNT(*)
-- FROM Payments;



