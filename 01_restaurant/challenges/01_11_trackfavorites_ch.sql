-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM CUSTOMERS WHERE FIRSTNAME = 'Cleo'

SELECT * FROM Dishes WHERE NAME LIKE '%QUINOA%'

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42