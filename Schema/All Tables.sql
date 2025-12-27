-- ===========================================================
-- TABLE: categories 
-- ===========================================================
-- This table stores information about product categories.
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each category
    CategoryName VARCHAR(100),           -- Name of the category
    DescriptionText VARCHAR(255)         -- Description of the category
);

-- ===========================================================
-- TABLE: suppliers
-- ===========================================================
-- This table stores information about suppliers who provide products.
CREATE TABLE suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each supplier
    SupplierName VARCHAR(150) NOT NULL,  -- Name of the supplier
    ContactName VARCHAR(100),            -- Contact person at the supplier
    Address VARCHAR(255),                -- Address of the supplier
    City VARCHAR(100),                   -- City where the supplier is located
    PostalCode VARCHAR(20),              -- Postal code
    Country VARCHAR(100),                -- Country
    Phone VARCHAR(50)                    -- Supplier's contact phone number
);

-- ===========================================================
-- TABLE: products
-- ===========================================================
-- This table stores information about products available in the system.
CREATE TABLE products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,           -- Unique identifier for each product
    ProductName VARCHAR(100) NOT NULL,   -- Name of the product
    SupplierID INT NOT NULL,             -- Foreign key referencing suppliers
    CategoryID INT NOT NULL,             -- Foreign key referencing categories
    QuantityPerUnit VARCHAR(50),         -- Quantity description (e.g., "10 boxes")
    UnitPrice DECIMAL(10,2),             -- Price per unit
    UnitsInStock INT,                     -- Number of units in stock
    UnitsOnOrder INT,                     -- Number of units on order
    ReorderLevel INT,                     -- Stock level at which reordering is needed
    Discontinued TINYINT DEFAULT 0,      -- Flag to indicate if the product is discontinued (0 = active)
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID)
);

-- ===========================================================
-- TABLE: customers
-- ===========================================================
-- This table stores information about customers.
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each customer
    CustomerName VARCHAR(150),           -- Name of the customer
    ContactName VARCHAR(150),            -- Contact person at the customer
    Address VARCHAR(255),                -- Address of the customer
    City VARCHAR(100),                   -- City
    PostalCode VARCHAR(20),              -- Postal code
    Country VARCHAR(100)                 -- Country
);

-- ===========================================================
-- TABLE: employees
-- ===========================================================
-- This table stores information about employees.
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,          -- Unique identifier for each employee
    LastName VARCHAR(100) NOT NULL,      -- Employee's last name
    FirstName VARCHAR(100) NOT NULL,     -- Employee's first name
    BirthDate DATE                       -- Employee's date of birth
);

-- ===========================================================
-- TABLE: shippers
-- ===========================================================
-- This table stores information about shipping companies.
CREATE TABLE shippers (
    ShipperID INT PRIMARY KEY AUTO_INCREMENT,           -- Unique identifier for each shipper
    ShipperName VARCHAR(100) NOT NULL,   -- Name of the shipping company
    Phone VARCHAR(50)                     -- Contact phone number for the shipper
);

-- ===========================================================
-- TABLE: orders
-- ===========================================================
-- This table stores information about customer orders.
CREATE TABLE orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,             -- Unique identifier for each order
    CustomerID INT NOT NULL,             -- Foreign key referencing customers
    EmployeeID INT NOT NULL,             -- Foreign key referencing employees
    OrderDate DATE NOT NULL,             -- Date of the order
    ShipperID INT NOT NULL,              -- Foreign key referencing shippers
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
    FOREIGN KEY (ShipperID) REFERENCES shippers(ShipperID)
);

-- ===========================================================
-- TABLE: order_details
-- ===========================================================
-- This table stores the details of each order, including which products were ordered and in what quantity.
CREATE TABLE order_details (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,       -- Unique identifier for each order detail
    OrderID INT NOT NULL,                -- Foreign key referencing orders
    ProductID INT NOT NULL,              -- Foreign key referencing products
    Quantity INT NOT NULL,               -- Quantity of the product ordered
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);