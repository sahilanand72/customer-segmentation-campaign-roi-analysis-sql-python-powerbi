SELECT * FROM dbo.customers;
SELECT * FROM dbo.geography;

SELECT 
      c.CustomerID,
      c.CustomerName,
      c.Email,
      c.Gender,
      c.Age,
      g.country,
      g.city
FROM dbo.customers AS c
JOIN dbo.geography AS g ON c.GeographyID = g.GeographyID;