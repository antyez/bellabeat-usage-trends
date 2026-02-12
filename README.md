### Executive Summary:

User retention and device engagement are critical for Bellabeat’s growth in the smart device market. Using SQL, Tableau, and Excel, I analyzed Fitbit user data to identify where engagement drops occur. I discovered that 40% of users (dataset from March & April 2016) are categorized as sedentary and 31% fail to wear the device at night. I recommend implementing "Micro-movement" which is notifications to remind users to move triggers and a metabolic reward visualization which might feel as a psychological win for the user, these recommendations could significantly increase daily active engagement and data retention.

### Business Problem:

Bellabeat needs to understand how their non-users interact with other smart devices to refine its marketing and product features. The primary challenge is identifying "friction points" that lead to high sedentary time and inconsistent device usage (specifically during sleep). How can we move the "Sedentary User" toward more active segments and ensure a better device wearability.

![User Segment](images/user_segment.png)

### Methodology:

-   **SQL:** Cleaned and merged daily activity and sleep datasets using CTEs and Left Joins to identify the "Sleep Gap", developed a function to calculate daily sedentary time, expressed as percentage.
    
-   **Tableau:** Developed a comprehensive dashboard to segment users and visualize sedentary vs. active ratios.
    
-   **Excel/Sheets:** Performed ETL and created a caloric burn prediction model to quantify the metabolic reward or "Metabolic Bonus" of reaching step goals.
    

### Skills:

-   **SQL:** Joins, Aggregate Functions, Rounding/Calculated Fields.
    
-   **Tableau:** User Segmentation, Funnel Visualization, Trend Analysis, Dashboard Design.
    
-   **Google Sheets / Excel:** data cleansing and statistical correlation analysis to validate trends.
    

### Results & Business Recommendation:

By democratizing this data through a self-serve dashboard, stakeholders can now visualize the funnel from "Sedentary User" to "High Efficiency" mover. The analysis revealed that even the most active users spend 62% of their day sedentary, and 31% of health data is lost nightly due to the "Sleep Gap" I mentioned earlier.

![Sedentary User Percentage by Day](images/sedentary_percentage_day.png)

According to my analysis, converting a "Sedentary User" to a "Moderate Mover" represents at least 1,000+ calorie daily burn difference. To capture this metabolic reward, I recommend:

![Caloric Burn Prediction](images/caloric_burn_calculation.png)

-   **Feature Update (The Win Goal):** Introduce an 8K step "Intermediate Goal" to reduce user churn caused by the daunting 10K threshold.
    
-   **Smart Notifications:** Send "Nightly Reminders" and link previous day's activity to sleep quality to close the 31% data gap, this could also lead to a better understanding between high performance or low performance users vs. sleeptime.
    
-   **Visual Value Prop:** Update the app UI to visualize caloric burn in real-time, showing users the direct caloric reward of moving from one segment to another.
    
These adjustments tackle the largest fallout points in the daily usage funnel, increasing both user health outcomes and long-term device usage, which naturally leads to a better user engagement.

### Next Steps:

-   **A/B Test:** Test push notification copy for "Micro-movements" vs. "Step Goals".
    
-   **Correlation Study:** Analyze if closing the "Sleep Gap" leads to higher daytime activity.
    
-   **Campaign Launch:** Align high-budget marketing with the organic motivation peak identified in Week 14.

![Peak engagement](images/peak_engagement.png)

### Analytical Deep Dive:

**The 10K steps Paradox**: For this analysis I maintained the 10K step goal as it remains the industry standard. However, it is critical to note its origins: The 10K steps figure comes from a 1960s Japanese marketing campaign rather than a medical requirement.

Furthermore, according to my personal research from organizations such as OMS, Ucla Health, the NIH and others, significant health benefits are noticeable around the 8K step mark. My research found no evidence that hitting 10K steps provides major additional benefits over reaching 8K steps. This validates my recommendation to implement an 8K intermediate goal to prevent user burnout and churn while maintaining peak health outcomes.

**Sedentary Majority:** It is important to address a potential misinterpretation of the data, while the overall average hovers around 7.5K steps on weekdays (a close to 7.8K steps on weekends), this figure is heavily biased by the "Sedentary User" segment. In reality, majority of the other segments not only reach the 8K intermediate goal I proposed but frequently surpass it. The lower general average is a result of the sedentary group's high volume which masks the strong engagement of active users. This distinction clearly identifies the primary growth opportunity: migrating users from the "Sedentary" tier to the next segment. The data confirms that once a user movers past this initial friction point they demonstrate consistent device engagement and activity.
