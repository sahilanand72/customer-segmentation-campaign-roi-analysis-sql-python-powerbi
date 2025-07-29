SELECT * FROM dbo.engagement_data;

SELECT 
     e.EngagementID,
     e.CampaignID,
     e.ContentID,
     UPPER(REPLACE(e.ContentType,'SocialMedia','Social Media')) AS Content_Type,
     LEFT(e.ViewsClicksCombined,CHARINDEX('-',e.ViewsClicksCombined) -1) AS Views,
     RIGHT(e.ViewsClicksCombined, LEN(e.ViewsClicksCombined) - CHARINDEX('-', e.ViewsClicksCombined)) AS Clicks, 
     Likes,
     FORMAT(CONVERT(DATE,e.EngagementDate), 'dd.MM.yyyy') AS Engagement_Date
FROM dbo.engagement_data AS e
WHERE e.ContentType != 'Newsletter';