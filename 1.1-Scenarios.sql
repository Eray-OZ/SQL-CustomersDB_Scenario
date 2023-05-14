-- Customers start with 'A' 

SELECT * FROM CUSTOMERS
WHERE NAMESURNAME LIKE 'A%';





-- Male customers start with 'A'   

SELECT * FROM CUSTOMERS
WHERE NAMESURNAME LIKE 'A%'
AND
GENDER = 'E';





-- Customers who were born between 1990 and 1995 

SELECT * FROM CUSTOMERS
WHERE
BIRTHDATE >= '1990-01-01'
AND
BIRTHDATE <= '1995-12-31';


-- DATEPART(YEAR, '1990-01-01) -> 1990





-- Customers who live in İstanbul (JOIN)

SELECT 
CUSTOMERS.*,CITIES.CITY FROM CUSTOMERS
INNER JOIN CITIES ON 
CUSTOMERS.CITYID = CITIES.ID
WHERE CITY = 'İSTANBUL'





-- Customers who live in İstanbul (SUBQUERY)