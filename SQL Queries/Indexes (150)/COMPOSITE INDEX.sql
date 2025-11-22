-- =============================================
-- COMPOSITE INDEX
-- Definition:
-- A composite index is an index on two or more columns of a table to improve query performance on multiple-column searches.
-- =============================================

-- 1. Create a composite index on CustomerName, City in customers.

-- 2. Create a composite index on Country, City in customers.

-- 3. Create a composite index on CategoryID, SupplierID in products.

-- 4. Create a composite index on UnitsInStock, UnitsOnOrder in products.

-- 5. Create a composite index on UnitPrice, UnitsInStock in products.

-- 6. Create a composite index on OrderDate, CustomerID in orders.

-- 7. Create a composite index on OrderDate, EmployeeID in orders.

-- 8. Create a composite index on CustomerID, EmployeeID in orders.

-- 9. Create a composite index on OrderID, ProductID in order_details.

-- 10. Create a composite index on Quantity, ProductID in order_details.

-- 11. Create a composite index on LastName, FirstName in employees.

-- 12. Create a composite index on City, Country in customers.

-- 13. Create a composite index on SupplierName, City in suppliers.

-- 14. Create a composite index on PostalCode, City in customers.

-- 15. Create a composite index on CategoryName, DescriptionText in categories.

-- 16. Create a composite index on Discontinued, UnitsInStock in products.

-- 17. Create a composite index on OrderDate, ShipperID in orders.

-- 18. Create a composite index on CustomerID, OrderDate in orders.

-- 19. Create a composite index on UnitPrice, ReorderLevel in products.

-- 20. Create a composite index on SupplierID, ProductID in products.

-- 21. Create a composite index on City, ContactName in customers.

-- 22. Create a composite index on Country, CustomerName in customers.

-- 23. Create a composite index on BirthDate, LastName in employees.

-- 24. Create a composite index on Quantity, OrderID in order_details.

-- 25. Create a composite index on UnitsInStock, ReorderLevel in products.

-- 26. Create a composite index on CategoryID, UnitPrice in products.

-- 27. Create a composite index on ShipperName, Phone in shippers.

-- 28. Create a composite index on SupplierName, Country in suppliers.

-- 29. Create a composite index on CustomerID, City in customers.

-- 30. Create a composite index on EmployeeID, LastName in employees.

-- 31. Create a composite index on OrderDate, CustomerID, EmployeeID in orders.

-- 32. Create a composite index on ProductID, CategoryID, SupplierID in products.

-- 33. Create a composite index on UnitsOnOrder, UnitsInStock, ReorderLevel in products.

-- 34. Create a composite index on CustomerID, Country, City in customers.

-- 35. Create a composite index on OrderID, ProductID, Quantity in order_details.

-- 36. Create a composite index on BirthDate, FirstName, LastName in employees.

-- 37. Create a composite index on City, PostalCode, Country in customers.

-- 38. Create a composite index on UnitPrice, UnitsInStock, Discontinued in products.

-- 39. Create a composite index on SupplierID, Country, City in suppliers.

-- 40. Create a composite index on ShipperID, ShipperName in shippers.

-- 41. Create a composite index on CustomerID, OrderDate, ShipperID in orders.

-- 42. Create a composite index on CategoryID, ProductName in products.

-- 43. Create a composite index on City, CustomerName, Country in customers.

-- 44. Create a composite index on OrderID, EmployeeID, CustomerID in orders.

-- 45. Create a composite index on UnitsInStock, UnitsOnOrder, UnitPrice in products.

-- 46. Create a composite index on CustomerID, ContactName, City in customers.

-- 47. Create a composite index on OrderDate, Quantity, ProductID in order_details.

-- 48. Create a composite index on CategoryID, SupplierID, UnitPrice in products.

-- 49. Create a composite index on SupplierID, ProductID, UnitsInStock in products.

-- 50. Create a composite index on CustomerID, Country, PostalCode in customers.
