-- =============================================
-- WINDOW FUNCTIONS (OVER()) PRACTICE
-- SUM, AVG, COUNT, RANK, ROW_NUMBER, LAG, LEAD, etc.
-- =============================================


-- 1. Display each order with its total order amount and running total (SUM() OVER()).

-- 2. For each employee, show each order + total sales per employee (SUM() OVER(PARTITION BY)).

-- 3. Show each product with total ordered quantity + rank based on quantity sold (RANK()).

-- 4. Display customers with each order + average order amount per customer (AVG() OVER()).

-- 5. For each category, list products with price + maximum price in category (MAX() OVER()).

-- 6. Show each order + difference from customer's average order amount (AVG OVER + arithmetic).

-- 7. Display top 3 best-selling products per category (ROW_NUMBER() OVER(PARTITION BY ORDER BY)).

-- 8. Show customers + their orders + total number of orders (COUNT() OVER()).

-- 9. For each employee, show each order + highest order amount (MAX() OVER()).

-- 10. List products with cumulative quantity sold (running SUM).

-- 11. For each supplier, list products + supplier’s average unit price (AVG() OVER()).

-- 12. Show each order + number of previous orders (ROWS BETWEEN).

-- 13. For each customer, show orders + order rank based on date (ROW_NUMBER()).

-- 14. Display categories with prices + difference from category minimum (MIN() OVER()).

-- 15. For each shipper, list orders + percentage of total shipped revenue (SUM() OVER()).

-- 16. Show products with total sales + dense rank across all categories (DENSE_RANK()).

-- 17. For each country, list customers + total orders + country-wise rank.

-- 18. Display all orders + previous order amount (LAG()).

-- 19. Display all orders + next order amount (LEAD()).

-- 20. For each product, total sales + moving average of sales (window AVG).

-- 21. For each supplier, show products + running count of products (COUNT OVER ORDER BY).

-- 22. List employees + each order + employee’s minimum order amount (MIN OVER()).

-- 23. Show customers + orders + running order count per customer.

-- 24. For each category, display products + revenue rank (RANK() OVER(PARTITION BY)).

-- 25. Show suppliers + products + difference between product price and supplier average.

-- 26. For each product, total sales + ratio to highest sales (MAX() OVER()).

-- 27. Show each order + running highest order amount (running MAX()).

-- 28. For each customer, show orders + order streak (ROW_NUMBER()).

-- 29. For each employee, show orders + rolling average (AVG() OVER ORDER BY).

-- 30. For each category, list products + percentile rank (NTILE()).
