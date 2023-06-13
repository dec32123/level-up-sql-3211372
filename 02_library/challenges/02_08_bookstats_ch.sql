-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT Title) as PubCount
FROM BOOKS
GROUP BY Published
Order by PubCount DESC

SELECT B.Title, COUNT(L.LoanID) AS LoanCount
FROM Books B
JOIN Loans L ON B.BookID = L.BookID
GROUP BY B.Title
ORDER BY LoanCount DESC
LIMIT 5