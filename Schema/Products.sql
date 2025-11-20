-- ===========================================================
-- TABLE: products
-- Purpose: Stores product master data
-- ===========================================================
CREATE TABLE products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT NOT NULL,
    CategoryID INT NOT NULL,
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued TINYINT DEFAULT 0,
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID)
);

-- ===========================================================
-- INSERT PRODUCTS DATA
-- ===========================================================
INSERT INTO products 
(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES
(1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.00, 39, 0, 10, 0),
(2, 'Chang', 7, 1, '24 - 12 oz bottles', 19.00, 17, 40, 25, 0),
(3, 'Aniseed Syrup', 12, 2, '12 - 550 ml bottles', 10.00, 13, 70, 25, 0),
(4, 'Chef Anton''s Cajun Seasoning', 4, 2, '48 - 6 oz jars', 22.00, 53, 0, 0, 0),
(5, 'Chef Anton''s Gumbo Mix', 17, 2, '36 boxes', 21.35, 0, 0, 0, 1),
(6, 'Grandma''s Boysenberry Spread', 9, 2, '12 - 8 oz jars', 25.00, 120, 0, 25, 0),
(7, 'Uncle Bob''s Organic Dried Pears', 22, 7, '12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.00, 6, 0, 0, 0),
(9, 'Mishi Kobe Niku', 18, 6, '18 - 500 g pkgs.', 97.00, 29, 0, 0, 1),
(10, 'Ikura', 5, 8, '12 - 200 g jars', 31.00, 31, 0, 0, 0),
(11, 'Queso Cabrales', 11, 4, '1 kg pkg.', 21.00, 22, 30, 30, 0),
(12, 'Queso Manchego La Pastora', 6, 4, '10 - 500 g pkgs.', 38.00, 86, 0, 0, 0),
(13, 'Konbu', 14, 8, '2 kg box', 6.00, 24, 0, 5, 0),
(14, 'Tofu', 2, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, 0),
(15, 'Genen Shouyu', 29, 2, '24 - 250 ml bottles', 15.50, 39, 0, 5, 0),
(16, 'Pavlova', 8, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, 0),
(17, 'Alice Mutton', 16, 6, '20 - 1 kg tins', 39.00, 0, 0, 0, 1),
(18, 'Carnarvon Tigers', 25, 8, '16 kg pkg.', 62.50, 42, 0, 0, 0),
(19, 'Teatime Chocolate Biscuits', 10, 3, '10 boxes x 12 pieces', 9.20, 25, 0, 5, 0),
(20, 'Sir Rodney''s Marmalade', 3, 3, '30 gift boxes', 81.00, 40, 0, 0, 0),
(21, 'Sir Rodney''s Scones', 14, 3, '24 pkgs. x 4 pieces', 10.00, 3, 40, 5, 0),
(22, 'Gustaf''s Knäckebröd', 21, 5, '24 - 500 g pkgs.', 21.00, 104, 0, 25, 0),
(23, 'Tunnbröd', 8, 5, '12 - 250 g pkgs.', 9.00, 61, 0, 25, 0),
(24, 'Guaraná Fantástica', 19, 1, '12 - 355 ml cans', 4.50, 20, 0, 0, 1),
(25, 'NuNuCa Nuß-Nougat-Creme', 27, 3, '20 - 450 g glasses', 14.00, 76, 0, 30, 0),
(26, 'Gumbär Gummibärchen', 1, 3, '100 - 250 g bags', 31.23, 15, 0, 0, 0),
(27, 'Schoggi Schokolade', 5, 3, '100 - 100 g pieces', 43.90, 49, 0, 30, 0),
(28, 'Rössle Sauerkraut', 12, 2, '25 - 825 g cans', 45.60, 26, 0, 0, 1),
(29, 'Thüringer Rostbratwurst', 9, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, 1),
(30, 'Nord-Ost Matjeshering', 7, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, 0),
(31, 'Gorgonzola Telino', 13, 4, '12 - 100 g pkgs.', 12.50, 0, 70, 20, 1),
(32, 'Mascarpone Fabioli', 18, 4, '24 - 200 g pkgs.', 32.00, 9, 40, 25, 0),
(33, 'Geitost', 2, 4, '500 g', 2.50, 112, 0, 20, 0),
(34, 'Sasquatch Ale', 9, 1, '24 - 12 oz bottles', 14.00, 111, 0, 15, 0),
(35, 'Steeleye Stout', 24, 1, '24 - 12 oz bottles', 18.00, 20, 0, 15, 0),
(36, 'Inlagd Sill', 6, 8, '24 - 250 g jars', 19.00, 112, 0, 20, 0),
(37, 'Gravad lax', 11, 8, '12 - 500 g pkgs.', 26.00, 11, 50, 25, 0),
(38, 'Côte de Blaye', 28, 1, '12 - 75 cl bottles', 263.50, 17, 0, 15, 0),
(39, 'Chartreuse verte', 15, 1, '750 cc per bottle', 18.00, 69, 0, 5, 0),
(40, 'Boston Crab Meat', 20, 8, '24 - 4 oz tins', 18.40, 123, 0, 30, 0);
