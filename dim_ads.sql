CREATE TABLE dim_ads AS
SELECT
    id,
    ads_id,
    device_type,
    device_id,
    timestamp,
    EXTRACT(MONTH FROM timestamp) AS month,
    EXTRACT(DAY FROM timestamp) AS day,
    EXTRACT(DOW FROM timestamp) AS day_of_week
FROM social_media.facebook_ads
UNION ALL
SELECT
    id,
    ads_id,
    device_type,
    device_id,
    timestamp,
    EXTRACT(MONTH FROM timestamp) AS month,
    EXTRACT(DAY FROM timestamp) AS day,
    EXTRACT(DOW FROM timestamp) AS day_of_week
FROM social_media.instagram_ads;