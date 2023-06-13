-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT FirstName, LastName, Email, COUNT(L.LoanID) AS LoanCount
FROM PATRONS P
LEFT JOIN Loans L ON P.PatronID = L.PatronID
GROUP BY FirstName, LastName
order by LoanCount 
LIMIT 5