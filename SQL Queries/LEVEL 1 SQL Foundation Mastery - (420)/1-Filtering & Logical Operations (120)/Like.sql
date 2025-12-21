-- =============================================
-- SQL LIKE Operator Practice
-- Using: LIKE with %, _, and patterns
-- =============================================

-- 1. Find all customers whose CustomerName starts with 'A' (CustomerName LIKE 'A%')
SELECT * FROM customers
WHERE CustomerName LIKE "A%";

-- 2. List employees whose LastName ends with 'n' (LastName LIKE '%n')
SELECT * FROM employees
WHERE LastName LIKE '%n';

-- 3. Retrieve products where ProductName contains the word 'Mix' (ProductName LIKE '%Mix%')
SELECT * FROM products
WHERE ProductName LIKE '%Mix%';

-- 4. Show suppliers whose ContactName starts with 'C' (ContactName LIKE 'C%')
SELECT * FROM suppliers
WHERE ContactName LIKE 'C%';

-- 5. Find customers whose City contains 'o' (City LIKE '%o%')
SELECT * FROM customers
WHERE City LIKE "%o%";

-- 6. List products where QuantityPerUnit starts with a number (QuantityPerUnit LIKE '[0-9]%')
SELECT * FROM products
WHERE QuantityPerUnit LIKE '[0-9]%';

-- 7. Get employees whose FirstName has exactly 5 letters (FirstName LIKE '_____')
SELECT * FROM employees 
WHERE FirstName LIKE "_____";

-- 8. Retrieve suppliers where Phone contains '555' (Phone LIKE '%555%')
SELECT * FROM suppliers
WHERE Phone LIKE "%555%";

-- 9. Show customers whose Address ends with 'St.' (Address LIKE '%St.%')
SELECT * FROM customers
WHERE Address LIKE "%St.%";

-- 10. Find products whose ProductName starts with 'Ch' (ProductName LIKE 'Ch%')
SELECT * FROM products 
WHERE ProductName LIKE "Ch%";

-- 11. List categories where CategoryName contains 'ea' (CategoryName LIKE '%ea%')
SELECT * FROM categories 
WHERE CategoryName LIKE '%ea%';

-- 12. Retrieve customers whose ContactName starts with 'M' and ends with 's' (ContactName LIKE 'M%s')
SELECT * FROM customers
WHERE ContactName LIKE 'M%s';

-- 13. Find employees whose LastName contains 'er' (LastName LIKE '%er%')
SELECT * FROM employees
WHERE LastName LIKE '%er%';

-- 14. Show orders where OrderDate starts with '1996-07' (OrderDate LIKE '1996-07%')
SELECT * FROM orders
WHERE OrderDate LIKE '1996-07%';

-- 15. List suppliers whose City starts with 'T' (City LIKE 'T%')
SELECT * FROM suppliers
WHERE City LIKE "T%";

-- 16. Retrieve products where UnitPrice formatted text contains '.' (UnitPrice LIKE '%.%')
SELECT * FROM products
WHERE UnitPrice LIKE "%.%";

-- 17. Find customers whose PostalCode begins with 'S' (PostalCode LIKE 'S%')
SELECT * FROM customers
WHERE PostalCode LIKE 'S%';

-- 18. Show employees whose FirstName contains 'a' (FirstName LIKE '%a%')
SELECT * FROM employees
WHERE FirstName LIKE '%a%';

-- 19. List products whose ProductName ends with 'Tea' (ProductName LIKE '%Tea')
SELECT * FROM products
WHERE ProductName LIKE '%Tea';

-- 20. Find suppliers whose Address contains a space (Address LIKE '% %')
SELECT * FROM suppliers
WHERE Address LIKE "% %";