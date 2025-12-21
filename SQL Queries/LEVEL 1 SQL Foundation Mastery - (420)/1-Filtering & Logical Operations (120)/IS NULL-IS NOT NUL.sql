-- =============================================
-- SQL IS NULL / IS NOT NULL Practice
-- Using: IS NULL and IS NOT NULL
-- =============================================

-- 1. Find all products where UnitsOnOrder IS NULL
SELECT * FROM products 
WHERE UnitsOnOrder IS NULL;

-- 2. List customers whose PostalCode IS NULL
SELECT * FROM customers
WHERE PostalCode IS NULL;

-- 3. Retrieve employees whose BirthDate IS NULL
SELECT * FROM employees 
WHERE BirthDate IS NULL;

-- 4. Show orders where OrderDate IS NOT NULL
SELECT * FROM orders
WHERE OrderDate IS NULL;

-- 5. Find products where ReorderLevel IS NULL
SELECT * FROM products 
WHERE ReorderLevel IS NULL;

-- 6. List suppliers whose Phone IS NOT NULL
SELECT * FROM suppliers
WHERE Phone IS NOT NULL;

-- 7. Get customers whose ContactName IS NOT NULL
SELECT * FROM customers
WHERE ContactName IS NOT NULL;

-- 8. Retrieve products where UnitPrice IS NOT NULL
SELECT * FROM products 
WHERE UnitPrice IS NOT NULL;

-- 9. Show employees whose FirstName IS NOT NULL
SELECT * FROM employees
WHERE FirstName IS NOT NULL;

-- 10. Find categories where DescriptionText IS NULL
SELECT * FROM categories 
WHERE DescriptionText IS NULL;

-- 11. List orders where ShipperID IS NOT NULL
SELECT * FROM orders
WHERE ShipperID IS NOT NULL;

-- 12. Retrieve products where QuantityPerUnit IS NULL
SELECT * FROM products
WHERE QuantityPerUnit IS NULL;

-- 13. Find suppliers whose City IS NOT NULL
SELECT * FROM suppliers
WHERE City IS NOT NULL;

-- 14. Show order_details where Quantity IS NOT NULL
SELECT * FROM order_details
WHERE Quantity IS NOT NULL;

-- 15. List products where UnitsInStock IS NULL
SELECT * FROM products
WHERE UnitsInStock IS NULL;

-- 16. Retrieve customers whose Address IS NOT NULLS
SELECT * FROM customers 
WHERE Address IS NOT NULL;

-- 17. Find employees whose LastName IS NULL
SELECT * FROM employees
WHERE LastName IS NULL;

-- 18. Show products where Discontinued IS NOT NULL
SELECT * FROM products
WHERE Discontinued IS NOT NULL;

-- 19. List categories where CategoryName IS NOT NULL
SELECT * FROM categories
WHERE CategoryName IS NOT NULL;

-- 20. Retrieve orders where CustomerID IS NOT NULL
SELECT * FROM orders
WHERE CustomerID IS NOT NULL;
