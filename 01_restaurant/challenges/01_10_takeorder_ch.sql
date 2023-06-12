-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM CUSTOMERS WHERE FIRSTNAME = 'Loretta' AND LASTNAME = 'Hundey'

SELECT DishID FROM Dishes WHERE Name IN ('Tropical Blue Smoothie', 'House Salad', 'Mini Cheeseburgers')

SELECT * FROM Orders

INSERT INTO Orders (CustomerID, OrderDate) VALUES ((SELECT CustomerID FROM CUSTOMERS WHERE FIRSTNAME = 'Loretta' AND LASTNAME = 'Hundey'), '2022-09-20 14:00:00')

SELECT * FROM ORDERS ORDER BY OrderID DESC

SELECT * FROM OrdersDishes

INSERT INTO OrdersDishes (OrderID, DishID) VALUES (1001, (SELECT DishID FROM Dishes WHERE Name ='House Salad'))
INSERT INTO OrdersDishes (OrderID, DishID) VALUES (1001, (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie'))
INSERT INTO OrdersDishes (OrderID, DishID) VALUES (1001, (SELECT DishID FROM Dishes WHERE Name ='Mini Cheeseburgers'))

SELECT SUM(D.Price) AS Total
FROM OrdersDishes OD
JOIN Dishes D ON OD.DishID = D.DishID
WHERE ORDERID = 1001