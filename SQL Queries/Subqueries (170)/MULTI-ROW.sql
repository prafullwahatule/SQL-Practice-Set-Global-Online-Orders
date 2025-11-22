-- =============================================
-- MULTI-ROW SUBQUERY PRACTICE
-- Uses: IN, ANY, ALL, NOT IN
-- =============================================


-- ============================
-- PRODUCTS
-- ============================

-- 1. Find products whose CategoryID is IN the list of categories 
--    that have more than 1 product.

-- 2. List products whose SupplierID is IN suppliers located in Japan.

-- 3. Retrieve products whose ProductID is IN the list of ProductIDs 
--    in order_details with Quantity > 30.

-- 4. Find products whose UnitPrice is greater than ANY UnitPrice 
--    of products in CategoryID = 1.

-- 5. Find products whose UnitPrice is greater than ALL UnitPrices 
--    in CategoryID = 2.

-- 6. Show products whose ProductID is NOT IN the order_details table 
--    (never ordered products).

-- 7. Retrieve products whose UnitPrice is less than ANY UnitPrice 
--    in CategoryID = 5.

-- 8. Retrieve products whose UnitsInStock is less than ANY UnitsInStock 
--    of discontinued products.

-- 9. Find categories whose CategoryID is IN categories having products out of stock.

-- 10. Show categories whose CategoryID is IN the categories 
--     used by discontinued products.


-- ============================
-- CUSTOMERS
-- ============================

-- 11. List customers whose CustomerID is IN the set of customers 
--     who placed orders in July 1996.

-- 12. Show orders where CustomerID is IN the group of customers from Germany.

-- 13. Find customers whose CustomerID is IN the list of customers 
--     who placed orders shipped by 'Federal Shipping'.

-- 14. Find customers whose CustomerID is IN customers with PostalCode 
--     starting with '5'.

-- 15. List customers whose Country is IN the countries of suppliers 
--     who supply CategoryID = 1 products.


-- ============================
-- EMPLOYEES
-- ============================

-- 16. Find employees whose EmployeeID is IN the list of employees 
--     who handled orders shipped by ShipperID = 3.

-- 17. Show employees whose EmployeeID is IN the list of employees 
--     who handled orders for CustomerID = 20.

-- 18. Retrieve employees whose EmployeeID is IN employees 
--     with birthdates earlier than ANY customer registration date (if exists).

-- 19. Find employees where EmployeeID is IN employees who were born in the 1950s.


-- ============================
-- ORDERS
-- ============================

-- 20. Show orders whose OrderID is IN the top 5 earliest OrderIDs.

-- 21. Find orders whose ShipperID is IN the list of shippers used by EmployeeID = 4.

-- 22. Find orders whose OrderDate is earlier than ALL order dates of CustomerID = 34.

-- 23. Find orders where CustomerID is IN customers who placed orders 
--     shipped by 'Federal Shipping'.

-- 24. Find orders whose CustomerID is IN customers with PostalCode starting with '5'.

-- 25. Retrieve orders whose ShipperID is IN orders placed after '1996-07-20'.


-- ============================
-- SUPPLIERS
-- ============================

-- 26. List suppliers whose SupplierID is IN the SupplierIDs 
--     of products priced above 20.

-- 27. Show suppliers whose country is IN the customer countries 
--     from which orders were placed.

-- 28. Show suppliers whose SupplierID is IN the SupplierIDs 
--     of the cheapest products.

-- 29. List suppliers whose Country is IN the cities of customers 
--     (if applicable).


-- ============================
-- ORDER DETAILS
-- ============================

-- 30. Show order_details whose Quantity is greater than ALL quantities 
--     of OrderID = 10248.

-- 31. Retrieve order_details where ProductID is IN products supplied by 
--     suppliers located in the country with the most suppliers.
