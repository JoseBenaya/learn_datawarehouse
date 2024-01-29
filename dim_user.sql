CREATE TABLE dim_user AS
SELECT
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    u.dob,
    u.gender,
    u.register_date,
    u.client_id,
    EXTRACT(YEAR FROM age(NOW(), u.dob)) AS age,
    CASE
        WHEN f.ads_id IS NOT NULL THEN 'Facebook'
        WHEN i.ads_id IS NOT NULL THEN 'Instagram'
        ELSE NULL
    END AS ads_source,
    COALESCE(t.total_transactions, 0) AS total_transactions,
    ROUND(COALESCE(t.avg_transaction_amount, 0), 2) AS avg_transaction_amount,
    t.latest_transaction_date
FROM "user".users u
LEFT JOIN social_media.facebook_ads f ON u.client_id = f.id
LEFT JOIN social_media.instagram_ads i ON u.client_id = i.id
LEFT JOIN (
    SELECT
        user_id,
        COUNT(*) AS total_transactions,
        AVG(amount) AS avg_transaction_amount,
        MAX(transaction_date) AS latest_transaction_date
    FROM "user".user_transactions
    GROUP BY user_id
) t ON u.id = t.user_id;