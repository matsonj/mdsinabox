WITH prepped AS (
    SELECT team
    , team_long
    , conf
    , elo_rating
    , win_total
    FROM {{ ref('raw_team_ratings' ) }}
)
SELECT * FROM prepped
