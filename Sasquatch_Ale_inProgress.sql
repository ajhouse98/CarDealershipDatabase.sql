-- 1. What is the name of the most expensive product? Cte de Blaye
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice)
FROM Products);

-- 2. Order Id, shipping name, and shipping address of all orders shipped by federal Shipping

SELECT OrderId, ShipName, shipAddress, shipVia
FROM Orders
WHERE shipVia = 3;


-- 3. WHat are the order ids of the orders that ordered "Sasquatch Ale"? - product id 34 for sasQ

SELECT *
FROM `order details`
WHERE productid = 34;


-- 6. List the order ID, order date, ship name, ship address, of all orders that ordered "Sasquatch Ale"
SELECT o.OrderID, o.Orderdate, o.shipName, o.shipAddress
FROM Orders AS o
JOIN `order details` AS od ON od.OrderID = o.OrderID
JOIN Products AS p ON p.ProductID = od.ProductID
WHERE p.ProductName = "Sasquatch Ale";
