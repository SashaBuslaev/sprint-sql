SELECT FirstName AS ManagerFirstName, LastName AS ManagerLastName, Title AS ManagerTitle,
(SELECT count(FirstName) FROM employees
WHERE e.EmployeeId = ReportsTo
) AS SubordinateCount
FROM employees e
WHERE SubordinateCount != 0
ORDER BY ManagerLastName, ManagerFirstName;