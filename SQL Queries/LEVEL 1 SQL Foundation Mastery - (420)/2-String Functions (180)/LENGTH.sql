-- =============================================
-- STRING FUNCTION: LENGTH  
-- Definition: 
-- LENGTH(string) returns the number of characters in the string, including spaces.
-- Example: LENGTH('Hello') returns 5
-- =============================================

-- 1. Find the length of CustomerName for all customers.
SELECT
	CustomerName,
	LENGTH(CustomerName) AS Len_CustomerName
FROM customers;

-- 2. Find the length of ContactName for all customers.
SELECT
    ContactName,
    LENGTH(ContactName) AS Len_ContactName
FROM customers;

-- 3. Find the length of ProductName for all products.
SELECT
    ProductName,
    LENGTH(ProductName) AS Len_ProductName
FROM products;

-- 4. Find the length of CategoryName for all categories.
SELECT
    CategoryName,
    LENGTH(CategoryName) AS Len_CategoryName
FROM categories;

-- 5. Find the length of SupplierName for all suppliers.
SELECT
    SupplierName,
    LENGTH(SupplierName) AS Len_SupplierName
FROM suppliers;

-- 6. Find the length of ShipperName for all shippers.
SELECT
    ShipperName,
    LENGTH(ShipperName) AS Len_ShipperName
FROM shippers;

-- 7. Find the length of Address for all customers.
SELECT
    Address,
    LENGTH(Address) AS Len_Address
FROM customers;

-- 8. Find the length of City for all customers.
SELECT
    City,
    LENGTH(City) AS Len_City
FROM customers;

-- 9. Find the length of PostalCode for all customers.
SELECT
    PostalCode,
    LENGTH(PostalCode) AS Len_PostalCode
FROM customers;

-- 10. Find the length of Phone for all shippers.
SELECT
    Phone,
    LENGTH(Phone) AS Len_Phone
FROM shippers;

-- 11. Find the length of FirstName for all employees.
SELECT
    FirstName,
    LENGTH(FirstName) AS Len_FirstName
FROM employees;

-- 12. Find the length of LastName for all employees.
SELECT
    LastName,
    LENGTH(LastName) AS Len_LastName
FROM employees;

-- 13. Find the length of DescriptionText for all categories.
SELECT
    DescriptionText,
    LENGTH(DescriptionText) AS Len_Description
FROM categories;

-- 14. Find the length of QuantityPerUnit for all products.
SELECT
    QuantityPerUnit,
    LENGTH(QuantityPerUnit) AS Len_QuantityPerUnit
FROM products;

-- 15. Find the length of Country for all customers.
SELECT
    Country,
    LENGTH(Country) AS Len_Country
FROM customers;

-- 16. Find the length of Supplier ContactName for all suppliers.
SELECT
    ContactName,
    LENGTH(ContactName) AS Len_ContactName
FROM suppliers;

-- 17. Find the length of ProductName + CategoryName concatenated.
SELECT
    p.ProductName,
    c.CategoryName,
    LENGTH(CONCAT(p.ProductName, c.CategoryName)) AS Len_Product_Category
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID;

-- 18. Find the length of CustomerName + City + Country concatenated.
SELECT
    CustomerName,
    City,
    Country,
    LENGTH(CONCAT(CustomerName, City, Country)) AS Len_Cust_City_Country
FROM customers;

-- 19. Find the length of ShipperName + Phone concatenated.
SELECT
    ShipperName,
    Phone,
    LENGTH(CONCAT(ShipperName, Phone)) AS Len_Shipper_Phone
FROM shippers;

-- 20. Find the length of Address + PostalCode concatenated for all customers.
SELECT
    Address,
    PostalCode,
    LENGTH(CONCAT(Address, PostalCode)) AS Len_Address_Postal
FROM customers;
