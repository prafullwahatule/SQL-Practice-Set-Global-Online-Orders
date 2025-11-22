-- =============================================
-- CORRELATED SUBQUERY PRACTICE QUESTIONS
-- =============================================

-- ============================
-- PRODUCTS
-- ============================

-- 1. Find products whose UnitPrice is higher than the average UnitPrice 
--    of other products in the same category.

-- 2. List products whose UnitsInStock is lower than the average UnitsInStock 
--    of all products from the same supplier.

-- 3. Retrieve products that are the most expensive product within their category.

-- 4. Find products that have a UnitPrice greater than every other product 
--    from the same supplier.

-- 5. List products where UnitsOnOrder is greater than the total UnitsOnOrder 
--    of all other products in the same category.


-- ============================
-- SUPPLIERS
-- ============================

-- 6. Find suppliers who supply more products than the average number 
--    of products supplied by all suppliers.

-- 7. Retrieve suppliers who supply at least one product priced higher 
--    than the average UnitPrice of that product’s category.

-- 8. List suppliers who supply products with UnitsInStock below the 
--    average UnitsInStock within each category.

-- 9. Show suppliers whose average product price is higher than the 
--    average price of products for all suppliers.

-- 10. Find suppliers that supply the cheapest product in their country.


-- ============================
-- CUSTOMERS
-- ============================

-- 11. Find customers who have placed more orders than the average order count 
--     of customers in their country.

-- 12. List customers whose total quantity ordered is greater than the total quantity 
--     ordered by any other customer in the same city.

-- 13. Retrieve customers who placed at least one order containing a product 
--     whose UnitPrice is greater than the average UnitPrice purchased by that customer.

-- 14. Find customers whose latest order date is earlier than the latest order date 
--     of other customers in the same country.

-- 15. Show customers who ordered a product more times than any other customer 
--     ordered that same product.


-- ============================
-- EMPLOYEES
-- ============================

-- 16. List employees whose age is lower than the average age of employees 
--     who processed orders for the same customers they served.

-- 17. Find employees who handled more orders than the average orders handled 
--     by employees with the same birth decade.

-- 18. Retrieve employees whose total quantity processed in orders is greater 
--     than the total quantity processed by all other employees.

-- 19. Show employees who shipped orders faster than the average shipping speed 
--     of other employees.

-- 20. List employees who processed orders for customers that no other employee processed.


-- ============================
-- ORDERS
-- ============================

-- 21. Find orders whose OrderDate is earlier than the average OrderDate 
--     of all orders by the same customer.

-- 22. List orders where the freight is higher than the average freight 
--     charged by the same shipper.

-- 23. Retrieve orders whose total quantity (in order_details) is greater 
--     than the total quantity of all other orders placed on the same date.

-- 24. Show orders that include at least one product whose price is higher 
--     than the average price of products in that order.

-- 25. Find orders whose employee handled fewer total orders than the 
--     average orders handled by employees in that same month.


-- ============================
-- ORDER DETAILS
-- ============================

-- 26. Find order_details where Quantity is greater than the average quantity 
--     for products in the same category.

-- 27. List order_details for which the product was ordered more frequently 
--     by this customer than any other customer.

-- 28. Retrieve order_details where the price of the product is higher 
--     than the average price of all products in other order_details 
--     of the same OrderID.

-- 29. Show order_details where quantity exceeds the average quantity ordered 
--     by the same employee across all their orders.

-- 30. Find order_details where the product belongs to a category that the 
--     ordering customer has purchased more than any other category.
