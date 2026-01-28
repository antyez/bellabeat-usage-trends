-- this code spots NULL values on sleep, highlighting that many users do not use the device while sleeping on specific active days

SELECT 
    activity.id,
    activity.activity_date,
    sleep.total_minutes_asleep

FROM `daily_activity_cleaned` AS activity

LEFT JOIN `sleep_day_cleaned` AS sleep
    ON activity.id = sleep.id

WHERE sleep.total_minutes_asleep IS NULL;
