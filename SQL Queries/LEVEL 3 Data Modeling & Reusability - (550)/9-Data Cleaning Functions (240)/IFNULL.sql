-- =============================================
-- FUNCTION: IFNULL  
-- Definition:
-- IFNULL(expression, replacement) returns the replacement value if expression is NULL; otherwise, returns expression.
-- Example: IFNULL(NULL, 5) returns 5, IFNULL(10, 5) returns 10
-- =============================================

-- 1. Replace NULL UnitPrice with 0.

-- 2. Replace NULL UnitsInStock with 0.

-- 3. Replace NULL UnitsOnOrder with 0.

-- 4. Replace NULL ReorderLevel with 0.

-- 5. Replace NULL Discontinued with 0.

-- 6. Replace NULL PostalCode with '00000'.

-- 7. Replace NULL Phone with 'No Phone'.

-- 8. Replace NULL Country with 'Unknown'.

-- 9. Replace NULL City with 'Unknown City'.

-- 10. Replace NULL CustomerName with 'Unknown Customer'.

-- 11. Replace NULL ContactName with 'No Contact'.

-- 12. Replace NULL ProductName with 'Unknown Product'.

-- 13. Replace NULL CategoryName with 'Unknown Category'.

-- 14. Replace NULL SupplierName with 'Unknown Supplier'.

-- 15. Replace NULL ShipperName with 'Unknown Shipper'.

-- 16. Replace NULL Employee FirstName with 'Unknown'.

-- 17. Replace NULL Employee LastName with 'Unknown'.

-- 18. Replace NULL Address with 'No Address'.

-- 19. Replace NULL OrderDate with '1900-01-01'.

-- 20. Replace NULL Quantity in order_details with 1.

-- 21. Replace NULL CustomerID with 0.

-- 22. Replace NULL EmployeeID with 0.

-- 23. Replace NULL ProductID with 0.

-- 24. Replace NULL SupplierID with 0.

-- 25. Replace NULL ShipperID with 1.

-- 26. Replace NULL UnitPrice with average price of category.

-- 27. Replace NULL UnitsInStock with UnitsOnOrder.

-- 28. Replace NULL QuantityPerUnit with 'Not Specified'.

-- 29. Replace NULL DescriptionText with 'No Description'.

-- 30. Replace NULL CustomerName + City concatenated with 'Unknown'.
