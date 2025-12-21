-- =============================================
-- SQL BETWEEN Operator Practice
-- Using: BETWEEN ... AND ...
-- =============================================

-- 1. Find all products whose UnitPrice is between 10 and 25
SELECT * FROM products
WHERE UnitPrice BETWEEN 10 AND 25;

-- 2. List customers whose CustomerID is between 20 and 40
SELECT * FROM customers
WHERE CustomerID BETWEEN 20 AND 40;

-- 3. Retrieve orders placed between '1996-07-10' and '1996-07-20'
SELECT * FROM orders
WHERE OrderDate BETWEEN '1996-07-10' AND '1996-07-20';

-- 4. Show order details where Quantity is between 5 and 15
SELECT * FROM order_details
WHERE Quantity BETWEEN 5 AND 15;

-- 5. Find employees born between '1955-01-01' and '1965-12-31'
SELECT * FROM employees
WHERE BirthDate BETWEEN '1955-01-01' AND '1965-12-31';

-- 6. List products with UnitsInStock between 10 and 50
SELECT * FROM products
WHERE UnitsInStock BETWEEN 10 AND 50;

-- 7. Fetch suppliers whose SupplierID is between 5 and 15
SELECT * FROM suppliers 
WHERE SupplierID BETWEEN 5 AND 15;

-- 8. Get customers whose PostalCode is between '3000' and '6000' (lexical comparison)
SELECT * FROM customers 
WHERE PostalCode BETWEEN 3000 AND 6000;

-- 9. List categories where CategoryID is between 3 and 7
SELECT * FROM categories 
WHERE CategoryID BETWEEN 2 AND 7;

-- 10. Retrieve products where ReorderLevel is between 5 and 20
SELECT * FROM products
WHERE ReorderLevel BETWEEN 5 AND 20;

-- 11. Show orders where EmployeeID is between 4 and 8
SELECT * FROM orders
WHERE EmployeeID BETWEEN 4 AND 8;

-- 12. Find order details where ProductID is between 1 and 10
SELECT * FROM order_details 
WHERE ProductID BETWEEN 1 AND 10;

-- 13. Get suppliers whose Phone number length is between 10 and 14 characters
SELECT * FROM suppliers 
WHERE length(Phone) BETWEEN 10 AND 14;

-- 14. Find products where UnitsOnOrder is between 1 and 50
SELECT * FROM products 
WHERE UnitsOnOrder BETWEEN 1 AND 50;

-- 15. Retrieve customers whose City name length is between 5 and 8 letters
SELECT * FROM customers 
WHERE length(City) BETWEEN 5 AND 8;

-- 16. Show products where CategoryID is between 2 and 4
SELECT * FROM products
WHERE CategoryID BETWEEN 2 AND 4;

-- 17. List orders where CustomerID is between 60 and 90
SELECT * FROM orders 
WHERE CustomerID BETWEEN 60 AND 90;

-- 18. Get employees whose EmployeeID is between 3 and 7
SELECT * FROM employees 
WHERE EmployeeID BETWEEN 3 AND 7;

-- 19. Find order details where OrderID is between 10260 and 10280
SELECT * FROM order_details 
WHERE OrderID BETWEEN 10260 AND 10280;

-- 20. Retrieve products where UnitPrice is between 5 and 15
SELECT * FROM products
WHERE UnitPrice BETWEEN 5 AND 15;
