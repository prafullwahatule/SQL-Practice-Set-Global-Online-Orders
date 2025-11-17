-- ===========================================================
-- TABLE: products
-- Purpose: Stores product master data
-- ===========================================================
CREATE TABLE products (
    ProductID INT PRIMARY KEY,                     -- Unique product ID
    ProductName VARCHAR(100) NOT NULL,             -- Name of the product
    ShipperID INT,                                -- Optional: can add suppliers table later
    CategoryID INT,                                -- Foreign key: links to categories table
    QuantityPerUnit VARCHAR(50),                   -- Packaging details (units per order)
    UnitPrice DECIMAL(10,2),                       -- Price per unit
    UnitsInStock INT,                              -- Current stock
    UnitsOnOrder INT,                              -- Pending purchase orders
    ReorderLevel INT,                              -- Minimum stock before reorder
    Discontinued TINYINT DEFAULT 0,                -- 0 = active, 1 = discontinued
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID)
);

-- ===========================================================
-- INSERT PRODUCTS DATA
-- ===========================================================


INSERT INTO products 
(ProductID, ProductName, ShipperID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES
(1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.00, 39, 0, 10, 0),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.00, 17, 40, 25, 0),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.00, 13, 70, 25, 0),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 1),
(6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, 0),
(7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, 0),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, 1),
(10, 'Ikura', 4, 8, '12 - 200 g jars', 31.00, 31, 0, 0, 0),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.00, 22, 30, 30, 0),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.00, 86, 0, 0, 0),
(13, 'Konbu', 6, 8, '2 kg box', 6.00, 24, 0, 5, 0),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, 0),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.50, 39, 0, 5, 0),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, 0),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.00, 0, 0, 0, 1),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.50, 42, 0, 0, 0),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.20, 25, 0, 5, 0),
(20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81.00, 40, 0, 0, 0),
(21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.00, 3, 40, 5, 0),
(22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21.00, 104, 0, 25, 0),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9.00, 61, 0, 25, 0),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.50, 20, 0, 0, 1),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.00, 76, 0, 30, 0),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23, 15, 0, 0, 0),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.90, 49, 0, 30, 0),
(28, 'Rössle Sauerkraut', 12, 2, '25 - 825 g cans', 45.60, 26, 0, 0, 1),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, 1),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, 0),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs.', 12.50, 0, 70, 20, 1),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.00, 9, 40, 25, 0),
(33, 'Geitost', 15, 4, '500 g', 2.50, 112, 0, 20, 0),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.00, 111, 0, 15, 0),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.00, 20, 0, 15, 0),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19.00, 112, 0, 20, 0),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.00, 11, 50, 25, 0),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.50, 17, 0, 15, 0),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.00, 69, 0, 5, 0),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.40, 123, 0, 30, 0);
