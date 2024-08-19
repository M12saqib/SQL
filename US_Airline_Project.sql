--Data Exploration

--first view of the data
SELECT * 
FROM airline_flight_data
LIMIT 10;

--Checking the data types
SELECT column_name, data_type
FROM INFORMATION_schema.columns
WHERE table_name = 'airline_flight_data';


--Market Analysis
SELECT year,
SUM(passengers) AS total_passengers
FROM airline_flight_data
GROUP BY year;

--counting rows
SELECT COUNT(*) AS total_rows
FROM airline_flight_data;

--
SELECT quarter,
SUM(passengers) AS total_passengers
FROM airline_flight_data
GROUP BY quarter;

SELECT 
    city1 AS origin_city,
    city2 AS destination_city,
    AVG(fare) AS average_fare
FROM airline_flight_data
GROUP BY city1, city2
ORDER BY average_fare DESC;

SELECT -- i can make buckets for distances
    nsmiles AS distance,
    AVG(fare) AS average_fare
FROM airline_flight_data
GROUP BY nsmiles
ORDER BY distance;

SELECT 
    city1 AS origin_city,
    city2 AS destination_city,
    carrier_lg AS largest_carrier,
    AVG(fare_lg) AS average_fare_lg,
    carrier_low AS lowest_fare_carrier,
    AVG(fare_low) AS average_fare_low
FROM airline_flight_data
GROUP BY city1, city2, carrier_lg, carrier_low
ORDER BY average_fare_lg - average_fare_low DESC;


















