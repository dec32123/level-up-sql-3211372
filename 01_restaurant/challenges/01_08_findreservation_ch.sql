-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select * from Reservations

SELECT * 
FROM CUSTOMERS C
JOIN Reservations R on c.CustomerID = r.CustomerID
WHERE LASTNAME LIKE 'St%' AND r.Date LIKE '%2022-06-14%'