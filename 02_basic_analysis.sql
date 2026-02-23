-- 1. Total trips and date range
WITH Trips_Clean AS (
    SELECT
        TRY_CONVERT(datetime2, REPLACE(start_date, ' UTC','')) AS start_dt
    FROM dbo.BicycleTrips
)
SELECT
    COUNT(*)          AS total_trips,
    MIN(start_dt)     AS first_trip_start,
    MAX(start_dt)     AS last_trip_start
FROM Trips_Clean
WHERE start_dt IS NOT NULL;

-- 2. Trip duration stats
SELECT
    COUNT(*)             AS total_trips,
    AVG(duration) / 60.0 AS avg_duration_min,
    MIN(duration) / 60.0 AS min_duration_min,
    MAX(duration) / 60.0 AS max_duration_min
FROM dbo.BicycleTrips
WHERE duration IS NOT NULL;

-- 3. Trips by hour of day
WITH Trips_Clean AS (
    SELECT
        TRY_CONVERT(datetime2, REPLACE(start_date, ' UTC','')) AS start_dt
    FROM dbo.BicycleTrips
)
SELECT
    DATEPART(HOUR, start_dt) AS hour_of_day,
    COUNT(*)                 AS trip_count
FROM Trips_Clean
WHERE start_dt IS NOT NULL
GROUP BY DATEPART(HOUR, start_dt)
ORDER BY hour_of_day;

-- 4. Top 10 start stations
SELECT TOP 10
    start_station_name,
    COUNT(*) AS trip_count
FROM dbo.BicycleTrips
WHERE start_station_name IS NOT NULL
GROUP BY start_station_name
ORDER BY trip_count DESC;
