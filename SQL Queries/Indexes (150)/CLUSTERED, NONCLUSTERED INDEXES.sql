-- =============================================
-- CLUSTERED / NONCLUSTERED INDEXES
-- Definition:
-- Clustered Index: Reorganizes the table rows physically based on the key.
-- Nonclustered Index: Creates a separate structure to improve search without changing table order.
-- =============================================

-- 1. Create a clustered index on CustomerID in customers.

-- 2. Create a clustered index on ProductID in products.

-- 3. Create a clustered index on OrderID in orders.

-- 4. Create a clustered index on EmployeeID in employees.

-- 5. Create a clustered index on ShipperID in shippers.

-- 6. Create a clustered index on SupplierID in suppliers.

-- 7. Create a clustered index on CategoryID in categories.

-- 8. Create a nonclustered index on CustomerName in customers.

-- 9. Create a nonclustered index on City in customers.

-- 10. Create a nonclustered index on Country in customers.

-- 11. Create a nonclustered index on UnitPrice in products.

-- 12. Create a nonclustered index on UnitsInStock in products.

-- 13. Create a nonclustered index on Discontinued in products.

-- 14. Create a nonclustered index on OrderDate in orders.

-- 15. Create a nonclustered index on ShipperID in orders.

-- 16. Create a nonclustered index on Quantity in order_details.

-- 17. Create a nonclustered index on ProductID in order_details.

-- 18. Create a clustered index on OrderDetailID in order_details.

-- 19. Create a clustered index on BirthDate in employees.

-- 20. Create a nonclustered index on LastName in employees.

-- 21. Create a nonclustered index on FirstName in employees.

-- 22. Create a clustered index on SupplierID in suppliers.

-- 23. Create a nonclustered index on SupplierName in suppliers.

-- 24. Create a nonclustered index on City in suppliers.

-- 25. Create a clustered index on CategoryID in products.

-- 26. Create a nonclustered index on CategoryName in categories.

-- 27. Create a nonclustered index on DescriptionText in categories.

-- 28. Create a clustered index on CustomerID, OrderID in orders.

-- 29. Create a nonclustered index on UnitPrice, UnitsInStock in products.

-- 30. Create a clustered index on OrderDate, CustomerID in orders.

-- 31. Create a nonclustered index on CustomerName, City in customers.

-- 32. Create a clustered index on OrderDetailID, ProductID in order_details.

-- 33. Create a nonclustered index on SupplierName, City in suppliers.

-- 34. Create a clustered index on ProductID, CategoryID in products.

-- 35. Create a nonclustered index on CustomerID, Country in customers.

-- 36. Create a clustered index on EmployeeID, LastName in employees.

-- 37. Create a nonclustered index on City, Country in customers.

-- 38. Create a clustered index on OrderID, OrderDate in orders.

-- 39. Create a nonclustered index on ProductName, SupplierID in products.

-- 40. Create a clustered index on SupplierID, ProductID in products.

-- 41. Create a nonclustered index on UnitsOnOrder, UnitsInStock in products.

-- 42. Create a clustered index on OrderDate, ShipperID in orders.

-- 43. Create a nonclustered index on CategoryID, SupplierID in products.

-- 44. Create a clustered index on CustomerID, OrderDate, EmployeeID in orders.

-- 45. Create a nonclustered index on UnitPrice, Discontinued in products.

-- 46. Create a clustered index on ProductID, UnitsInStock in products.

-- 47. Create a nonclustered index on PostalCode, City in customers.

-- 48. Create a clustered index on SupplierID, Country in suppliers.

-- 49. Create a nonclustered index on CustomerName, PostalCode in customers.

-- 50. Create a clustered index on OrderID, CustomerID, EmployeeID in orders.
