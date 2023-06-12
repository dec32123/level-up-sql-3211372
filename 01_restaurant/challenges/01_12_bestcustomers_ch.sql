-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT C.FIRSTNAME, C.LASTNAME, C.EMAIL, COUNT(O.ORDERID) AS NumberofOrders
FROM CUSTOMERS C 
JOIN ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
GROUP BY C.CUSTOMERID
ORDER BY COUNT(O.ORDERID) DESC