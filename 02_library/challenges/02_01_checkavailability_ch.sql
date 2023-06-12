-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT 
 (SELECT COUNT(Books.Title)
  FROM Books WHERE Books.Title = 'Dracula') -
  (SELECT count(b.Title) from Books b join Loans l on b.BookID = l.BookID where ReturnedDate is null and b.Title = 'Dracula') as AvailableCopies