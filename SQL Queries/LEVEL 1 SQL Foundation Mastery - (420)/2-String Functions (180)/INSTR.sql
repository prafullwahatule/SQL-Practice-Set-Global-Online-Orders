-- =============================================
-- STRING FUNCTION: INSTR  
-- Definition: 
-- INSTR(string, substring) returns the position of the first occurrence of 'substring' in 'string'.
-- If the substring is not found, it returns 0.
-- Example: INSTR('Hello', 'l') returns 3
-- =============================================

-- 1. Find the position of 'a' in CustomerName.
SELECT 
    CustomerName,
    INSTR(CustomerName, 'a') AS Position_Of_A
FROM customers;

-- 2. Find the position of 'Street' in Address for all customers.
SELECT 
    CustomerName,
    Address,
    INSTR(Address, 'Street') AS Position_Of_Street
FROM customers;

-- 3. Find the position of 'Ch' in ProductName.
SELECT
	ProductName,
    INSTR(ProductName, 'Ch') AS Position_Ch
FROM products;

-- 4. Find the position of 'Berlin' in City for all customers.
SELECT
	City,
    INSTR(City, "Berlin") AS Berlin_position
FROM customers;

-- 5. Find the position of 'Co' in SupplierName.
SELECT 
    SupplierName,
    INSTR(SupplierName, 'Co') AS Position_Co
FROM suppliers;

-- 6. Find the position of 'Express' in ShipperName.
SELECT 
    ShipperName,
    INSTR(ShipperName, 'Express') AS Position_Express
FROM shippers;

-- 7. Find the position of 'Ltd' in CompanyName (if applicable).

-- 8. Find the position of 'Box' in QuantityPerUnit for all products.
SELECT 
    ProductName,
    QuantityPerUnit,
    INSTR(QuantityPerUnit, 'Box') AS Position_Box
FROM products;

-- 9. Find the position of 'Germany' in Country.
SELECT 
    CustomerName,
    Country,
    INSTR(Country, 'Germany') AS Position_Germany
FROM customers;

-- 10. Find the position of 'Cheese' in DescriptionText for categories.
SELECT 
    CategoryName,
    DescriptionText,
    INSTR(DescriptionText, 'Cheese') AS Position_Cheese
FROM categories;

-- 11. Find the position of 'Maria' in ContactName.
SELECT 
    ContactName,
    INSTR(ContactName, 'Maria') AS Position_Maria
FROM customers;

-- 12. Find the position of 'Beer' in ProductName.
SELECT 
    ProductName,
    INSTR(ProductName, 'Beer') AS Position_Beer
FROM products;

-- 13. Find the position of 'USA' in Country for suppliers.
SELECT 
    SupplierName,
    Country,
    INSTR(Country, 'USA') AS Position_USA
FROM suppliers;

-- 14. Find the position of 'Street' in Address for employees.

-- 15. Find the position of 'Ale' in ProductName.
SELECT 
    ProductName,
    INSTR(ProductName, 'Ale') AS Position_Ale
FROM products;

-- 16. Find the position of 'Tokyo' in City for suppliers.
SELECT 
    SupplierName,
    City,
    INSTR(City, 'Tokyo') AS Position_Tokyo
FROM suppliers;

-- 17. Find the position of 'Co' in CustomerName.
SELECT 
    CustomerName,
    INSTR(CustomerName, 'Co') AS Position_Co
FROM customers;

-- 18. Find the position of 'Delivery' in ShipperName.
SELECT 
    ShipperName,
    INSTR(ShipperName, 'Delivery') AS Position_Delivery
FROM shippers;

-- 19. Find the position of 'Condiments' in CategoryName.
SELECT 
    CategoryName,
    INSTR(CategoryName, 'Condiments') AS Position_Condiments
FROM categories;

-- 20. Find the position of 'Box' in QuantityPerUnit for products supplied by SupplierID = 1.
SELECT 
    ProductName,
    QuantityPerUnit,
    INSTR(QuantityPerUnit, 'Box') AS Position_Box
FROM products
WHERE SupplierID = 1;
