-- =============================================
-- WINDOW FUNCTIONS: ORDER BY INSIDE WINDOW
-- Using ROW_NUMBER(), RANK(), DENSE_RANK(), SUM(), LAG(), LEAD(), NTILE() with ORDER BY
-- =============================================

-- 1. For each customer, list orders and assign order numbers (1st, 2nd, 3rd) based on OrderDate using ROW_NUMBER() OVER(PARTITION BY CustomerID ORDER BY OrderDate).

-- 2. For each employee, show orders ranked by highest order amount using RANK() OVER(PARTITION BY EmployeeID ORDER BY OrderAmount DESC).

-- 3. For each product, list all order_details and sort by quantity using DENSE_RANK() OVER(PARTITION BY ProductID ORDER BY Quantity DESC).

-- 4. For each customer, show orders + running total of order amounts using SUM() OVER(PARTITION BY CustomerID ORDER BY OrderDate).

-- 5. For each employee, show a running count of orders sorted by OrderDate.

-- 6. For each product, list orders + running total quantity sold ordered by OrderID.

-- 7. For each category, show products + assign a price ranking (highest to lowest).

-- 8. For each supplier, list products + assign a stock rank based on UnitsInStock.

-- 9. For each customer, show orders + difference from previous order amount using LAG().

-- 10. For each customer, show orders + next order date using LEAD().

-- 11. For each shipper, list orders and rank them by freight cost.

-- 12. For each employee, show orders + compute moving average order amount using window ORDER BY.

-- 13. For each category, show products + compute a running minimum price sorted by UnitPrice.

-- 14. For each product, show total sales + calculate the percentage of running total sales.

-- 15. For each customer, list orders + compute the gap between two consecutive orders (date difference).

-- 16. For each supplier, sort products by price + calculate price difference from previous product.

-- 17. For each category, sort products by UnitsOnOrder + calculate a running max.

-- 18. For each customer, sort orders by amount + find the top 3 order amounts.

-- 19. For each employee, list orders + calculate cumulative revenue handled by the employee.

-- 20. For each shipper, list orders sorted by freight + calculate running average freight cost.

-- 21. For each category, sort products by UnitPrice + assign quartile groups using NTILE(4).

-- 22. For each product, list all orders + calculate running revenue sorted by OrderID.

-- 23. For each supplier, sort products by UnitsInStock + calculate difference from category average using window avg ordered.

-- 24. For each employee, list orders + show how much each order contributes to running revenue (percentage).

-- 25. For each customer, sort orders by OrderDate + mark the first order of each year.

-- 26. For each order, sort order_details by Quantity + assign row numbers.

-- 27. For each category, sort products by price + get the second highest priced product (using ROW_NUMBER).

-- 28. For each product, sort order_details by quantity + compute running max quantity.

-- 29. For each supplier, sort products by UnitPrice + compute the ratio of price to previous product’s price.

-- 30. For each customer, sort orders by amount + categorize them into NTILE(5) bucket groups (low → high spenders).
