-- 1. Select products that northwind sells  
SELECT * FROM products;

-- 2. List productid, productname, unitprice of every product
SELECT productid, productname, unitprice FROM products;

-- 3. List productid, productname, unitprice of every product in asc order by price
SELECT productid, productname, unitprice FROM products
ORDER BY unitprice ASC; 

-- 4. What are the products that we carry where unit price is 7.50 or less?
SELECT productid, productname, unitprice FROM products
WHERE unitprice <= 7.50;

-- 5. What products do we carry that are 100 units on hand? Order in decending order by price.
SELECT productid, productname, unitprice, UnitsInStock FROM products
WHERE UnitsInStock >= 100
Order by UnitPrice DESC;

-- 6. What products do we carry that are 100 units on hand? Order in decending order by price. If 2 have the same price, list in ascending order by product name.
SELECT productid, productname, unitprice, UnitsInStock FROM products
WHERE UnitsInStock >= 100 
Order by UnitPrice DESC, productname ASC;

-- 7. 
SELECT * FROM Products
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName;

-- 8.
SELECT * FROM Categories;

-- 9. Seafood in category 8
SELECT * FROM Categories;

-- 10. 
SELECT * FROM Products
WHERE CategoryID = 8;

-- 11. First and Last name of all Employees
SELECT FirstName, LastName FROM employees;

-- 12. Which employees carry the title "Manager"
SELECT * FROM employees
WHERE Title = "Manager";

-- 13. 
SELECT DISTINCT Title FROM employees;

-- 14.
SELECT FirstName, LastName, Title, Salary FROM employees
WHERE Salary BETWEEN 2000 AND 2500;

-- 15. 
SELECT * FROM suppliers;

-- 16.
SELECT * FROM products
WHERE SupplierID = 4;
