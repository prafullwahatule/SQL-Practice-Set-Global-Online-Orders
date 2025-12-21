-- =============================================
-- SQL Logical Operators Practice
-- Using: AND, OR, NOT
-- =============================================

-- 1. Find all products where UnitPrice > 20 AND UnitsInStock > 30
SELECT * FROM products 
WHERE UnitPrice > 20 AND UnitsInStock > 30;

-- 2. List customers who live in Germany OR France
SELECT * FROM customers
WHERE City = "Germany" OR City = "France";

-- 3. Retrieve orders where EmployeeID = 5 AND ShipperID = 3
SELECT * FROM orders
WHERE EmployeeID = 5 AND ShipperID = 3;

-- 4. Find suppliers where Country = 'Japan' OR Country = 'USA'
SELECT * FROM suppliers 
WHERE Country = "Japan" OR Country = "USA";

-- 5. Show products that are NOT discontinued
SELECT * FROM products
WHERE Discontinued = 0;

-- 6. Get employees born before 1960 AND LastName LIKE 'D%'
SELECT * FROM employees
WHERE YEAR(BirthDate) AND LastName LIKE "D%";

-- 7. List customers whose Country = 'Mexico' AND City = 'México D.F.'
SELECT * FROM customers
WHERE Country = "Mexico" AND City = "México D.F.";

-- 8. Find orders where OrderDate >= '1996-07-15' AND OrderDate <= '1996-07-25'
SELECT * FROM orders
WHERE OrderDate >= '1996-07-15' AND OrderDate <= '1996-07-25';

-- 9. Retrieve products where CategoryID = 1 OR CategoryID = 2
SELECT * FROM products 
WHERE CategoryID = 1 OR CategoryID = 2;

-- 10. Show suppliers NOT located in the UK
SELECT * FROM suppliers 
WHERE Country != "UK";

-- 11. Find order details where Quantity < 10 OR Quantity > 30
SELECT * FROM order_details 
WHERE Quantity < 10 OR Quantity > 30;

-- 12. List products where UnitsInStock = 0 AND Discontinued = 1
SELECT * FROM products
WHERE UnitsInStock = 0 AND Discontinued = 1;

-- 13. Retrieve customers where NOT (City = 'Berlin')
SELECT * FROM customers 
WHERE City NOT IN ("Berlin");

-- 14. Show orders shipped by ShipperID = 1 OR ShipperID = 2
SELECT * FROM orders
WHERE ShipperID = 1 OR ShipperID = 2;

-- 15. Find employees where NOT (BirthDate > '1965-01-01'
SELECT * FROM employees 
WHERE BirthDate NOT IN ('1965-01-01');

-- 16. Display products where UnitPrice > 15 AND UnitsOnOrder > 0
SELECT * FROM products 
WHERE UnitPrice > 15 AND UnitsOnOrder > 0;

-- 17. Find customers where Country = 'Germany' OR Country = 'Sweden'
SELECT * FROM customers
WHERE Country = 'Germany' OR Country = 'Sweden';

-- 18. Retrieve products where NOT (UnitsInStock < 20)
SELECT * FROM products 
WHERE UnitsInStock NOT IN (20);

-- 19. List order details where Quantity BETWEEN 10 AND 20 OR ProductID < 5
SELECT * FROM order_details 
WHERE Quantity BETWEEN 10 AND 20 OR ProductID < 5;

-- 20. Show orders where CustomerID = 20 AND EmployeeID != 3
SELECT * FROM orders
WHERE CustomerID = 20 AND EmployeeID != 3;
