SELECT
    S.*,
    S.team2 AS visiting_team,
    S.team1 AS home_team,
    CASE WHEN score1 > score2 THEN team1 ELSE team2 END AS winning_team,
    CASE
        WHEN score2 > score1 THEN 1
        ELSE 0
    END AS game_result
FROM {{ ref('raw_nba_elo_latest') }} S
WHERE score1 IS NOT NULL
GROUP BY ALL