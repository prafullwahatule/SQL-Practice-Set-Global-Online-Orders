-- =============================================
-- CONDITIONAL FUNCTION: CASE / IF  
-- Definition:
-- CASE (or IF in some SQL dialects) allows conditional logic in queries.
-- Example: 
-- SELECT ProductName, 
--        CASE 
--            WHEN UnitPrice < 10 THEN 'Cheap'
--            WHEN UnitPrice BETWEEN 10 AND 20 THEN 'Moderate'
--            ELSE 'Expensive'
--        END AS PriceCategory
-- FROM products;
-- =============================================

-- 1. Show ProductName and categorize UnitPrice as 'Cheap' (< 10), 'Moderate' (10–20), 'Expensive' (> 20).

-- 2. Show CustomerName and label 'Domestic' if Country = 'USA', else 'International'.

-- 3. Show UnitsInStock and label 'Out of Stock' if 0, else 'In Stock'.

-- 4. Show ProductName and label 'Discontinued' if Discontinued = 1, else 'Available'.

-- 5. Show Employee FirstName and label 'Senior' if BirthDate < '1960-01-01', else 'Junior'.

-- 6. Show OrderID and label 'Shipped by Speedy Express' if ShipperID = 1, else 'Other Shipper'.

-- 7. Show Quantity and label 'High Quantity' if >= 50, else 'Normal Quantity'.

-- 8. Show UnitPrice and label 'Low' if < 15, 'Medium' if 15–25, 'High' if > 25.

-- 9. Show CustomerName and label 'European' if Country IN ('Germany', 'France', 'UK', 'Sweden'), else 'Non-European'.

-- 10. Show UnitsOnOrder and label 'Pending Orders' if > 0, else 'No Pending Orders'.

-- 11. Show CategoryName and label 'Beverage Category' if CategoryID = 1, else 'Other Category'.

-- 12. Show City and label 'Capital City' if City IN ('Berlin', 'London', 'Tokyo'), else 'Other City'.

-- 13. Show ProductName and label 'Special Offer' if UnitsInStock < 20, else 'Regular'.

-- 14. Show EmployeeID and label 'Experienced' if EmployeeID <= 5, else 'New Employee'.

-- 15. Show SupplierName and label 'Local Supplier' if Country = 'USA', else 'International Supplier'.

-- 16. Show CustomerName and label 'VIP' if CustomerID <= 10, else 'Regular'.

-- 17. Show OrderDate and label 'Old Order' if < '1996-07-10', else 'Recent Order'.

-- 18. Show ShipperName and label 'Fast Delivery' if ShipperID = 1, else 'Standard Delivery'.

-- 19. Show UnitPrice and label 'Discount Eligible' if > 20, else 'No Discount'.

-- 20. Show QuantityPerUnit and label 'Bulk Pack' if QuantityPerUnit LIKE '%boxes%', else 'Single Pack'.

-- 21. Show CustomerName and label 'High PostalCode' if PostalCode >= '5000', else 'Low PostalCode'.

-- 22. Show UnitsInStock and label 'Low Stock' if UnitsInStock < 10, 'Medium Stock' if 10–50, 'High Stock' if > 50.

-- 23. Show ProductName and label 'Top Supplier' if SupplierID IN (1, 2, 3), else 'Other Supplier'.

-- 24. Show Discontinued and label 'Yes' if 1, else 'No'.

-- 25. Show OrderID and label 'Weekend Order' if DAYOFWEEK(OrderDate) IN (1, 7), else 'Weekday Order'.

-- 26. Show CustomerName and label 'Short Name' if LENGTH(CustomerName) <= 10, else 'Long Name'.

-- 27. Show ProductName and label 'Reorder Needed' if UnitsInStock <= ReorderLevel, else 'Stock OK'.

-- 28. Show EmployeeID and label 'Eligible for Bonus' if EmployeeID IN (1,3,5,7), else 'Not Eligible'.

-- 29. Show CategoryName and label 'Popular Category' if CategoryID IN (1,2,3), else 'Other Category'.

-- 30. Show UnitPrice and label 'High Value Product' if UnitPrice > 25, 'Medium Value Product' if 15–25, 'Low Value Product' if < 15.
