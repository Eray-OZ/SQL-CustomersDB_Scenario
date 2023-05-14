-- How many customers there are in every city

SELECT CITIES.CITY, COUNT(*) AS CUSTOMERCOUNT
FROM CUSTOMERS
INNER JOIN CITIES ON
CUSTOMERS.CITYID = CITIES.ID
GROUP BY CITIES.CITY





-- Cities which have more than 10 customers, customers count; sort the table from high to low

SELECT CT.CITY, COUNT(*) AS CUSTOMERCOUNT
FROM CUSTOMERS C
INNER JOIN CITIES CT
ON C.CITYID = CT.ID
GROUP BY CITY
HAVING COUNT(*) > 10
ORDER BY CUSTOMERCOUNT DESC





-- How  many male customers and female customers there are in every city

SELECT CITY, GENDER, COUNT(GENDER) AS CUSTOMERCOUNT
FROM CUSTOMERS C
INNER JOIN CITIES CT
ON C.CITYID = CT.ID
GROUP BY CITY, GENDER
ORDER BY CITY





-- How  many male customers and female customers there are in every city | Add gender count column
