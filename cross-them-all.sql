SELECT m.Name AS MediaTypeName, g.Name AS GenreName
FROM media_types m
CROSS JOIN genres g
ORDER BY GenreName DESC