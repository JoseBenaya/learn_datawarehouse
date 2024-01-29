CREATE TABLE fact_weekly_ads_performance AS
SELECT
    ads_id,
    EXTRACT(WEEK FROM timestamp) AS week_number,
    COUNT(*) AS weekly_clicks,
    COUNT(DISTINCT device_id) AS unique_devices
FROM dim_ads
GROUP BY ads_id, week_number;