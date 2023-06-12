-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Name, Description, Price 
FROM DISHES 
Order By Price;

SELECT Name, Description, Price
FROM DISHES 
WHERE Type IN ('Appetizer', 'Beverage')
Order By Type;

SELECT Name, Description, Price 
FROM DISHES 
WHERE Type NOT IN ('Beverage')
Order By Type;