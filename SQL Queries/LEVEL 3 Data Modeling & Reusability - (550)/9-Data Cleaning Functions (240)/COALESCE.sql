-- =============================================
-- FUNCTION: COALESCE  
-- Definition:
-- COALESCE(expression1, expression2, ..., expressionN) returns the first non-NULL value among its arguments.
-- Example: COALESCE(NULL, 'Default', 'Other') returns 'Default'
-- =============================================

-- 1. Show customer City, but if it’s NULL, display 'Unknown City'.

-- 2. Show customer PostalCode, but if it’s NULL, display '00000'.

-- 3. Show ContactName, but if NULL, display 'No Contact'.

-- 4. Show product UnitPrice, but if NULL, display 0.

-- 5. Show product UnitsInStock, but if NULL, display 0.

-- 6. Show product UnitsOnOrder, but if NULL, display 0.

-- 7. Show supplier Phone, but if NULL, display 'No Phone'.

-- 8. Show supplier City, but if NULL, display 'Unknown City'.

-- 9. Show employee BirthDate, but if NULL, display '1900-01-01'.

-- 10. Show shipper Phone, but if NULL, display 'No Phone'.

-- 11. Show Address for customers, if NULL display 'No Address'.

-- 12. Show CategoryName, if NULL display 'Unknown Category'.

-- 13. Show DescriptionText, if NULL display 'No Description'.

-- 14. Show Discontinued for products, if NULL display 0.

-- 15. Show ReorderLevel for products, if NULL display 0.

-- 16. Show QuantityPerUnit for products, if NULL display 'Not Specified'.

-- 17. Show customer Country, if NULL display 'Unknown'.

-- 18. Show supplier Country, if NULL display 'Unknown'.

-- 19. Show order ShipperID, if NULL display 1 (default shipper).

-- 20. Show employee LastName, if NULL display 'Unknown LastName'.

-- 21. Show employee FirstName, if NULL display 'Unknown FirstName'.

-- 22. Show OrderDate, if NULL display '1900-01-01'.

-- 23. Show OrderID in order_details, if NULL display 0.

-- 24. Show ProductID in order_details, if NULL display 0.

-- 25. Show Quantity in order_details, if NULL display 1.

-- 26. Show concatenated CustomerName + City, but replace NULLs with 'Unknown'.

-- 27. Show concatenated ProductName + SupplierName, but replace NULLs with 'Unknown'.

-- 28. Show total stock UnitsInStock + UnitsOnOrder, replace NULL with 0.

-- 29. Show UnitPrice, but if NULL replace with average UnitPrice of the category.

-- 30. Show ContactName, if NULL replace with 'Customer Not Available'.
