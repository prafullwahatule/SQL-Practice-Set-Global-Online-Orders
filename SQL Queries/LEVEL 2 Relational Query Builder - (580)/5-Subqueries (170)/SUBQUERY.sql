-- =============================================
-- NESTED SUBQUERY PRACTICE QUESTIONS
-- =============================================

-- ============================
-- PRODUCTS
-- ============================

-- 1. Find products whose UnitPrice is higher than the average UnitPrice 
--    of products in the most expensive category.

-- 2. List products that belong to the category of the cheapest product 
--    supplied by suppliers in Japan.

-- 3. Retrieve products whose UnitsInStock is greater than the maximum UnitsInStock 
--    of any product in categories that include a discontinued product.

-- 4. Show products priced higher than the average price of products 
--    ordered by customers from Germany.

-- 5. Find products whose SupplierID matches suppliers in countries 
--    that have more than 3 suppliers.


-- ============================
-- CUSTOMERS / ORDERS
-- ============================

-- 6. List customers who placed orders in the same month as the earliest order 
--    placed by EmployeeID = 4.

-- 7. Find customers who ordered products from the category 
--    with the highest number of products.

-- 8. Retrieve customers who placed the maximum number of orders 
--    among all customers.

-- 9. List customers whose city matches the city of suppliers who supply 
--    products to OrderID = 10248.

-- 10. Show customers who ordered any product that has a UnitPrice 
--     greater than the maximum UnitPrice of CategoryID = 1.


-- ============================
-- EMPLOYEES
-- ============================

-- 11. Find employees who handled orders placed by customers in the country 
--     with the highest number of customers.

-- 12. Show employees who processed orders containing products with quantities 
--     higher than the average quantity of all order_details.

-- 13. Retrieve employees whose birthdates are earlier than the minimum birthdate 
--     of employees who handled more than 5 orders.

-- 14. List employees who worked on orders shipped by the shipper 
--     that delivered the fewest orders.

-- 15. Find employees who handled orders for customers who belong to the city 
--     that appears most frequently in the customers table.


-- ============================
-- ORDERS
-- ============================

-- 16. Retrieve orders whose OrderDate is earlier than the minimum OrderDate 
--     of orders shipped by ShipperID = 3.

-- 17. Show orders placed by customers who also ordered products supplied 
--     by suppliers in the same country as SupplierID = 2.

-- 18. Find orders that include products whose UnitPrice is greater than 
--     the average UnitPrice of products supplied by SupplierID = 1.

-- 19. Show orders placed by the customers who placed orders with the 
--     maximum total quantity in order_details.

-- 20. Retrieve orders where the employee who processed them has a birthdate 
--     earlier than the birthdate of EmployeeID = 1.


-- ============================
-- SUPPLIERS / CATEGORIES
-- ============================

-- 21. Find suppliers who supply products in categories where the 
--     average UnitPrice is above 25.

-- 22. List suppliers whose country matches the country of customers 
--     who placed orders with OrderID > 10300.

-- 23. Show suppliers who supply products more expensive than the 
--     maximum UnitPrice in CategoryID = 4.

-- 24. Retrieve suppliers who are located in countries that have customers 
--     who ordered the cheapest product.

-- 25. List suppliers who supply products ordered in quantities 
--     greater than the maximum quantity ordered in July 1996.


-- ============================
-- ORDER DETAILS
-- ============================

-- 26. Find order_details where quantity is higher than the average quantity 
--     of all order_details for orders placed by CustomerID = 20.

-- 27. List order_details for products more expensive than the minimum UnitPrice 
--     of products ordered by EmployeeID = 4.

-- 28. Show order_details whose Quantity is greater than the maximum Quantity 
--     for products in CategoryID = 3.

-- 29. Retrieve order_details that belong to orders placed by customers 
--     in the country with the earliest customer record.

-- 30. List order_details where ProductID exists in products supplied by suppliers 
--     located in the country with the most suppliers.
