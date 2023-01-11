
SELECT tpep_pickup_hour as order_hour,
    COUNT(id) as num_order    
FROM taxi_trips
WHERE tpep_pickup_date BETWEEN "2009-01-01" AND "2015-06-30" 
GROUP BY order_hour
ORDER BY num_order DESC
