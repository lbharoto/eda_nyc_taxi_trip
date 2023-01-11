
WITH weather_data AS (
    SELECT ORDER_TIME AS order_hour,
        ROUND(AVG(HourlyWindSpeed),2) wind_speed,
        ROUND(AVG(HourlyPrecipitation),2) precipitation
    FROM hourly_weather
    WHERE ORDER_DATE BETWEEN "2012-10-22" AND "2012-11-06"
    GROUP BY order_hour
), trip_data AS (
    SELECT tpep_pickup_hour as order_hour,
        COUNT(id) as num_order    
    FROM taxi_trips
    WHERE tpep_pickup_date BETWEEN "2012-10-22" AND "2012-11-06"
    GROUP BY order_hour
    ORDER BY num_order DESC
)
SELECT weather_data.order_hour,
    wind_speed,
    precipitation,
    num_order
FROM weather_data
LEFT JOIN trip_data ON weather_data.order_hour = trip_data.order_hour
