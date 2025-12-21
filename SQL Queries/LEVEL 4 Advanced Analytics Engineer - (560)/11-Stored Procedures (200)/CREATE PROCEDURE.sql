-- =============================================
-- CREATE PROCEDURE
-- Definition:
-- CREATE PROCEDURE is used to define a stored procedure that encapsulates SQL statements for reuse.
-- Procedures can have input/output parameters and can perform SELECT, INSERT, UPDATE, DELETE, or complex logic.
-- =============================================

-- 1. Create a procedure to fetch all products from the products table.

-- 2. Create a procedure to fetch all customers from the customers table.

-- 3. Create a procedure to fetch all employees from the employees table.

-- 4. Create a procedure to fetch all orders from the orders table.

-- 5. Create a procedure to fetch all suppliers from the suppliers table.

-- 6. Create a procedure to fetch all categories from the categories table.

-- 7. Create a procedure to fetch all products in a specific category (use a parameter CategoryID).

-- 8. Create a procedure to fetch all orders for a specific customer (parameter CustomerID).

-- 9. Create a procedure to fetch all orders handled by a specific employee (parameter EmployeeID).

-- 10. Create a procedure to fetch all products from a specific supplier (parameter SupplierID).

-- 11. Create a procedure to fetch all products where UnitsInStock < 10.

-- 12. Create a procedure to fetch all products where UnitPrice > 20.

-- 13. Create a procedure to fetch all discontinued products.

-- 14. Create a procedure to fetch total orders per customer.

-- 15. Create a procedure to fetch total quantity sold per product.

-- 16. Create a procedure to fetch orders placed within a specific date range (parameters StartDate and EndDate).

-- 17. Create a procedure to fetch the top 5 most expensive products.

-- 18. Create a procedure to fetch products along with their supplier names (JOIN with suppliers).

-- 19. Create a procedure to fetch orders along with customer names (JOIN with customers).

-- 20. Create a procedure to fetch orders along with employee names (JOIN with employees).

-- 21. Create a procedure to insert a new product into the products table (parameters for all columns except ProductID).

-- 22. Create a procedure to insert a new customer into the customers table.

-- 23. Create a procedure to insert a new order into the orders table.

-- 24. Create a procedure to insert a new supplier into the suppliers table.

-- 25. Create a procedure to update UnitsInStock for a specific product (parameters ProductID and NewStock).

-- 26. Create a procedure to update UnitPrice for a specific product.

-- 27. Create a procedure to update ContactName for a specific customer.

-- 28. Create a procedure to delete a product by ProductID.

-- 29. Create a procedure to delete a customer by CustomerID.

-- 30. Create a procedure to delete an order by OrderID.

-- 31. Create a procedure to fetch customers from a specific country (parameter Country).

-- 32. Create a procedure to fetch products with stock value (UnitPrice * UnitsInStock) greater than a given amount (parameter MinValue).

-- 33. Create a procedure to fetch suppliers who supply more than N products (parameter MinProducts).

-- 34. Create a procedure to fetch orders handled by employees with a specific last name (parameter LastName).

-- 35. Create a procedure to fetch products grouped by category with average UnitPrice.

-- 36. Create a procedure to fetch total units ordered for a specific product.

-- 37. Create a procedure to fetch customers with no orders.

-- 38. Create a procedure to fetch products by partial name match (parameter ProductNamePattern using LIKE).

-- 39. Create a procedure to fetch the top N customers by total orders (parameter TopN).

-- 40. Create a procedure to fetch orders for a specific shipper (parameter ShipperID).

-- 41. Create a procedure to fetch the total stock value per category.

-- 42. Create a procedure to fetch orders with quantity greater than a specific value (parameter MinQuantity).

-- 43. Create a procedure to fetch employees born before a specific date (parameter BirthDate).

-- 44. Create a procedure to fetch orders and their details for a specific customer.

-- 45. Create a procedure to fetch suppliers along with total products supplied.

-- 46. Create a procedure to fetch customers by city and country (parameters City and Country).

-- 47. Create a procedure to fetch products with UnitsOnOrder != 0.

-- 48. Create a procedure to fetch products by multiple categories (parameterized list of CategoryID).

-- 49. Create a procedure to fetch all products with quantity per unit containing a specific keyword (parameter Keyword).

-- 50. Create a procedure to fetch total orders per month for a given year (parameter Year).
