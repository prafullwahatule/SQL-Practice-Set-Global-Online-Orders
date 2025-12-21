-- =============================================
-- STRING FUNCTIONS: TRIM, LTRIM, RTRIM  
-- Definition: 
-- TRIM() removes leading and trailing spaces from a string.
-- LTRIM() removes leading spaces from a string.
-- RTRIM() removes trailing spaces from a string.
-- Example: TRIM('   Hello World   ') returns 'Hello World'
--          LTRIM('   Hello') returns 'Hello'
--          RTRIM('Hello   ') returns 'Hello'
-- =============================================

-- 1. Remove leading and trailing spaces from CustomerName using TRIM().
SELECT 
    CustomerName,
    TRIM(CustomerName) AS Trimmed_CustomerName
FROM customers;

-- 2. Remove leading spaces from CustomerName using LTRIM().
SELECT 
    CustomerName,
    LTRIM(CustomerName) AS Trimmed_CustomerName
FROM customers;

-- 3. Remove trailing spaces from CustomerName using RTRIM().
SELECT 
    CustomerName,
    RTRIM(CustomerName) AS CustomerName_RTrim
FROM customers;

-- 4. Remove spaces from ContactName using TRIM().
SELECT 
    ContactName,
    TRIM(ContactName) AS ContactName_Trim
FROM customers;

-- 5. Remove leading spaces from ContactName using LTRIM().
SELECT 
    ContactName,
    LTRIM(ContactName) AS ContactName_LTrim
FROM customers;

-- 6. Remove trailing spaces from ContactName using RTRIM().
SELECT 
    ContactName,
    RTRIM(ContactName) AS ContactName_RTrim
FROM customers;

-- 7. Remove leading and trailing spaces from ProductName.
SELECT 
    ProductName,
    TRIM(ProductName) AS ProductName_Trim
FROM products;

-- 8. Remove leading spaces from ProductName.
SELECT 
    ProductName,
    LTRIM(ProductName) AS ProductName_LTrim
FROM products;

-- 9. Remove trailing spaces from ProductName.
SELECT 
    ProductName,
    RTRIM(ProductName) AS ProductName_RTrim
FROM products;

-- 10. Remove spaces from SupplierName using TRIM().
SELECT 
    SupplierName,
    TRIM(SupplierName) AS SupplierName_Trim
FROM suppliers;

-- 11. Remove leading spaces from SupplierName using LTRIM().
SELECT 
    SupplierName,
    LTRIM(SupplierName) AS SupplierName_LTrim
FROM suppliers;

-- 12. Remove trailing spaces from SupplierName using RTRIM().
SELECT 
    SupplierName,
    RTRIM(SupplierName) AS SupplierName_RTrim
FROM suppliers;

-- 13. Remove leading and trailing spaces from City for all customers.
SELECT 
    City,
    TRIM(City) AS City_Trim
FROM customers;

-- 14. Remove leading spaces from City for all customers.
SELECT 
    City,
    LTRIM(City) AS City_LTrim
FROM customers;

-- 15. Remove trailing spaces from City for all customers.
SELECT 
    City,
    RTRIM(City) AS City_RTrim
FROM customers;

-- 16. Remove leading and trailing spaces from ShipperName.
SELECT 
    ShipperName,
    TRIM(ShipperName) AS ShipperName_Trim
FROM shippers;

-- 17. Remove leading spaces from CategoryName.
SELECT 
    CategoryName,
    LTRIM(CategoryName) AS CategoryName_LTrim
FROM categories;

-- 18. Remove trailing spaces from CategoryName.
SELECT 
    CategoryName,
    RTRIM(CategoryName) AS CategoryName_RTrim
FROM categories;

-- 19. Remove spaces from concatenated CustomerName + City + Country using TRIM().
SELECT 
    TRIM(CONCAT(CustomerName, ' ', City, ' ', Country)) AS Customer_Full_Trim
FROM customers;

-- 20. Remove leading and trailing spaces from Address for all customers.
SELECT 
    Address,
    TRIM(Address) AS Address_Trim
FROM customers;
