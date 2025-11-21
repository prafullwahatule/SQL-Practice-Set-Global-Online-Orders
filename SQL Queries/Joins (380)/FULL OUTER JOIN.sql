-- =============================================
-- SQL FULL OUTER JOIN Practice
-- Using: FULL OUTER JOIN to include unmatched rows from both tables
-- =============================================

-- 1. List all customers and their orders, including customers with no orders and orders with no customers

-- 2. Show all products and order_details, including products never ordered and order_details with no matching product

-- 3. Display all suppliers and products, including suppliers with no products and products without suppliers

-- 4. List all categories and products, including categories with no products and products without categories

-- 5. Show all employees and orders, including employees with no orders and orders with no employees

-- 6. Retrieve all shippers and orders, including shippers with no orders and orders with no shippers

-- 7. Find all products and categories, including categories with no products and products without category

-- 8. Show all order_details and orders, including orders with no order_details and order_details with no orders

-- 9. List all customers and orders shipped by ShipperID = 1, including customers with no such orders and orders with no customers

-- 10. Display all employees and orders placed in July 1996, including employees with no orders and orders with no employees

-- 11. Find all products and order_details where quantity > 10, including products never ordered and order_details with no product

-- 12. Show all suppliers and products with UnitsInStock > 0, including suppliers with no products and products without suppliers

-- 13. List all customers and products they ordered from CategoryID = 2, including customers who ordered none and products not ordered

-- 14. Display all categories and total products, including categories with zero products and products not belonging to any category

-- 15. Find all employees and total quantity handled, including employees with no orders and order_details with no employees

-- 16. Show all orders and products in order_details, including orders with no products and products never ordered

-- 17. List all suppliers and average UnitPrice of products, including suppliers with no products and products without suppliers

-- 18. Display all customers and total quantity ordered, including customers with no orders and order_details with no customer

-- 19. Find all products and suppliers where Discontinued = 0, including suppliers without products and products without suppliers

-- 20. Show all categories and total UnitsInStock, including categories with no products and products without category

-- 21. List all orders and shippers, including shippers who shipped no orders and orders with no shippers

-- 22. Display all employees and order_details where Quantity >= 20, including employees with no orders and order_details with no employee

-- 23. Find all products and categories where UnitPrice > 20, including categories with no products and products without category

-- 24. Show all suppliers and products in CategoryID = 1, including suppliers with no products and products without suppliers

-- 25. List all customers and orders where UnitPrice > 15, including customers with no orders and orders without customers

-- 26. Display all order_details and orders where OrderID IN (10248, 10250), including orders with no matching details and order_details with no orders

-- 27. Find all employees and orders handled, including employees with zero orders and orders without employees

-- 28. Show all products and total UnitsOnOrder, including products never ordered and order_details with no product

-- 29. List all categories and average UnitPrice of products, including categories with no products and products without category

-- 30. Display all customers and products ordered from SupplierID = 5, including customers with no orders and products never ordered

-- 31. Find all orders and products in order_details where Quantity >= 5, including orders with no matching products and products never ordered

-- 32. Show all suppliers and maximum UnitPrice of their products, including suppliers with no products and products without suppliers

-- 33. List all employees and number of orders placed, including employees with zero orders and orders without employees

-- 34. Display all orders and customer names, including orders with no customer and customers with no orders

-- 35. Find all products and categories where UnitsInStock > 0, including categories with no products and products without category

-- 36. Show all customers and total orders placed in July 1996, including customers with zero orders and orders without customers

-- 37. List all shippers and total orders shipped, including shippers with no orders and orders without shippers

-- 38. Display all products and suppliers where ReorderLevel <= 10, including suppliers with no products and products without suppliers

-- 39. Find all employees and average Quantity per order, including employees with no orders and order_details without employees

-- 40. Show all categories and number of discontinued products, including categories with zero discontinued products and products without category

-- 41. List all order_details and products with ProductID IN (1,5,10), including products never ordered and order_details with no product

-- 42. Display all suppliers and total UnitsInStock, including suppliers with no products and products without suppliers

-- 43. Find all customers and total Quantity for orders with Quantity > 10, including customers with no such orders and order_details with no customer

-- 44. Show all products and total UnitsInStock per category, including categories with zero products and products without category

-- 45. List all orders and total Quantity per order, including orders with no order_details and order_details with no order

-- 46. Display all employees and orders with Quantity > 15, including employees with zero orders and order_details without employees

-- 47. Find all categories and total UnitsOnOrder, including categories with no products and products without category

-- 48. Show all suppliers and products in CategoryID = 2, including suppliers with no products and products without suppliers

-- 49. List all customers and orders along with ShipperID = 3, including customers with no such orders and orders without customers

-- 50. Display all products and suppliers with UnitPrice > 15, including suppliers with no products and products without suppliers
