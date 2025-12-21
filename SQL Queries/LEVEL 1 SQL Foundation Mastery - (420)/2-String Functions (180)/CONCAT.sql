-- =============================================
-- STRING FUNCTION: CONCAT  
-- Definition: CONCAT() is used to combine two or more strings into a single string.
-- Example: CONCAT('Hello', ' ', 'World') returns 'Hello World'.
-- =============================================

-- 1. Concatenate CustomerName and City for all customers.
SELECT
	CONCAT(CustomerName, " - ", City) AS Cust_with_city
FROM customers;

-- 2. Concatenate FirstName and LastName for all employees.
SELECT 
	CONCAT(FirstName, " ",LastName) AS Full_Name
FROM employees;

-- 3. Concatenate ProductName and CategoryName for all products.
SELECT 
	CONCAT(ProductName, " ", CategoryID) AS Product_With_ID
FROM products;

-- 4. Concatenate ShipperName and Phone for all shippers.
SELECT 
	CONCAT(ShipperName, " ",Phone) AS Shipper_with_Phone
FROM shippers;

-- 5. Concatenate SupplierName and City for all suppliers.
SELECT 
	CONCAT(SupplierName, " ",City) AS suppliers_with_city
FROM suppliers;

-- 6. Concatenate CustomerName, City, and Country for all customers.
SELECT 
	CONCAT(CustomerName, " ", City, " ", Country) AS Cust_with_city_and_country
FROM customers;

-- 7. Concatenate FirstName, LastName, and BirthDate for all employees.
SELECT
	CONCAT(FirstName," - ", LastName," - ", BirthDate) AS emp_info
FROM employees;

-- 8. Concatenate ProductName and QuantityPerUnit for all products.
SELECT
	CONCAT( ProductName, " ", QuantityPerUnit) AS product_with_quantity
FROM products;

-- 9. Concatenate OrderID and CustomerID for all orders.
SELECT 
	CONCAT(OrderID, " - ", CustomerID) AS orderid_with_customerid
FROM orders;

-- 10. Concatenate EmployeeID and OrderID for all orders.
SELECT 
	CONCAT(EmployeeID, "-", OrderID) AS EmpID_with_odr_ID
FROM orders;

-- 11. Concatenate SupplierName and ContactName for all suppliers.
SELECT 
    CONCAT(SupplierName, ' - ', ContactName) AS Supplier_Details
FROM suppliers;

-- 12. Concatenate CategoryName and DescriptionText for all categories.
SELECT 
    CONCAT(CategoryName, ': ', DescriptionText) AS Category_Info
FROM categories;

-- 13. Concatenate ProductName, UnitPrice, and UnitsInStock for all products.
SELECT 
    CONCAT(ProductName, ' | Price: ', UnitPrice, ' | Stock: ', UnitsInStock) AS Product_Details
FROM products;

-- 14. Concatenate CustomerName and PostalCode for all customers.
SELECT 
    CONCAT(CustomerName, ' - ', PostalCode) AS Customer_Info
FROM customers;

-- 15. Concatenate FirstName, LastName for all employees.
SELECT 
    CONCAT(FirstName, ' ', LastName) AS Employee_Name
FROM employees;

-- 16. Concatenate ShipperName, Phone, and ShipperID for all shippers.
SELECT 
    CONCAT(ShipperName, ' | ', Phone, ' | ID: ', ShipperID) AS Shipper_Details
FROM shippers;

-- 17. Concatenate OrderID, ProductID, and Quantity for order_details.
SELECT 
    CONCAT('Order:', OrderID, ' Product:', ProductID, ' Qty:', Quantity) AS Order_Item_Info
FROM order_details;

-- 18. Concatenate CategoryName, ProductName, and SupplierName for products.
SELECT 
    CONCAT(c.CategoryName, ' | ', p.ProductName, ' | ', s.SupplierName) AS Product_Full_Details
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID
JOIN suppliers s ON p.SupplierID = s.SupplierID;

-- 19. Concatenate CustomerName, ContactName, and Address for all customers.
SELECT 
    CONCAT(CustomerName, ' | ', ContactName, ' | ', Address) AS Customer_Details
FROM customers;

-- 20. Concatenate Employee FirstName, LastName, and BirthDate formatted as a string.
SELECT 
    CONCAT(FirstName, ' ', LastName, ' | DOB: ', DATE_FORMAT(BirthDate, '%d-%b-%Y')) AS Employee_Info
FROM employees;
