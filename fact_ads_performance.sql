CREATE TABLE fact_ads_performance AS
SELECT
    ads_id,
    COUNT(*) AS total_clicks,
    COUNT(DISTINCT device_id) AS unique_devices,
    EXTRACT(MONTH FROM MAX(timestamp)) AS last_month,
    EXTRACT(DOW FROM MAX(timestamp)) AS last_day_of_week
FROM dim_ads
GROUP BY ads_id;