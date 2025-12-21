-- =============================================
-- IF…ELSE LOGIC / CONDITIONAL SELECT
-- Procedures using IF…ELSE to return values based on conditions
-- =============================================

-- 1. Create a procedure to check stock of a product (ProductID) and return 'High Stock' if UnitsInStock > 50, else 'Low Stock'.

-- 2. Create a procedure to check if a product is discontinued and return 'Discontinued' or 'Available'.

-- 3. Create a procedure to classify a product as 'Expensive' if UnitPrice > 20, else 'Affordable'.

-- 4. Create a procedure to check supplier’s total products and return 'Top Supplier' if > 5, else 'Normal Supplier'.

-- 5. Create a procedure to classify a customer as 'Active' if they have > 3 orders, else 'New'.

-- 6. Create a procedure to classify a category as 'Popular' if it has > 5 products.

-- 7. Create a procedure to classify an order as 'Complete' if total quantity = 0, else 'Pending'.

-- 8. Create a procedure to classify an employee as 'Veteran' if BirthDate < '1960-01-01', else 'Junior'.

-- 9. Create a procedure to classify a shipper as 'Busy' if they shipped > 10 orders.

-- 10. Create a procedure to check if UnitsOnOrder > 50 and return 'High Demand' or 'Normal Demand'.

-- 11. Create a procedure to classify a customer as 'VIP' if total orders > 10, else 'Regular'.

-- 12. Create a procedure to classify stock value as 'Low Revenue' if < 500, else 'High Revenue'.

-- 13. Create a procedure to check if a product needs restocking (UnitsInStock < ReorderLevel).

-- 14. Create a procedure to classify an order as 'Big Order' if Quantity > 20.

-- 15. Create a procedure to classify a product as 'New' if ProductID > 20.

-- 16. Create a procedure to classify a supplier as 'Prime' if Country = 'USA'.

-- 17. Create a procedure to classify a customer as 'Local' if Country = 'Germany', else 'International'.

-- 18. Create a procedure to classify a product as 'High Price' if UnitPrice > 50.

-- 19. Create a procedure to classify an employee as 'Few Orders' if total handled orders < 5.

-- 20. Create a procedure to classify stock as 'Full Stock' if UnitsInStock >= 100, else 'Partial Stock'.

-- =============================================
-- CONDITIONAL INSERT / UPDATE
-- Procedures using IF…ELSE to insert/update records conditionally
-- =============================================

-- 21. Create a procedure to insert a product only if UnitsInStock > 0, else print a message.

-- 22. Create a procedure to update UnitPrice to 20 if UnitPrice < 20.

-- 23. Create a procedure to update UnitsInStock to 50 if it is less than 50.

-- 24. Create a procedure to insert a customer only if Country = 'Germany'.

-- 25. Create a procedure to insert an order only if CustomerID exists.

-- 26. Create a procedure to update Discontinued to 1 if UnitsInStock = 0.

-- 27. Create a procedure to update ReorderLevel to 10 if UnitsInStock < 10.

-- 28. Create a procedure to insert a supplier only if SupplierName is unique.

-- 29. Create a procedure to update UnitPrice to 0 for discontinued products.

-- 30. Create a procedure to update CustomerName to uppercase if Country = 'USA'.

-- 31. Create a procedure to update UnitsOnOrder to 0 if UnitsInStock > 100.

-- 32. Create a procedure to insert a product only if UnitPrice > 0.

-- 33. Create a procedure to update QuantityPerUnit to ‘Not Specified’ if NULL.

-- 34. Create a procedure to insert a new employee only if BirthDate < '2000-01-01'.

-- 35. Create a procedure to update UnitsInStock to 0 if Discontinued = 1.

-- 36. Create a procedure to update CategoryName to ‘Misc’ if NULL.

-- 37. Create a procedure to insert an order only if ShipperID exists.

-- 38. Create a procedure to update PostalCode to ‘00000’ if NULL.

-- 39. Create a procedure to update UnitsOnOrder to UnitsInStock if NULL.

-- 40. Create a procedure to insert a new product with Discontinued = 0 only if UnitPrice > 10.

-- =============================================
-- CONDITIONAL DELETE / MISC
-- Procedures using IF…ELSE to delete records based on conditions
-- =============================================

-- 41. Create a procedure to delete a product if UnitsInStock = 0.

-- 42. Create a procedure to delete orders if OrderDate < '1996-07-01'.

-- 43. Create a procedure to delete customers if they have no orders.

-- 44. Create a procedure to delete suppliers if they supply no products.

-- 45. Create a procedure to delete order_details if Quantity = 0.

-- 46. Create a procedure to delete employees who are retired (BirthDate < '1950-01-01').

-- 47. Create a procedure to delete products if Discontinued = 1 and UnitsInStock = 0.

-- 48. Create a procedure to delete orders if total quantity < 5.

-- 49. Create a procedure to delete categories if they have no products.

-- 50. Create a procedure to delete shippers if they have shipped no orders.
