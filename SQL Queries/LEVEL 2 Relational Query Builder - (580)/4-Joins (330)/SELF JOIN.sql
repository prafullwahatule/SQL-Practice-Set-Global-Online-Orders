-- =============================================
-- SQL SELF JOIN Practice
-- Using: SELF JOIN to compare rows within the same table
-- =============================================

-- 1. Find employees who share the same birth year
SELECT
    E1.EmployeeID AS Emp1_ID,
    E1.FirstName  AS Emp1_Name,
    E2.EmployeeID AS Emp2_ID,
    E2.FirstName  AS Emp2_Name,
    YEAR(E1.BirthDate) AS BirthYear
FROM employees E1
JOIN employees E2
ON YEAR(E1.BirthDate) = YEAR(E2.BirthDate)
AND E1.EmployeeID <> E2.EmployeeID;

-- 2. List employees whose birth year is earlier than another employee’s birth year

-- 3. Find employees whose last name starts with the same letter as another employee

-- 4. Show pairs of employees where one has handled more orders than the other

-- 5. List employees who are older than at least one other employee

-- 6. Find employees and other employees born in the same month

-- 7. Show employees whose first name matches another employee’s first name

-- 8. Find customers living in the same city as another customer

-- 9. List customers whose postal code matches another customer

-- 10. Find suppliers located in the same country as another supplier

-- 11. Show products supplied by the same supplier

-- 12. Find products in the same category with higher UnitPrice than another product

-- 13. List products that have the same UnitsInStock as another product

-- 14. Find orders placed by different customers on the same date

-- 15. Show orders handled by different employees on the same date

-- 16. List customers and other customers from the same city but different countries

-- 17. Find suppliers with the same phone number as another supplier (if duplicates exist)

-- 18. Show employees whose birth month and day match another employee

-- 19. List products where UnitsOnOrder matches another product’s UnitsOnOrder

-- 20. Find orders that have the same CustomerID and ShipperID as another order

-- 21. Show employees whose LastName and FirstName match another employee

-- 22. Find customers in the same city with different CustomerIDs

-- 23. List suppliers in the same city and country as another supplier

-- 24. Show products in the same category where UnitPrice is less than another product

-- 25. Find order_details where Quantity matches another order_detail’s Quantity

-- 26. List employees with fewer orders than another employee

-- 27. Show customers who share the same postal code with another customer

-- 28. Find suppliers whose products belong to the same category as another supplier’s products

-- 29. List products supplied by different suppliers but belonging to the same category

-- 30. Show orders placed on the same date by different employees for the same customer
