-- =============================================
-- STRING FUNCTION: SUBSTRING  
-- Definition: 
-- SUBSTRING(string, start, length) extracts a portion of a string starting at position 'start' for 'length' characters.
-- Example: SUBSTRING('Hello', 2, 3) returns 'ell'
-- =============================================

-- 1. Extract the first 5 characters of CustomerName.
SELECT
	CustomerName,
	SUBSTRING(CustomerName,1,5) AS First_5_Char
FROM customers;

-- 2. Extract the first 3 characters of ProductName.
SELECT
	ProductName,
    SUBSTRING(ProductName,1,3) AS First_3_Char
FROM products;

-- 3. Extract the last 4 characters of PostalCode.
SELECT
    PostalCode,
    SUBSTRING(PostalCode, LENGTH(PostalCode) - 3, 4) AS Last_4_Char
FROM customers;

-- 4. Extract the first 2 letters of Country.
SELECT
    Country,
    SUBSTRING(Country, 1, 2) AS First_2_Letters
FROM customers;

-- 5. Extract the first 4 characters of City for all customers.
SELECT
    City,
    SUBSTRING(City, 1, 4) AS First_4_Char
FROM customers;

-- 6. Extract characters 2 to 6 of ContactName.
SELECT
    ContactName,
    SUBSTRING(ContactName, 2, 5) AS Char_2_to_6
FROM customers;

-- 7. Extract the first 5 characters of SupplierName.
SELECT
    SupplierName,
    SUBSTRING(SupplierName, 1, 5) AS First_5_Char
FROM suppliers;

-- 8. Extract characters 3 to 7 of Employee LastName.
-- 8. Extract characters 3 to 7 of Employee LastName.
SELECT
    LastName,
    SUBSTRING(LastName, 3, 5) AS Char_3_to_7
FROM employees;

-- 9. Extract the first 10 characters of Address.
SELECT
    Address,
    SUBSTRING(Address, 1, 10) AS First_10_Char
FROM customers;

-- 10. Extract the first 6 characters of ShipperName.
SELECT
    ShipperName,
    SUBSTRING(ShipperName, 1, 6) AS First_6_Char
FROM shippers;

-- 11. Extract the first 8 characters of CategoryName.
SELECT
    CategoryName,
    SUBSTRING(CategoryName, 1, 8) AS First_8_Char
FROM categories;

-- 12. Extract characters 5 to 10 of ProductName.
SELECT
    ProductName,
    SUBSTRING(ProductName, 5, 6) AS Char_5_to_10
FROM products;

-- 13. Extract the first 3 characters of QuantityPerUnit.
SELECT
    QuantityPerUnit,
    SUBSTRING(QuantityPerUnit, 1, 3) AS First_3_Char
FROM products;

-- 14. Extract the first 2 characters of Country for all suppliers.
SELECT
    Country,
    SUBSTRING(Country, 1, 2) AS First_2_Char
FROM suppliers;

-- 15. Extract characters 4 to 8 of CustomerName.
SELECT
    CustomerName,
    SUBSTRING(CustomerName, 4, 5) AS Char_4_to_8
FROM customers;

-- 16. Extract the first 5 characters of City for employees’ addresses.

-- 17. Extract characters 3 to 5 of PostalCode.
SELECT
    PostalCode,
    SUBSTRING(PostalCode, 3, 3) AS Char_3_to_5
FROM customers;

-- 18. Extract the first 6 characters of ContactName for suppliers.
SELECT
    ContactName,
    SUBSTRING(ContactName, 1, 6) AS First_6_Char
FROM suppliers;

-- 19. Extract characters 2 to 6 of DescriptionText for categories.
SELECT
    DescriptionText,
    SUBSTRING(DescriptionText, 2, 5) AS Char_2_to_6
FROM categories;

-- 20. Extract the first 7 characters of ProductName + CategoryName concatenated.
SELECT 
    ProductName,
    CategoryName,
    CONCAT(ProductName, ' ', CategoryName) AS Cat_Pro_Name,
    SUBSTRING(CONCAT(ProductName, ' ', CategoryName), 1, 7) AS First_7_Char
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID;
