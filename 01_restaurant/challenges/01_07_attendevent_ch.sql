-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT CustomerID FROM CUSTOMERS WHERE EMAIL = 'atapley2j@kinetecoinc.com'

INSERT INTO AnniversaryInvitation (CustomerID, PartySize) VALUES ((SELECT CustomerID FROM CUSTOMERS WHERE EMAIL = 'atapley2j@kinetecoinc.com'), 4);

SELECT * FROM AnniversaryInvitation