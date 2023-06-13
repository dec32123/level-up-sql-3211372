-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT BookID FROM BOOKS WHERE BARCODE IN ('2855934983', '4043822646')

SELECT * FROM LOANS WHERE BookID IN (11, 93)

SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate) VALUES
((SELECT BookID FROM BOOKS WHERE BARCODE = 2855934983), 
(SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'), '2022-08-25',
'2022-09-08'),
((SELECT BookID FROM BOOKS WHERE BARCODE = 4043822646), 
(SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'), '2022-08-25',
'2022-09-08')

SELECT * FROM Loans ORDER BY LoanID DESC;
