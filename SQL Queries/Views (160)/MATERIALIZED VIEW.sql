-- =============================================
-- MATERIALIZED VIEW (CONCEPT)  
-- Definition:
-- A materialized view is a database object that stores the result of a query physically.
-- Unlike a normal view, which calculates the result dynamically at runtime,
-- a materialized view stores data for faster query performance, especially for complex aggregations.
-- Materialized views can be refreshed periodically to reflect changes in the underlying tables.
-- =============================================

-- 1. Explain what a materialized view is and how it differs from a normal view.

-- 2. Create a materialized view showing total quantity of products per category.

-- 3. Create a materialized view showing total sales per customer.

-- 4. Create a materialized view showing the average UnitPrice per supplier.

-- 5. Explain when it is better to use a materialized view instead of a normal view.

-- 6. Create a materialized view showing the top 10 most expensive products.

-- 7. Create a materialized view showing employees along with total orders handled.

-- 8. Explain how to refresh a materialized view after the products table is updated.

-- 9. Create a materialized view showing customers along with the total number of orders.

-- 10. Create a materialized view showing total stock value per category (UnitPrice * UnitsInStock).

-- 11. Explain the difference between FAST REFRESH and COMPLETE REFRESH in materialized views.

-- 12. Create a materialized view showing orders along with product details and total quantity.

-- 13. Create a materialized view showing discontinued products grouped by category.

-- 14. Explain how a materialized view can improve performance in reporting dashboards.

-- 15. Create a materialized view showing suppliers who supply more than 5 products.

-- 16. Create a materialized view showing monthly order totals per customer.

-- 17. Explain how indexing a materialized view can improve query performance.

-- 18. Create a materialized view showing orders with high quantity products (Quantity > 30).

-- 19. Explain why materialized views may require more storage space than normal views.

-- 20. Create a materialized view showing top 5 customers with the most orders.

-- 21. Explain how to schedule automatic refresh of a materialized view.

-- 22. Create a materialized view showing average order quantity per employee.

-- 23. Explain what happens if the underlying products table changes but the materialized view is not refreshed.

-- 24. Create a materialized view showing suppliers along with total units supplied.

-- 25. Create a materialized view showing orders shipped by each shipper along with count.

-- 26. Explain the use of WITH DATA and WITH NO DATA in creating materialized views.

-- 27. Create a materialized view showing customers who have placed orders worth more than 1000 USD.

-- 28. Explain the difference between read-only and updatable materialized views.

-- 29. Create a materialized view showing product categories along with average UnitsInStock.

-- 30. Explain how partitioning a materialized view can help with performance.

-- 31. Create a materialized view showing total orders per month along with order details.

-- 32. Explain how to manually refresh a materialized view in Oracle or PostgreSQL.

-- 33. Create a materialized view showing orders along with customer country and order count.

-- 34. Explain why materialized views are useful in analytics and reporting.

-- 35. Create a materialized view showing products with stock below reorder level.

-- 36. Explain how materialized views can be used in Power BI or Tableau to improve query speed.

-- 37. Create a materialized view showing total sales per product category.

-- 38. Explain the potential drawbacks of using materialized views in OLTP systems.

-- 39. Create a materialized view showing top suppliers by number of products supplied.

-- 40. Explain how refresh frequency affects data accuracy in a materialized view.

-- 41. Create a materialized view showing average UnitPrice by category.

-- 42. Explain how a materialized view can help reduce CPU usage for complex joins.

-- 43. Create a materialized view showing employees who handled more than 10 orders.

-- 44. Explain the difference between a materialized view and a summary table.

-- 45. Create a materialized view showing customers who have not placed any orders.

-- 46. Explain the use of ON COMMIT refresh in materialized views.

-- 47. Create a materialized view showing monthly revenue per customer.

-- 48. Explain the use of query rewrite feature with materialized views.

-- 49. Create a materialized view showing products grouped by supplier and category.

-- 50. Explain how materialized views can be combined with indexes for faster queries.
