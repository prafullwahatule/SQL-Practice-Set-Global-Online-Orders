-- =============================================
-- FUNCTION: NULLIF  
-- Definition:
-- NULLIF(expression1, expression2) returns NULL if expression1 equals expression2; otherwise, returns expression1.
-- Example: NULLIF(5, 5) returns NULL, NULLIF(5, 3) returns 5
-- =============================================

-- 1. Return UnitPrice, but NULL if it equals 0.

-- 2. Return UnitsInStock, but NULL if it equals 0.

-- 3. Return UnitsOnOrder, but NULL if it equals 0.

-- 4. Return ReorderLevel, but NULL if it equals 0.

-- 5. Return Discontinued, but NULL if it equals 0.

-- 6. Return PostalCode, but NULL if it equals '00000'.

-- 7. Return Phone, but NULL if it equals 'No Phone'.

-- 8. Return Country, but NULL if it equals 'Unknown'.

-- 9. Return City, but NULL if it equals 'Unknown'.

-- 10. Return CustomerName, but NULL if it equals 'Unknown'.

-- 11. Return ContactName, but NULL if it equals 'No Contact'.

-- 12. Return ProductName, but NULL if it equals 'Unknown Product'.

-- 13. Return CategoryName, but NULL if it equals 'Unknown Category'.

-- 14. Return SupplierName, but NULL if it equals 'Unknown Supplier'.

-- 15. Return ShipperName, but NULL if it equals 'Unknown Shipper'.

-- 16. Return Employee FirstName, but NULL if it equals 'Unknown'.

-- 17. Return Employee LastName, but NULL if it equals 'Unknown'.

-- 18. Return Address, but NULL if it equals 'No Address'.

-- 19. Return OrderDate, but NULL if it equals '1900-01-01'.

-- 20. Return Quantity, but NULL if it equals 0 in order_details.

-- 21. Return CustomerID, but NULL if it equals 0.

-- 22. Return EmployeeID, but NULL if it equals 0.

-- 23. Return ProductID, but NULL if it equals 0.

-- 24. Return SupplierID, but NULL if it equals 0.

-- 25. Return ShipperID, but NULL if it equals 0.

-- 26. Return UnitPrice, but NULL if it equals UnitPrice of another product (self-comparison).

-- 27. Return UnitsInStock, but NULL if it equals UnitsOnOrder.

-- 28. Return concatenated CustomerName + City, but NULL if City = 'Unknown'.

-- 29. Return QuantityPerUnit, but NULL if it equals 'Not Specified'.

-- 30. Return DescriptionText, but NULL if it equals 'No Description'.
