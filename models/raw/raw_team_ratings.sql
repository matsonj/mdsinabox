WITH source AS (
    SELECT * FROM 'data/team_ratings.csv'
)
SELECT team
, team_long
, conf
, "ELO rating" as elo_rating
, "Win Total" as win_total
FROM source