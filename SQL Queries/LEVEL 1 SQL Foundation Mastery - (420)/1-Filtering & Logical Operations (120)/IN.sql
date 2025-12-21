-- =============================================
-- SQL IN Operator Practice
-- Using: IN (...) and NOT IN (...)
-- =============================================

-- 1. Find all products where CategoryID is IN (1, 2, 3)
SELECT * FROM products
WHERE CategoryID IN (1, 2, 3);

-- 2. List customers who live in IN ('Germany', 'France', 'UK')
SELECT * FROM customers 
WHERE Country IN ('Germany', 'France', 'UK');

-- 3. Retrieve orders shipped by shippers with ShipperID IN (1, 3)
SELECT * FROM orders
WHERE ShipperID IN (1, 3);

-- 4. Show products supplied by suppliers with SupplierID IN (5, 10, 15)
SELECT * FROM products WHERE SupplierID IN (5, 10, 15);

-- 5. Fetch employees whose EmployeeID is IN (2, 4, 6)
SELECT * FROM employees 
WHERE EmployeeID IN (2, 4, 6);

-- 6. Find suppliers located in countries IN ('Japan', 'Spain', 'USA')
SELECT * FROM suppliers 
WHERE Country IN ('Japan', 'Spain', 'USA');

-- 7. List products where UnitsInStock is IN (0, 10, 20)
SELECT * FROM products 
WHERE UnitsInStock IN (0, 10, 20);

-- 8. Get customers whose City is IN ('Berlin', 'London', 'México D.F.')
SELECT * FROM customers 
WHERE City IN ('Berlin', 'London', 'México D.F.');

-- 9. Show order details where Quantity is IN (5, 10, 15)
SELECT * FROM order_details
WHERE Quantity IN (5,10,15);

-- 10. Retrieve categories where CategoryID is IN (6, 7, 8)
SELECT * FROM categories 
WHERE CategoryID IN (6, 7, 8);

-- 11. Find orders placed by employees IN (3, 5, 9)
SELECT * FROM orders
WHERE EmployeeID IN (3, 5, 9);

-- 12. Get products where ProductID is IN (1, 5, 10, 20)
SELECT * FROM products
WHERE ProductID IN (1, 5, 10, 20);

-- 13. List suppliers whose SupplierID is IN (20, 21, 22, 23, 24)
SELECT * FROM suppliers
WHERE SupplierID IN (20, 21, 22, 23, 24);

-- 14. Show orders where OrderID is IN (10248, 10250, 10254)
SELECT * FROM orders
WHERE OrderID IN (10248, 10250, 10254);

-- 15. Find customers where Country is NOT IN ('Germany', 'Sweden')
SELECT * FROM customers 
WHERE City NOT IN ('Germany', 'Sweden');

-- 16. Retrieve products where Discontinued is IN (0, 1) (both active or discontinued)
SELECT * FROM products
WHERE Discontinued IN (0, 1);

-- 17. Fetch order details where OrderID is IN (10260, 10261, 10262)
SELECT * FROM order_details
WHERE OrderID IN (10260, 10261, 10262);

-- 18. List employees whose LastName is IN ('King', 'Davolio', 'Fuller')
SELECT * FROM employees
WHERE LastName IN ('King', 'Davolio', 'Fuller');

-- 19. Show products where ReorderLevel is IN (0, 10, 25)
SELECT * FROM products 
WHERE ReorderLevel IN (0, 10, 25);

-- 20. Find customers whose CustomerID is IN (5, 15, 25, 35, 45)
SELECT * FROM customers
WHERE CustomerID IN (5, 15, 25, 35, 45);
