-- ===========================================================
-- TABLE: categories
-- ===========================================================
CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    DescriptionText VARCHAR(255)
);

-- ===========================================================
-- TABLE: suppliers
-- ===========================================================
CREATE TABLE suppliers (
    SupplierID INT PRIMARY KEY,
    SuppliersName VARCHAR(150) NOT NULL,
    ContactName VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100),
    Phone VARCHAR(50)
);

-- ===========================================================
-- TABLE: products
-- ===========================================================
CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued TINYINT DEFAULT 0,
    FOREIGN KEY (SupplierID) REFERENCES suppliers(SupplierID),
    FOREIGN KEY (CategoryID) REFERENCES categories(CategoryID)
);

-- ===========================================================
-- TABLE: customers
-- ===========================================================
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(150),
    ContactName VARCHAR(150),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

-- ===========================================================
-- TABLE: employees
-- ===========================================================
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(100) NOT NULL,
    FirstName VARCHAR(100) NOT NULL,
    BirthDate DATE
);

-- ===========================================================
-- TABLE: shippers
-- ===========================================================
CREATE TABLE shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(100) NOT NULL,
    Phone VARCHAR(50)
);

-- ===========================================================
-- TABLE: orders
-- ===========================================================
CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    OrderDate DATE NOT NULL,
    ShipperID INT NOT NULL,

    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES employees(EmployeeID),
    FOREIGN KEY (ShipperID) REFERENCES shippers(ShipperID)
);

-- ===========================================================
-- TABLE: order_details
-- ===========================================================
CREATE TABLE order_details (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,

    FOREIGN KEY (OrderID) REFERENCES orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
);
