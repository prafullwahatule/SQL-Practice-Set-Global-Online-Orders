-- =============================================
-- SQL Multiple Table JOINs Practice
-- Using: INNER JOIN, LEFT JOIN, RIGHT JOIN with multiple tables
-- =============================================

-- 1. List all orders with customer name and employee name who handled them
SELECT 
	C.ContactName,
    CONCAT(E.FirstName, " ", E.LastName) AS Emp_Name,
    O.OrderID
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID;

-- 2. Show all orders with customer, employee, and shipper details
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN shippers S ON O.ShipperID = S.ShipperID;

-- 3. Retrieve order_details with product name, order date, and customer name
SELECT
    OD.OrderDetailID,
    P.ProductName,
    O.OrderDate,
    C.ContactName AS CustomerName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN orders O ON OD.OrderID = O.OrderID
JOIN customers C ON O.CustomerID = C.CustomerID;

-- 4. List products with supplier name and category name
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID;

-- 5. Show all orders with product names, customer names, and shipper names
SELECT
    O.OrderID,
    P.ProductName,
    C.ContactName AS CustomerName,
    S.ShipperName
FROM orders O
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN shippers S ON O.ShipperID = S.ShipperID;

-- 6. Find all order_details with product, order, and supplier details
SELECT
    OD.OrderDetailID,
    O.OrderID,
    P.ProductName,
    S.SupplierName
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID;

-- 7. List all customers and total quantity of products ordered along with product names
SELECT
    OD.OrderDetailID,
    O.OrderID,
    P.ProductName,
    S.SupplierName
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID;

-- 8. Show employees and orders they handled including products in each order
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    O.OrderID,
    P.ProductName
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID;

-- 9. Retrieve orders with customer name, employee name, and total quantity ordered
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    SUM(OD.Quantity) AS TotalQuantity
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
GROUP BY O.OrderID, C.ContactName, EmployeeName;

-- 10. List all products with supplier and category names where UnitsInStock > 0
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName,
    P.UnitsInStock
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock > 0;

-- 11. Show order_details along with product, supplier, and category information
SELECT
    OD.OrderDetailID,
    P.ProductName,
    S.SupplierName,
    C.CategoryName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID;

-- 12. Find orders with customer, shipper, and total order quantity
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    S.ShipperName,
    SUM(OD.Quantity) AS TotalQuantity
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN shippers S ON O.ShipperID = S.ShipperID
JOIN order_details OD ON O.OrderID = OD.OrderID
GROUP BY O.OrderID, C.ContactName, S.ShipperName;

-- 13. List products along with category and total UnitsOnOrder
SELECT
    ProductName,
    C.CategoryName,
    UnitsOnOrder
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID;

-- 14. Show customers with orders, product names, and UnitsInStock
SELECT
    C.ContactName AS CustomerName,
    O.OrderID,
    P.ProductName,
    P.UnitsInStock
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID;

-- 15. Retrieve employees and orders they handled with product UnitPrice
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    O.OrderID,
    P.ProductName,
    P.UnitPrice
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID;

-- 16. List suppliers and all products in their categories
SELECT
    S.SupplierName,
    P.ProductName,
    C.CategoryName
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID;

-- 17. Show orders along with employee name, customer name, and product UnitPrice
SELECT
    O.OrderID,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    C.ContactName AS CustomerName,
    P.ProductName,
    P.UnitPrice
FROM orders O
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID;

-- 18. Find customers and products they ordered along with supplier name
SELECT
    C.ContactName AS CustomerName,
    P.ProductName,
    S.SupplierName
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID;

-- 19. List products with UnitsInStock, supplier, and category name where UnitPrice > 20
SELECT
    P.ProductName,
    P.UnitsInStock,
    S.SupplierName,
    C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice > 20;

-- 20. Show order_details along with product, order, customer, and employee details
SELECT
    OD.OrderDetailID,
    O.OrderID,
    P.ProductName,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID;

-- 21. Retrieve orders with customer, shipper, and employee details where OrderDate in July 1996
SELECT
    O.OrderID,
    O.OrderDate,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN shippers S ON O.ShipperID = S.ShipperID
WHERE O.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 22. List products with supplier and order_details including Quantity ordered > 10
SELECT
    P.ProductName,
    S.SupplierName,
    OD.Quantity
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN order_details OD ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 10;

-- 23. Show customers and all products they ordered with supplier and category info
SELECT
    C.ContactName AS CustomerName,
    P.ProductName,
    S.SupplierName,
    CA.CategoryName
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories CA ON P.CategoryID = CA.CategoryID;

-- 24. Find employees and total quantity they handled grouped by product and customer
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    C.CustomerName,
    P.ProductName,
    SUM(OD.Quantity) AS TotalQuantity
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
GROUP BY EmployeeName, C.CustomerName, P.ProductName;

-- 25. List orders with product, customer, and total UnitPrice (UnitPrice × Quantity)
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName,
    (P.UnitPrice * OD.Quantity) AS Total_Price
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID;

-- 26. Show suppliers and products along with total UnitsInStock per category
SELECT
    C.CategoryName,
    S.SupplierID,
    S.SupplierName,
    SUM(P.UnitsInStock) AS TotalUnitsInStock
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
GROUP BY
    C.CategoryName,
    S.SupplierID,
    S.SupplierName;

-- 27. Retrieve orders with customer, product, and supplier where UnitPrice > 25
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName,
    S.SupplierName,
    P.UnitPrice
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice > 25;

-- 28. List products, supplier, and category names where products are discontinued
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.Discontinued = 1;

