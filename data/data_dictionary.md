# Data Dictionary

| Column Name | Description | Data Type | Example |
| :--- | :--- | :--- | :--- |
| **id** | Unique anonymous participant identification number. | Integer | 1503960366 |
| **activity_date** | Date of the activity record (YYYY-MM-DD). | Date | 2016-04-12 |
| **day_type** | Categorization of the day (Weekday or Weekend). | String | Weekday |
| **user_type** | Segmentation based on daily steps (Sedentary, Fairly Active, etc.). | String | High Efficiency Mover |
| **total_steps_filtered** | Daily steps, filtering out 0 values to improve average precision. | Integer | 13162 |
| **sedentary_minutes** | Total minutes of inactivity during the day. | Integer | 728 |
| **sedentary_percentage** | Percentage of the 24-hour day spent in a sedentary state. | Float | 50.56% |
| **total_minutes_asleep** | Total recorded time for both deep and light sleep. | Integer | 327 |
| **sleep_efficiency** | Ratio of (Minutes Asleep / Time in Bed). | Float | 0.92 |
| **movement_quality** | Movement intensity ratio ((Very + Fairly Active Min) / Total Steps). | Float | 0.005 |
