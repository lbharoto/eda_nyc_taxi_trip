
WITH taxi_trip AS (
    SELECT tpep_pickup_date as order_date,
        COUNT(id) as num_order    
    FROM taxi_trips
    WHERE tpep_pickup_date BETWEEN "2014-01-01" AND "2014-12-31"
    GROUP BY order_date
    ORDER BY num_order DESC
    ),
    daily_observation_data AS (
    SELECT ORDER_DATE as order_date,
        AVG(DailyAverageWindSpeed) as avg_wind_speed
    FROM daily_weather
    WHERE order_date BETWEEN "2014-01-01" AND "2014-12-31"
    GROUP BY order_date
    ORDER BY avg_wind_speed DESC
    LIMIT 10
    )
SELECT daily_observation_data.order_date,
    daily_observation_data.avg_wind_speed,
    taxi_trip.num_order
FROM daily_observation_data
LEFT JOIN taxi_trip ON daily_observation_data.order_date = taxi_trip.order_date
