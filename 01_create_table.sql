-- Creates the database and the BicycleTrips table schema.

CREATE DATABASE LondonBicycleAnalysis;
GO

USE LondonBicycleAnalysis;
GO

CREATE TABLE dbo.BicycleTrips (
    rental_id                      BIGINT       NULL,
    duration                       INT          NULL,
    duration_ms                    BIGINT       NULL,
    bike_id                        INT          NULL,
    bike_model                     NVARCHAR(100) NULL,
    end_date                       NVARCHAR(50)  NULL,   -- text with 'UTC'
    end_station_id                 INT          NULL,
    end_station_name               NVARCHAR(200) NULL,
    start_date                     NVARCHAR(50)  NULL,   -- text with 'UTC'
    start_station_id               INT          NULL,
    start_station_name             NVARCHAR(200) NULL,
    end_station_logical_terminal   INT          NULL,
    start_station_logical_terminal INT          NULL,
    end_station_priority_id        INT          NULL
);
