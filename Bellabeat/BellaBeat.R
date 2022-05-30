activity <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv")
calories <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailyCalories_merged.csv")
intensities <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailyIntensities_merged.csv")
sleep <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")
weight <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv")

head(activity)
edit(activity)

# intensities
intensities$ActivityHour=as.POSIXct(intensities$ActivityDay, format="%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
intensities$time <- format(intensities$ActivityHour, format = "%H:%M:%S")
intensities$date <- format(intensities$ActivityHour, format = "%m/%d/%y")
# calories
calories$ActivityDay=as.POSIXct(calories$ActivityDay, format="%m/%d/%Y")

# cleaning activity
activity$ActivityDate=as.POSIXct(activity$ActivityDate, format="%m/%d/%Y", tz=Sys.timezone())
activity$date <- format(activity$ActivityDate, format = "%m/%d/%y")
# sleep
sleep$SleepDay=as.POSIXct(sleep$SleepDay, format="%m/%d/%Y %I:%M:%S %p", tz=Sys.timezone())
sleep$date <- format(sleep$SleepDay, format = "%m/%d/%y")

###ignore the above.THEY ONLY SERVE AS REFERENCES
#NOTE THAT THE ONLY CLEANING OPERATION HERE INVOLVES NORMALIZING THE DATE/TIME COLUMNS


# cleaning daily_calories.csv
write.csv(calories, "C:/Users/Public/Datasets/Fitbase date nornal/daily_calories_norm.csv")
calories <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailyCalories_merged.csv")
head(calories)
calories$ActivityDay=as.POSIXct(calories$ActivityDay, format="%m/%d/%Y")
head(calories)

#cleaning daily_intensities.csv
intensities <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailyIntensities_merged.csv")
intensities$ActivityDay=as.POSIXct(intensities$ActivityDay, format="%m/%d/%Y")
write.csv(intensities, "C:/Users/Public/Datasets/Fitbase date nornal/daily_intensities_norm.csv")

#cleaning daily_steps
daily_steps <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/dailySteps_merged.csv")
daily_steps$ActivityDay=as.POSIXct(daily_steps$ActivityDay, format="%m/%d/%Y")
write.csv(daily_steps, "C:/Users/Public/Datasets/Fitbase date nornal/daily_steps.csv")

#cleaning heartrate_seconds.csv
heartrate_seconds <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv")
heartrate_seconds$Time=as.POSIXct(heartrate_seconds$Time, format="%m/%d/%Y %I:%M:%S %p")
write.csv(heartrate_seconds, "C:/Users/Public/Datasets/Fitbase date nornal/heartrate_seconds.csv")  

#cleaning hours_calories.csv
hour_calories <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/hourlyCalories_merged.csv")
hour_calories$ActivityHour=as.POSIXct(hour_calories$ActivityHour, format="%m/%d/%Y %I:%M:%S %p")
head(hour_calories)
edit(hour_calories)
write.csv(hour_calories, "C:/Users/Public/Datasets/Fitbase date nornal/hourlyCalories_merged.csv")

#cleaning hour_intensities.csv
hour_intensities <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/hourlyIntensities_merged.csv")
hour_intensities$ActivityHour=as.POSIXct(hour_intensities$ActivityHour, format="%m/%d/%Y %I:%M:%S %p")
write.csv(hour_intensities, "C:/Users/Public/Datasets/Fitbase date nornal/hour_intensities.csv")

#cleaning hourly_steps.csv
hourly_steps <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/hourlySteps_merged.csv")
hourly_steps$ActivityHour=as.POSIXct(hourly_steps$ActivityHour, format="%m/%d/%Y %I:%M:%S %p")
write.csv(hourly_steps, "C:/Users/Public/Datasets/Fitbase date nornal/hourly_steps.csv")

#cleaning minutes_calories.csv
minutes_calories <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/minuteCaloriesNarrow_merged.csv")
minutes_calories$ActivityMinute=as.POSIXct(minutes_calories$ActivityMinute, format="%m/%d/%Y %I:%M:%S %p")
write.csv(minutes_calories, "C:/Users/Public/Datasets/Fitbase date nornal/minutes_calories.csv")

#cleaning minutes_intensities.csv
minutes_intensities <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesNarrow_merged.csv")
minutes_intensities$ActivityMinute=as.POSIXct(minutes_intensities$ActivityMinute, format="%m/%d/%Y %I:%M:%S %p")
write.csv(minutes_intensities, "C:/Users/Public/Datasets/Fitbase date nornal/minutes_intensities.csv")

#cleaning minutes_METs.csv
minutes_METs <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/minuteMETsNarrow_merged.csv")
minutes_METs$ActivityMinutes=as.POSIXct(minutes_METs$ActivityMinute, format="%m/%d/%Y %I:%M:%S %p")
write.csv(minutes_METs, "C:/Users/Public/Datasets/Fitbase date nornal/minutes_METs.csv")

#cleaning minutes_sleep.csv
minutes_sleep <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/minuteSleep_merged.csv")
minutes_sleep$date=as.POSIXct(minutes_sleep$date, format="%m/%d/%Y %I:%M:%S %p")
write.csv(minutes_sleep, "C:/Users/Public/Datasets/Fitbase date nornal/minutes_sleep.csv")

#cleaning minutes_steps.csv
minutes_steps <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/minuteStepsNarrow_merged.csv")
head(minutes_steps)
minutes_steps$ActivityMinute=as.POSIXct(minutes_steps$ActivityMinute, format="%m/%d/%Y %I:%M:%S %p")
write.csv(minutes_steps, "C:/Users/Public/Datasets/Fitbase date nornal/minutes_steps.csv")

#cleaning sleep_day.csv
sleep_day <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")
sleep_day$SleepDay=as.POSIXct(sleep_day$SleepDay, format="%m/%d/%Y %I:%M:%S %p")
write.csv(sleep_day, "C:/Users/Public/Datasets/Fitbase date nornal/sleep_day.csv")

#cleaning weight_log_info.csv
weight_log_info <- read.csv("C:/Users/Public/Datasets/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv")
weight_log_info$Date=as.POSIXct(weight_log_info$Date, format="%m/%d/%Y %I:%M:%S %p")
write.csv(weight_log_info, "C:/Users/Public/Datasets/Fitbase date nornal/weight_log_info.csv")
