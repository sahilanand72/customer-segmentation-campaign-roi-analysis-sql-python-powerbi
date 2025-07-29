SELECT * FROM DBO.customer_reviews;

SELECT
     d.ReviewID,
     d.CustomerID,
     d.ProductID,
     d.ReviewDate,
     d.Rating,
     REPLACE(d.ReviewText,'  ',' ') AS ReviewText
FROM dbo.customer_reviews AS d;