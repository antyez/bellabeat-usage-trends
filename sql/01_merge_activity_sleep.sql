-- This code was made to merge the datasets after the cleaning the data.

SELECT
    activity.id,
    activity.activity_date,
    activity.day_type,
    activity.week_number,
    activity.user_type, -- User segmentation by activity (total steps)
    activity.total_steps,
    activity.total_steps_filtered, -- filtered to avoid 0 on values
    activity.very_active_minutes, 
    activity.fairly_active_minutes,
    activity.sedentary_minutes,
    activity.calories,
    sleep.total_minutes_asleep,
    sleep.sleep_efficiency, -- total_minutes_asleep / total_time_in_bed = sleep_efficiency
    sleep.type_of_sleeper, -- User segmentation by sleep efficiency
    -- percentage of the 24-hour day spent inactive
    ROUND((activity.sedentary_minutes / 1440) * 100, 2) AS sedentary_percentage

FROM `daily_activity_cleaned` AS activity 

-- Left join to include all activity records even when sleep was not tracked
LEFT JOIN `sleep_day_cleaned` AS sleep
  -- this helps identify the percentage of users who do not use the device while sleeping
    ON activity.id = sleep.id 
    AND activity.activity_date = sleep.sleep_date;
