-- ===========================================================
-- TABLE: employees
-- Photo & Notes column removed
-- Note: Photo & Notes columns removed as requested
-- ===========================================================
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,                -- Unique employee ID
    LastName VARCHAR(100) NOT NULL,            -- Employee last name
    FirstName VARCHAR(100) NOT NULL,           -- Employee first name
    BirthDate DATE                             -- Employee birth date
);

-- ===========================================================
-- INSERT EMPLOYEE DATA (1–10)
-- ===========================================================

INSERT INTO employees (EmployeeID, LastName, FirstName, BirthDate) VALUES
(1, 'Davolio', 'Nancy', '1968-12-08'),
(2, 'Fuller', 'Andrew', '1952-02-19'),
(3, 'Leverling', 'Janet', '1963-08-30'),
(4, 'Peacock', 'Margaret', '1958-09-19'),
(5, 'Buchanan', 'Steven', '1955-03-04'),
(6, 'Suyama', 'Michael', '1963-07-02'),
(7, 'King', 'Robert', '1960-05-29'),
(8, 'Callahan', 'Laura', '1958-01-09'),
(9, 'Dodsworth', 'Anne', '1969-07-02'),
(10, 'West', 'Adam', '1928-09-19');