-- 29. Show order_details along with order, customer, product, and shipper details
SELECT
    OD.OrderDetailID,
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName,
    S.ShipperName
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN products P ON OD.ProductID = P.ProductID
JOIN shippers S ON O.ShipperID = S.ShipperID;

-- 30. Find employees and total UnitsInStock of products in orders they handled 
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    SUM(P.UnitsInStock) AS TotalUnitsInStock
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
GROUP BY EmployeeName;

-- 31. List customers and total quantity ordered grouped by product and supplier
SELECT
    C.ContactName AS CustomerName,
    P.ProductName,
    S.SupplierName,
    SUM(OD.Quantity) AS TotalQuantity
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
GROUP BY CustomerName, P.ProductName, S.SupplierName;

-- 32. Show orders with customer, employee, and product details for CategoryID = 1
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    P.ProductName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE P.CategoryID = 1;

-- 33. Retrieve products and orders along with supplier, category, and UnitsOnOrder
SELECT
    O.OrderID,
    P.ProductName,
    S.SupplierName,
    C.CategoryName,
    P.UnitsOnOrder
FROM orders O
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID;

-- 34. List orders with employee, customer, and total UnitPrice per order
SELECT
    O.OrderID,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    C.ContactName AS CustomerName,
    SUM(P.UnitPrice * OD.Quantity) AS TotalOrderPrice
FROM orders O
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
GROUP BY O.OrderID, EmployeeName, CustomerName;

-- 35. Show suppliers and products along with orders they were included in
SELECT
    S.SupplierName,
    P.ProductName,
    O.OrderID
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
JOIN order_details OD ON P.ProductID = OD.ProductID
JOIN orders O ON OD.OrderID = O.OrderID;

-- 36. Find customers and total number of products ordered per category
SELECT
    C.CustomerName,
    CA.CategoryName,
    SUM(OD.Quantity) AS TotalProductsOrdered
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN categories CA ON P.CategoryID = CA.CategoryID
GROUP BY C.CustomerName, CA.CategoryName;

-- 37. List products along with supplier, category, and orders with quantity > 5
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName,
    OD.Quantity
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN order_details OD ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 5;

-- 38. Show order_details, orders, customers, and products where Quantity >= 10
SELECT
    OD.OrderDetailID,
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName,
    OD.Quantity
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity >= 10;

-- 39. Retrieve employees and all products in the orders they handled with supplier info
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    P.ProductName,
    S.SupplierName
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID;

-- 40. List products, category, and total UnitsOnOrder grouped by supplier
SELECT
    S.SupplierName,
    C.CategoryName,
    SUM(P.UnitsOnOrder) AS TotalUnitsOnOrder
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
GROUP BY S.SupplierName, C.CategoryName;

-- 41. Show orders along with customer, product, employee, and shipper details where Quantity > 15
SELECT
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    S.ShipperName,
    OD.Quantity
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN shippers S ON O.ShipperID = S.ShipperID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 15;

-- 42. Find suppliers and products with UnitsInStock < 20 along with category name
SELECT
    S.SupplierName,
    P.ProductName,
    C.CategoryName,
    P.UnitsInStock
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock < 20;

-- 43. List customers with orders, products, and suppliers where UnitPrice > 20
SELECT
    C.ContactName AS CustomerName,
    O.OrderID,
    P.ProductName,
    S.SupplierName,
    P.UnitPrice
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice > 20;

-- 44. Show products along with supplier, category, and order details including order date
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName,
    O.OrderDate,
    OD.Quantity
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN order_details OD ON P.ProductID = OD.ProductID
JOIN orders O ON OD.OrderID = O.OrderID;

-- 45. Retrieve order_details, orders, products, and customers for ShipperID = 1
SELECT
    OD.OrderDetailID,
    O.OrderID,
    C.ContactName AS CustomerName,
    P.ProductName
FROM order_details OD
JOIN orders O ON OD.OrderID = O.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN customers C ON O.CustomerID = C.CustomerID
WHERE O.ShipperID = 1;

-- 46. List employees and all orders with product details grouped by category
SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    C.CategoryName,
    O.OrderID,
    P.ProductName,
    SUM(OD.Quantity) AS TotalQuantity
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN categories C ON P.CategoryID = C.CategoryID
GROUP BY
    EmployeeName,
    C.CategoryName,
    O.OrderID,
    P.ProductName;

-- 47. Show customers, orders, order_details, and products where Quantity > 10 and UnitPrice > 15
SELECT
    C.ContactName AS CustomerName,
    O.OrderID,
    P.ProductName,
    OD.Quantity,
    P.UnitPrice
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 10
  AND P.UnitPrice > 15;

-- 48. Find products, suppliers, categories, and total quantity ordered per product
SELECT
    P.ProductName,
    S.SupplierName,
    C.CategoryName,
    SUM(OD.Quantity) AS TotalQuantityOrdered
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN order_details OD ON P.ProductID = OD.ProductID
GROUP BY
    P.ProductName,
    S.SupplierName,
    C.CategoryName;

-- 49. List orders with customer, employee, product, and supplier details for July 1996
SELECT
    O.OrderID,
    O.OrderDate,
    C.ContactName AS CustomerName,
    CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
    P.ProductName,
    S.SupplierName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE O.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 50. Show all customers, orders, products, suppliers, and categories including UnitPrice and UnitsInStock
SELECT
    C.ContactName AS CustomerName,
    O.OrderID,
    P.ProductName,
    S.SupplierName,
    CA.CategoryName,
    P.UnitPrice,
    P.UnitsInStock
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories CA ON P.CategoryID = CA.CategoryID;
