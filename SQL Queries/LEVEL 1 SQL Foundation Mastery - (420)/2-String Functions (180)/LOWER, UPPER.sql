-- =============================================
-- STRING FUNCTION: LOWER / UPPER  
-- Definition: 
-- LOWER(string) converts all letters in the string to lowercase.
-- UPPER(string) converts all letters in the string to uppercase.
-- Example: LOWER('Hello') returns 'hello', UPPER('Hello') returns 'HELLO'
-- =============================================

-- 1. Convert all CustomerName to uppercase.
SELECT 
	CustomerName,
    UPPER(CustomerName) AS UpperCase_name
from customers;

-- 2. Convert all CustomerName to lowercase.
SELECT 
    CustomerName,
    LOWER(CustomerName) AS LowerCase_name
FROM customers;

-- 3. Convert all ContactName of customers to uppercase.
SELECT 
    ContactName,
    UPPER(ContactName) AS UpperCase_Contact
FROM customers;

-- 4. Convert all ContactName of customers to lowercase.
SELECT 
    ContactName,
    LOWER(ContactName) AS LowerCase_Contact
FROM customers;

-- 5. Convert all ProductName to uppercase.
SELECT 
    ProductName,
    UPPER(ProductName) AS Upper_Product
FROM products;

-- 6. Convert all ProductName to lowercase.
SELECT 
    ProductName,
    LOWER(ProductName) AS Lower_Product
FROM products;

-- 7. Convert all CategoryName to uppercase.
SELECT 
    CategoryName,
    UPPER(CategoryName) AS Upper_Category
FROM categories;

-- 8. Convert all CategoryName to lowercase.
SELECT 
    CategoryName,
    LOWER(CategoryName) AS Lower_Category
FROM categories;

-- 9. Convert all SupplierName to uppercase.
SELECT 
    SupplierName,
    UPPER(SupplierName) AS Upper_Supplier
FROM suppliers;

-- 10. Convert all SupplierName to lowercase.
SELECT 
    SupplierName,
    LOWER(SupplierName) AS Lower_Supplier
FROM suppliers;

-- 11. Convert all ShipperName to uppercase.
SELECT 
    ShipperName,
    UPPER(ShipperName) AS Upper_Shipper
FROM shippers;

-- 12. Convert all ShipperName to lowercase.
SELECT 
    ShipperName,
    LOWER(ShipperName) AS Lower_Shipper
FROM shippers;

-- 13. Convert all City of customers to uppercase.
SELECT 
    City,
    UPPER(City) AS Upper_City
FROM customers;

-- 14. Convert all City of customers to lowercase.
SELECT 
    City,
    LOWER(City) AS Lower_City
FROM customers;

-- 15. Convert all Country of suppliers to uppercase.
SELECT 
    Country,
    UPPER(Country) AS Upper_Country
FROM suppliers;

-- 16. Convert all Country of suppliers to lowercase.
SELECT 
    Country,
    LOWER(Country) AS Lower_Country
FROM suppliers;

-- 17. Convert FirstName and LastName of employees to uppercase using UPPER().
SELECT 
    FirstName,
    LastName,
    UPPER(FirstName) AS Upper_FirstName,
    UPPER(LastName) AS Upper_LastName
FROM employees;

-- 18. Convert FirstName and LastName of employees to lowercase using LOWER().
SELECT 
    FirstName,
    LastName,
    LOWER(FirstName) AS Lower_FirstName,
    LOWER(LastName) AS Lower_LastName
FROM employees;

-- 19. Convert concatenated CustomerName + City + Country to uppercase.
SELECT 
    CONCAT(CustomerName, ' ', City, ' ', Country) AS Concatenated,
    UPPER(CONCAT(CustomerName, ' ', City, ' ', Country)) AS Upper_Concat
FROM customers;

-- 20. Convert concatenated ProductName + CategoryName + SupplierName to lowercase.
SELECT 
    CONCAT(p.ProductName, ' ', c.CategoryName, ' ', s.SupplierName) AS Concatenated,
    LOWER(CONCAT(p.ProductName, ' ', c.CategoryName, ' ', s.SupplierName)) AS Lower_Concat
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID;
