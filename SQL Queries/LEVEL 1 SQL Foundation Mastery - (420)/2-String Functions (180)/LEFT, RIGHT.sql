-- =============================================
-- STRING FUNCTION: LEFT / RIGHT  
-- Definition: 
-- LEFT(string, n) returns the first 'n' characters of a string.
-- RIGHT(string, n) returns the last 'n' characters of a string.
-- Example: LEFT('Hello', 2) returns 'He', RIGHT('Hello', 2) returns 'lo'
-- =============================================

-- 1. Get the first 5 characters of CustomerName using LEFT().
SELECT 
    CustomerName,
    LEFT(CustomerName, 5) AS Left_5_char
FROM customers;

-- 2. Get the last 3 characters of PostalCode using RIGHT().
SELECT 
	PostalCode,
    RIGHT(PostalCode,3) AS Right_5
FROM customers;

-- 3. Get the first 4 characters of ProductName.
SELECT 
    ProductName,
    LEFT(ProductName, 4) AS First_4_Chars
FROM products;

-- 4. Get the last 2 characters of Country for all customers.
SELECT 
    CustomerName,
    Country,
    RIGHT(Country, 2) AS Last_2_Chars
FROM customers;

-- 5. Get the first 3 characters of City using LEFT().
SELECT 
    City,
    LEFT(City, 3) AS First_3_Chars
FROM customers;

-- 6. Get the last 4 characters of ContactName using RIGHT().
SELECT 
    ContactName,
    RIGHT(ContactName, 4) AS Last_4_Chars
FROM customers;

-- 7. Get the first 6 characters of SupplierName.
SELECT 
    SupplierName,
    LEFT(SupplierName, 6) AS First_6_Chars
FROM suppliers;

-- 8. Get the last 5 characters of Phone for shippers.
SELECT 
    ShipperName,
    Phone,
    RIGHT(Phone, 5) AS Last_5_Chars
FROM shippers;

-- 9. Get the first 2 characters of CategoryName.
SELECT 
    CategoryName,
    LEFT(CategoryName, 2) AS First_2_Chars
FROM categories;

-- 10. Get the last 3 characters of QuantityPerUnit for products.
SELECT 
    ProductName,
    QuantityPerUnit,
    RIGHT(QuantityPerUnit, 3) AS Last_3_Chars
FROM products;

-- 11. Get the first 5 characters of Employee FirstName.
SELECT 
    FirstName,
    LEFT(FirstName, 5) AS First_5_Chars
FROM employees;

-- 12. Get the last 4 characters of Employee LastName.
SELECT 
    LastName,
    RIGHT(LastName, 4) AS Last_4_Chars
FROM employees;

-- 13. Get the first 8 characters of Address for customers.
SELECT 
    CustomerName, Address, LEFT(Address, 8) AS First_8_Chars
FROM
    customers;

-- 14. Get the last 6 characters of ShipperName.
SELECT 
    ShipperName,
    RIGHT(ShipperName, 6) AS Last_6_Chars
FROM shippers;

-- 15. Get the first 3 characters of DescriptionText for categories.
SELECT 
    CategoryName,
    DescriptionText,
    LEFT(DescriptionText, 3) AS First_3_Chars
FROM
    categories;

-- 16. Get the last 3 characters of ProductName.
SELECT 
    ProductName,
    RIGHT(ProductName, 3) AS Last_3_Chars
FROM products;

-- 17. Get the first 7 characters of CustomerName + City concatenated.
SELECT 
    CustomerName,
    City,
    LEFT(CONCAT(CustomerName, '-', City), 7) AS Cust_with_city
FROM customers;

-- 18. Get the last 5 characters of SupplierName + City concatenated.
SELECT 
    SupplierName,
    City,
    RIGHT(CONCAT(SupplierName, '-', City), 5) AS Supplier_City_Last5
FROM suppliers;

-- 19. Get the first 4 characters of OrderID converted to string.
SELECT 
    OrderID,
    LEFT(CAST(OrderID AS CHAR), 4) AS OrderID_First4
FROM orders;

-- 20. Get the last 3 characters of PostalCode + Country concatenated.
SELECT 
    PostalCode,
    Country,
    RIGHT(CONCAT(PostalCode, Country), 3) AS Last_3_Chars
FROM customers;
