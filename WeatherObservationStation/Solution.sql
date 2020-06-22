-- Query the sum of Northern Latitudes (LAT_N) from STATION having values
-- greater than 38.7880 and less than 137.2345. Truncate your answer to
-- 4 decimal places.


select cast(round(sum(lat_n), 4, 1) as decimal(12,4)) from station
where lat_n between 38.7880 and 137.2345;


-- Query the greatest value of the Northern Latitudes (LAT_N)
-- from STATION that is less than 137.2345. Truncate your answer
-- to 4 decimal places.


select
    top 1 cast(round(lat_n, 4, 1) as decimal(12,4)) as greatestValue
from station
where lat_n < 137.2345
order by greatestValue DESC;


-- Query the Western Longitude (LONG_W) for the largest Northern
-- Latitude (LAT_N) in STATION that is less than 137.2345.
-- Round your answer to 4 decimal places.


select TOP 1
    cast(round(long_w, 4, 0) as decimal(12,4)) AS LONG_W
from station
where lat_n < 137.2345
order by lat_n desc;


-- Query the smallest Northern Latitude (LAT_N) from
-- STATION that is greater than 38.7780. Round your answer to 4 decimal places.

select TOP 1
    cast(round(LAT_N, 4, 0) as decimal(12,4)) AS LAT_N
from station
where lat_n > 38.7780
order by lat_n;
