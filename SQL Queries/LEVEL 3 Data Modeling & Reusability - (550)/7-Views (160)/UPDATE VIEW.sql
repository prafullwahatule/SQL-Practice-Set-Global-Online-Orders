-- =============================================
-- UPDATE VIEW
-- Definition:
-- UPDATE VIEW is used to modify data in an underlying table through a view.
-- It allows updating specific columns while preserving database integrity.
-- =============================================

-- 1. Update a view to increase UnitPrice by 10% for all products.

-- 2. Update a view to set UnitsInStock = 0 for discontinued products.

-- 3. Update a view to set ReorderLevel = 20 where UnitsInStock < 10.

-- 4. Update a view to mark Discontinued = 1 for products with UnitPrice = 0.

-- 5. Update a view to change QuantityPerUnit to '24 bottles' for product 'Chang'.

-- 6. Update a view to increase UnitsOnOrder by 5 for a specific product.

-- 7. Update a view to set UnitPrice = 15 for products in category 'Beverages'.

-- 8. Update a view to set UnitsInStock = UnitsInStock + 10 for all products.

-- 9. Update a view to set Discontinued = 0 for product 'Chef Anton''s Gumbo Mix'.

-- 10. Update a view to round UnitPrice to nearest integer for all products.

-- 11. Update a view to change Country to 'USA' for customers in Mexico.

-- 12. Update a view to set PostalCode = '00000' for missing postal codes.

-- 13. Update a view to append ' - VIP' to CustomerName of top 10 customers.

-- 14. Update a view to replace Address with 'Not Provided' if NULL.

-- 15. Update a view to set City = 'Unknown' for customers with missing city.

-- 16. Update a view to update ContactName to 'TBD' where blank.

-- 17. Update a view to change Country = 'Germany' for all customers in Berlin.

-- 18. Update a view to prepend 'Mr./Ms.' to ContactName.

-- 19. Update a view to capitalize all CustomerName.

-- 20. Update a view to set PostalCode to numeric only using CAST/CONVERT.

-- 21. Update a view to set LastName = 'Doe' for EmployeeID = 1.

-- 22. Update a view to change FirstName to 'Updated' where LastName = 'Davolio'.

-- 23. Update a view to adjust BirthDate by adding 1 year.

-- 24. Update a view to update FirstName to uppercase.

-- 25. Update a view to update LastName to lowercase.

-- 26. Update a view to add 5 days to BirthDate for all employees.

-- 27. Update a view to change FirstName to 'Senior' for employees born before 1960.

-- 28. Update a view to set LastName = 'Smith' where FirstName = 'Andrew'.

-- 29. Update a view to swap FirstName and LastName in a view.

-- 30. Update a view to truncate BirthDate to year only.

-- 31. Update a view to change Country to 'UK' for suppliers in London.

-- 32. Update a view to set Phone = '(000) 000-0000' for missing numbers.

-- 33. Update a view to replace 'St.' with 'Street' in Address.

-- 34. Update a view to capitalize SupplierName.

-- 35. Update a view to append ' (Preferred)' to SupplierName.

-- 36. Update a view to set City = 'Unknown' where NULL.

-- 37. Update a view to change ContactName = 'TBD' if NULL.

-- 38. Update a view to update PostalCode to '99999' for missing codes.

-- 39. Update a view to prepend 'Supplier-' to SupplierName.

-- 40. Update a view to set Address = CONCAT(Address, ', Updated').

-- 41. Update a view to change ShipperID = 1 for all orders in July 1996.

-- 42. Update a view to set OrderDate = '1996-08-01' for OrderID = 10250.

-- 43. Update a view to increase Quantity by 5 in order_details for ProductID = 11.

-- 44. Update a view to decrease Quantity by 2 in order_details for orders by CustomerID = 34.

-- 45. Update a view to set EmployeeID = 3 for all orders in July 1996.

-- 46. Update a view to change ProductID = 5 for all OrderDetailID > 50.

-- 47. Update a view to increase UnitsOnOrder by 10 via order_details view.

-- 48. Update a view to mark Discontinued = 1 for products in orders older than '1996-07-10'.

-- 49. Update a view to change ShipperID = 2 for orders shipped by Federal Shipping.

-- 50. Update a view to update Quantity to 1 where Quantity is NULL in order_details.
