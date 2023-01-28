WITH prepped AS (
    SELECT team
    , team_long
    , conf
    , "ELO rating" as elo_rating
    , "Win Total" as win_total
    FROM {{ ref('raw_team_ratings' ) }}
)
SELECT * FROM prepped
