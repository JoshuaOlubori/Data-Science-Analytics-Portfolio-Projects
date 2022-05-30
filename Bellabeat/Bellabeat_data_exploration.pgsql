--DATA EXPLORATION
--"INTERVIEWING THE DATA"

--1.0 exploring the tables

--Check for total number of rows
SELECT COUNT (id)
FROM calories_hourly
--22099

--Checking for incorrect ids
SELECT length(CAST(id as TEXT)) AS length_of_char,
COUNT(*)
FROM calories_hourly
GROUP BY 1
--no incorrect ids

--Check for nulls
SELECT COUNT (id)
FROM calories_hourly
WHERE id IS NULL
-- no nulls

--How many customers are in the calories_hourly table?
SELECT COUNT (DISTINCT id) AS no_of_customers
FROM calories_hourly;
--33 customers

--What is the period over which this data was collected
SELECT MAX(activity_hour), MIN(activity_hour)
FROM calories_hourly

SELECT MAX(activity_date), MIN(activity_date)
FROM daily_calories
--a period of one month, from 12th May, 2016 to 12th April, 2016

--What is the average, max & min calories burned per hour
SELECT id as customers, 
round(AVG(calories), 2) as average_calories_burned,
MAX(calories),
MIN(calories)
FROM calories_hourly
GROUP BY 1
ORDER BY 2 DESC

--What is the average, max & min calories burned per day
SELECT id as customers, 
round(AVG(calories), 2) as average_calories_burned,
MAX(calories),
MIN(calories)
FROM daily_calories
GROUP BY 1
ORDER BY 2 DESC

--further investigate the above two by viz
--do viz showing percentage of customers below WHO standard

--2.0
--Check for total number of rows in daily_activity
SELECT COUNT (id)
FROM daily_activity
--940

--Checking for incorrect ids
SELECT length(CAST(id as TEXT)) AS length_of_char,
COUNT(*)
FROM  daily_activity
GROUP BY 1
--no incorrect ids

--Check for nulls
SELECT COUNT (id)
FROM daily_activity
WHERE id IS NULL
-- no nulls

--How many customers are in the calories_hourly table?
SELECT COUNT (DISTINCT id) AS no_of_customers
FROM daily_activity;
--33 customers

--Join daily activity and weight log
SELECT d.id, d.activity_date, d.total_steps, d.total_distance,
d.very_active_distance, d.very_active_minutes, d.calories,
w.weight_kg, w.bmi
FROM daily_activity d INNER JOIN weight_log w
ON d.id = w.id

--Join heart rate and weight log
SELECT h.id, h.time, h.value, w.weight_kg, w.bmi
FROM heart_rate_seconds h INNER JOIN weight_log w
ON h.id = w.id

--Summary of weight_log
SELECT round(MAX(weight_kg), 1) AS MAX_WEIGHT, round(AVG(weight_kg), 1) AS AVG_WEIGHT, 
round(MIN(weight_kg), 1) AS MIN_WEIGHT,
MAX(bmi) AS MAX_BMI,
round(AVG(bmi), 1) AS AVG_BMI,
MIN(bmi) AS MIN_BMI
FROM weight_log
