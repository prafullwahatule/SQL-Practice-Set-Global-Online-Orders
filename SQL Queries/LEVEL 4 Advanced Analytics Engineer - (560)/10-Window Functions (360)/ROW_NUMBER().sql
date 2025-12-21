-- =============================================
-- WINDOW FUNCTION: ROW_NUMBER()
-- Assigning unique row numbers based on various orderings and partitions
-- =============================================

-- 1. Assign a row number to each order based on OrderDate (earliest first).

-- 2. For each customer, assign row numbers to their orders sorted by OrderDate.

-- 3. For each employee, number their orders by OrderAmount (highest first).

-- 4. For each category, assign row numbers to products sorted by UnitPrice (highest to lowest).

-- 5. For each product, assign row numbers to order_details sorted by Quantity.

-- 6. For each supplier, number products by UnitsInStock (highest first).

-- 7. Assign row numbers to customers sorted by Country and then by CustomerName.

-- 8. For each shipper, number orders sorted by Freight.

-- 9. For each category, number products by UnitsOnOrder.

-- 10. Number employees based on their BirthDate (youngest first).

-- 11. For each city, number customers sorted alphabetically by CustomerName.

-- 12. For each order, assign row numbers to order_details sorted by Quantity (largest first).

-- 13. Number suppliers by CompanyName alphabetically.

-- 14. For each customer, assign row numbers to orders sorted by OrderAmount (highest first).

-- 15. For each employee, number orders by OrderDate (oldest first).

-- 16. For each product, number order_details by discount (if discount exists).

-- 17. For each category, number products by UnitsInStock (lowest first).

-- 18. Number employees by number of orders they handled (requires join + window).

-- 19. For each country, number customers by total orders they placed (requires join).

-- 20. For each supplier, number products by UnitPrice from lowest to highest.

-- 21. For each product, number order_details by OrderID.

-- 22. For each shipper, number orders by OrderDate.

-- 23. Assign row numbers to all categories sorted by CategoryName.

-- 24. For each employee, assign row numbers to orders sorted by total items (sum of quantities).

-- 25. For each customer, assign row numbers to products they ordered ordered by total quantity purchased.

-- 26. For each country, number suppliers alphabetically by supplier name.

-- 27. For each category, number products by value of stock (UnitsInStock * UnitPrice).

-- 28. For customers in the same city, number them by CustomerID.

-- 29. For each employee, number orders by freight cost of the shipped orders.

-- 30. For each supplier, assign row numbers to products based on UnitsOnOrder (highest first).
