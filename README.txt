1. Tabel Dimensi:
a. dim_user:
Kolom Penting:
Informasi pengguna: user_id, first_name, last_name, dll.
Atribut tambahan: age, ads_source.
Metrik: total_transactions, avg_transaction_amount, dll.
b. dim_ads:
Kolom Penting:
Info iklan: ads_id, device_type, dll.
Atribut waktu: month, day, day_of_week.

2. Tabel Fakta:
a. fact_user_performance:
Kolom Penting:
Kinerja pengguna: user_id, last_login, total_events, dll.
b. fact_ads_performance:
Kolom Penting:
Kinerja iklan: ads_id, total_clicks, dll.

3. Tabel Datamart:
a. fact_daily_event_performance:
Kolom Penting:
Acara harian: event_date, event_type, event_count, dll.
b. fact_weekly_ads_performance:
Kolom Penting:
Kinerja iklan mingguan: ads_id, week_number, weekly_clicks, dll.

Asumsi Umum:
Identifikasi unik untuk iklan adalah id.
Atribut waktu ditambahkan untuk analisis berbasis waktu.
Metrik seperti total_transactions, total_clicks, dll., memberikan informasi tentang kinerja.