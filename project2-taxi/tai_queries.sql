-- Project 2: NYC Taxi Analytics (Third_warehouse)

-- 1. Preview the data
SELECT TOP 10 * FROM dbo.Trip;

-- 2. Trips and revenue by payment type
SELECT PaymentType, COUNT(*) AS Trips, SUM(TotalAmount) AS TotalRevenue
FROM dbo.Trip
GROUP BY PaymentType
ORDER BY TotalRevenue DESC;

-- 3. Keep only payment types with more than 3335 trips
SELECT PaymentType, COUNT(*) AS Trips, SUM(TotalAmount) AS TotalRevenue
FROM dbo.Trip
GROUP BY PaymentType
HAVING COUNT(*) > 3335
ORDER BY TotalRevenue DESC;

-- 4. Revenue by day of the week
SELECT d.DayName, COUNT(*) AS Trips, SUM(t.TotalAmount) AS TotalRevenue
FROM dbo.Trip AS t
INNER JOIN dbo.Date AS d ON t.DateID = d.DateID
GROUP BY d.DayName
ORDER BY TotalRevenue DESC;

-- 5. Locations per borough
SELECT City, County, COUNT(*) AS Locations
FROM dbo.Geography
GROUP BY City, County
ORDER BY Locations DESC;
