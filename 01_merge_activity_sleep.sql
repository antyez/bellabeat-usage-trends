SELECT
    dailyActivity.Id,
    dailyActivity.ActivityDate,
    dailyActivity.UserType,
    dailyActivity.TotalSteps,
    dailyActivity.Calories,
    sleepDay.TotalMinutesAsleep,
    sleepDay.SleepEfficiency,
    sleepDay.TypeOfSleep

FROM `dailyActivity_merged` AS dailyActivity

LEFT JOIN `sleepDay_merged` AS sleepDay
    ON dailyActivity.Id = sleepDay.Id AND dailyActivity.ActivityDate = sleepDay.SleepDay;
