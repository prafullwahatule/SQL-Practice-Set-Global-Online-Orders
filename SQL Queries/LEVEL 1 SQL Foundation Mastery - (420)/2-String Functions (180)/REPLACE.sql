-- =============================================
-- STRING FUNCTION: REPLACE  
-- Definition: 
-- REPLACE(string, old_substring, new_substring) replaces all occurrences of old_substring with new_substring in the given string.
-- Example: REPLACE('Hello World', 'World', 'SQL') returns 'Hello SQL'
-- =============================================

-- 1. Replace 'Street' with 'St.' in all customer Address fields.
SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET Address = REPLACE(Address, 'Street', 'St.');

-- 2. Replace 'Road' with 'Rd.' in all supplier Address fields.
UPDATE suppliers
SET Address = REPLACE(Address, "Road", "Rd.");

-- 3. Replace 'Box' with 'Pack' in QuantityPerUnit for products.
UPDATE products
SET QuantityPerUnit = REPLACE(QuantityPerUnit, "Box", "Pack");

-- 4. Replace 'Co.' with 'Company' in SupplierName.
UPDATE suppliers
SET SupplierName = REPLACE(SupplierName, "Co.", "Company");

-- 5. Replace 'Ltd' with 'Limited' in SupplierName.
UPDATE suppliers
SET SupplierName = REPLACE(SupplierName, "Ltd", "Limited");

-- 6. Replace 'Express' with 'Fast' in ShipperName.
UPDATE suppliers
SET SupplierName = REPLACE(SupplierName, "Express", "Fast");

-- 7. Replace 'Soft drink' with 'Beverage' in CategoryName.
UPDATE categories
SET CategoryName = REPLACE(CategoryName, 'Soft drink', 'Beverage')
WHERE CategoryName LIKE '%Soft drink%';

-- 8. Replace 'Ave' with 'Avenue' in customer Address.
UPDATE customers
SET Address = REPLACE(Address, 'Ave', 'Avenue')
WHERE Address LIKE '%Ave%';

-- 9. Replace 'x' with '*' in QuantityPerUnit of products.
UPDATE products
SET QuantityPerUnit = REPLACE(QuantityPerUnit, 'x', '*')
WHERE QuantityPerUnit LIKE '%x%';

-- 10. Replace 'Germany' with 'DE' in customer Country.
UPDATE customers
SET Country = REPLACE(Country, 'Germany', 'DE')
WHERE Country = 'Germany';

-- 11. Replace 'Tokyo Traders' with 'Tokyo Trade Co.' in SupplierName.
UPDATE suppliers
SET SupplierName = REPLACE(SupplierName, 'Tokyo Traders', 'Tokyo Trade Co.')
WHERE SupplierName = 'Tokyo Traders';

-- 12. Replace 'Sweet' with 'Dessert' in CategoryName.
UPDATE categories
SET CategoryName = REPLACE(CategoryName, 'Sweet', 'Dessert')
WHERE CategoryName LIKE '%Sweet%';

-- 13. Replace 'Coffee' with 'Coffees' in ProductName.
UPDATE products
SET ProductName = REPLACE(ProductName, 'Coffee', 'Coffees')
WHERE ProductName LIKE '%Coffee%';

-- 14. Replace 'Ana Trujillo' with 'Ana T.' in customer ContactName.
UPDATE customers
SET ContactName = REPLACE(ContactName, 'Ana Trujillo', 'Ana T.')
WHERE ContactName = 'Ana Trujillo';

-- 15. Replace 'Express' with 'Delivery' in ShipperName.
UPDATE shippers
SET ShipperName = REPLACE(ShipperName, 'Express', 'Delivery')
WHERE ShipperName LIKE '%Express%';

-- 16. Replace 'Beverages' with 'Drinks' in CategoryName.
UPDATE categories
SET CategoryName = REPLACE(CategoryName, 'Beverages', 'Drinks')
WHERE CategoryName = 'Beverages';

-- 17. Replace 'Obere' with 'Upper' in customer Address.
UPDATE customers
SET Address = REPLACE(Address, 'Obere', 'Upper')
WHERE Address LIKE '%Obere%';

-- 18. Replace 'Chai' with 'Chai Tea' in ProductName.
UPDATE products
SET ProductName = REPLACE(ProductName, 'Chai', 'Chai Tea')
WHERE ProductName = 'Chai';

-- 19. Replace 'Ale' with 'Beer' in ProductName.
UPDATE products
SET ProductName = REPLACE(ProductName, 'Ale', 'Beer')
WHERE ProductName LIKE '%Ale%';

-- 20. Replace 'Soft drinks, coffees' with 'Drinks, Coffees' in DescriptionText for categories.
UPDATE categories
SET DescriptionText = REPLACE(
    DescriptionText,
    'Soft drinks, coffees',
    'Drinks, Coffees'
)
WHERE DescriptionText LIKE '%Soft drinks, coffees%';
