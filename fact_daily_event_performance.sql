CREATE TABLE fact_daily_event_performance AS
SELECT
    DATE(timestamp) AS event_date,
    event_type,
    COUNT(*) AS event_count,
    COUNT(DISTINCT user_id) AS unique_users
FROM "event"."User Event"
GROUP BY event_date, event_type;