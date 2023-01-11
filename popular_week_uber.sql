
SELECT order_day,
    COUNT(id) as num_order    
FROM uber_trips
WHERE order_date BETWEEN "2009-01-01" AND "2015-06-30" 
GROUP BY order_day
ORDER BY num_order DESC
