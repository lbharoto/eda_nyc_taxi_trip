
SELECT tpep_pickup_date as order_date,
    COUNT(id) as num_order
FROM taxi_trips
WHERE order_date BETWEEN "2009-01-01 AND 2009-12-31"
GROUP BY order_date
ORDER BY num_order DESC
LIMIT 10