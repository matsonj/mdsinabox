WITH source AS (
    SELECT * FROM 'data/nba_schedule_2023.csv'
)
SELECT *
, "Visitor/Neutral" as visitorneutral
, "Home/Neutral" as homeneutral
FROM source