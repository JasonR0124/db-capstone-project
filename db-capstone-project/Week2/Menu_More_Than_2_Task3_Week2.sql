-- Again the setup did not specify we needed a Menus and MenuItems table so I change Cuisine to MenuName
-- I limited the results to Distinct to avoid duplicates

SELECT DISTINCT Cuisine AS MenuName
FROM Menu
WHERE Menu_ID = ANY(
	SELECT Menu_ID
    FROM Orders
    GROUP BY Menu_ID
    HAVING COUNT(*) > 2) 