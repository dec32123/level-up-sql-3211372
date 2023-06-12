-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * 
from reservations R
LEFT JOIN Customers C ON C.CustomerID = R.CustomerID
WHERE C.FirstName = 'Norby'
ORDER BY R.Date DESC

DELETE FROM Reservations WHERE ReservationID = 2000