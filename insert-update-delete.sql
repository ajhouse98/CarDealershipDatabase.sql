-- 1. Add a supplier. Name it TTone Supplies.
INSERT INTO suppliers (SupplierID, CompanyName, Phone)
VALUES (30, 'TTone Supplies', '(813)929-4000');

-- 2. Add a new product provided by that supplier = TTone Supplies
INSERT INTO products (ProductID, ProductName, SupplierID, UnitPrice)
VALUES (78, 'Iphone Z', 30, 1200.0000);

-- 3. List all products and their suppliers. 
SELECT ProductName
FROM products 
WHERE ProductName = (SELECT CompanyName
FROM suppliers);


-- 5. List the products and prices of all products from that supplier.




