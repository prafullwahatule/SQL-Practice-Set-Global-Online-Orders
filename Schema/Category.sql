-- ===========================================================
-- Table: categories  
-- Purpose: Stores product category information  
-- Columns:
--   CategoryID      -> Unique ID for each category
--   CategoryName    -> Name of the product category
--   DescriptionText -> Short description of the category
-- ===========================================================

CREATE TABLE categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100),
    DescriptionText VARCHAR(255)
);

-- ===========================================================
-- Insert initial category data  
-- ===========================================================

INSERT INTO categories (CategoryID, CategoryName, DescriptionText) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),       -- Beverages category
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'), -- Condiments category
(3, 'Confections', 'Desserts, candies, and sweet breads'),             -- Confectionery items
(4, 'Dairy Products', 'Cheeses'),                                      -- Dairy category
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),          -- Grain and cereal products
(6, 'Meat/Poultry', 'Prepared meats'),                                 -- Meat and poultry
(7, 'Produce', 'Dried fruit and bean curd'),                           -- Fresh produce
(8, 'Seafood', 'Seaweed and fish');                                    -- Seafood category
