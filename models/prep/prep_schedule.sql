WITH prepped AS (
    SELECT *
    , "Visitor/Neutral" as visitorneutral
    , "Home/Neutral" as homeneutral
    FROM {{ ref('raw_schedule' ) }}
)
SELECT *
FROM prepped
