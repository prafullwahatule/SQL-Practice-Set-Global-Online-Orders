-- ===========================================================
-- TABLE: shippers
-- Purpose: Stores shipping companies information
-- ===========================================================

CREATE TABLE shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(100) NOT NULL,
    Phone VARCHAR(50)
);
-- ===========================================================
-- INSERT SHIPPER DATA (1–3)
-- ===========================================================

INSERT INTO shippers (ShipperID, ShipperName, Phone) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');
