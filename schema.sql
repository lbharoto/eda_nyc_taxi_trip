
CREATE TABLE IF NOT EXISTS hourly_weather
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    HourlyPrecipitation REAL,
    HourlyWindSpeed REAL,
    ORDER_DATE DATE,
    ORDER_TIME INTEGER,
    ORDER_DAY STRING
    )

CREATE TABLE IF NOT EXISTS daily_weather
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DailyAverageWindSpeed REAL,        
    ORDER_DATE DATE,
    ORDER_TIME INTEGER,
    ORDER_DAY STRING
    )

CREATE TABLE IF NOT EXISTS uber_trips
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_id BIGINT,
    fare_amount REAL,
    pickup_longitude REAL,
    pickup_latitude REAL,
    dropoff_longitude REAL,
    dropoff_latitude REAL,
    pickup_datetime TEXT,
    passenger_count INTEGER,
    distance REAL,
    order_date DATE,
    order_time INTEGER,
    order_day STRING,
    pickup_date DATE,
    pickup_time INTEGER,
    pickup_day STRING
)

CREATE TABLE IF NOT EXISTS uber_trips
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_id BIGINT,
    fare_amount REAL,
    pickup_longitude REAL,
    pickup_latitude REAL,
    dropoff_longitude REAL,
    dropoff_latitude REAL,
    pickup_datetime TEXT,
    passenger_count INTEGER,
    distance REAL,
    order_date DATE,
    order_time INTEGER,
    order_day STRING,
    pickup_date DATE,
    pickup_time INTEGER,
    pickup_day STRING
)
