CREATE TABLE fact_user_performance AS
SELECT
    user_id,
    MAX("timestamp") AS last_login,
    MAX(CASE WHEN event_type = 'login' THEN timestamp END) AS last_activity,
    COUNT(DISTINCT event_type) AS total_event_types,
    COUNT(*) AS total_events
FROM "event"."User Event"
GROUP BY user_id;