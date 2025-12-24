-- =============================================
-- SQL INNER JOIN Practice
-- Using: INNER JOIN to include only matching rows
-- =============================================

-- 1. List all orders along with customer names
SELECT
    o.OrderID,
    c.CustomerID,
    c.ContactName
FROM customers c
INNER JOIN orders o
    ON c.CustomerID = o.CustomerID;

-- 2. Retrieve order details with product names

-- 3. Show products with their supplier names

-- 4. List orders with employee names who placed them

-- 5. Find all orders with shipper names

-- 6. Display products along with category names

-- 7. Get order details with corresponding order dates

-- 8. Find customers and the total orders they have placed

-- 9. Show employees along with their orders

-- 10. List products and order quantities from order_details

-- 11. Retrieve suppliers along with the products they supply

-- 12. Show orders with customer and shipper names

-- 13. Find products supplied by suppliers in Japan

-- 14. List order_details with order and product information for orders > 10 quantity

-- 15. Retrieve customers along with the products they ordered

-- 16. Show orders along with customer and employee who handled them

-- 17. Find categories with products currently in stock

-- 18. List products with supplier and category names

-- 19. Show orders along with order_details and product names

-- 20. Find employees and the total number of orders they handled

-- 21. List customers and their orders placed in July 1996

-- 22. Show suppliers and products with UnitsInStock < 20

-- 23. Retrieve orders with customer, employee, and shipper info

-- 24. List order_details with product names and category names

-- 25. Find customers who ordered products from category “Beverages”

-- 26. Show all orders with order_details where quantity > 15

-- 27. Retrieve products with suppliers and reorder levels

-- 28. List employees and orders for which they were responsible

-- 29. Show customers along with orders and total quantity ordered

-- 30. Find suppliers who provide products with UnitPrice > 20

-- 31. List order_details with orders placed by EmployeeID = 4

-- 32. Retrieve products and suppliers where products are discontinued

-- 33. Show orders and order_details with product info where quantity < 10

-- 34. Find customers and products they ordered in CategoryID = 2

-- 35. List orders and employee names who handled them and the shipper used

-- 36. Retrieve products with category and supplier info for UnitsInStock > 30

-- 37. Show orders along with total quantity per order

-- 38. Find employees and the customers they served

-- 39. List order_details and product names for orders shipped by ShipperID = 1

-- 40. Retrieve categories and the products supplied under each category

-- 41. Show orders and corresponding order_details with product UnitPrice

-- 42. Find suppliers and products where UnitsOnOrder > 0

-- 43. List customers and total distinct products they ordered

-- 44. Retrieve employees and orders where the total quantity exceeds 20

-- 45. Show products, suppliers, and categories where UnitPrice > 15

-- 46. Find orders along with order_details for products supplied by SupplierID = 5

-- 47. List customers and orders along with shipper names in July 1996

-- 48. Retrieve products with category names and reorder levels less than 10

-- 49. Show orders with employee names and products ordered with quantity > 5

-- 50. Find suppliers and the total number of products supplied in each category
