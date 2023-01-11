
WITH data AS (SELECT distance, NTILE(95) OVER (ORDER BY distance) AS percentile
           FROM taxi_trips
           WHERE tpep_pickup_date BETWEEN "2013-07-01" AND "2013-07-31")
SELECT MAX(distance) as distance
FROM data
GROUP BY percentile;
