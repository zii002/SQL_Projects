# London Bicycle Trips – SQL Analysis

This project analyzes a sample of London bicycle rental trips using SQL Server.

## Dataset

- 49,594 trip records
- Columns include:
  - rental_id, duration (seconds), bike_id
  - start_date / end_date (UTC timestamps as text)
  - start_station_name / end_station_name
  - various station IDs and logical terminal IDs

The raw data was imported from a CSV into a SQL Server table `dbo.BicycleTrips` in the `LondonBicycleAnalysis` database.

## Analysis

Main questions explored:

- How many trips are in the dataset and over what date range?
- What is the average trip duration?
- At what time of day are bikes used most?
- Which stations and routes are most popular?

See `02_basic_analysis.sql` for the queries.

## Tools

- SQL Server 2025 Developer Edition
- SQL Server Management Studio (SSMS)

- The CSV file was imported into SQL Server using SSMS ‘Import Flat File’ wizard into the dbo.BicycleTrips table defined in 01_create_table.sql
