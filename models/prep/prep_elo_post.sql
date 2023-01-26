SELECT
    *,
    {{ var('latest_ratings') }} AS latest_ratings
FROM  {{ ref( 'raw_elo_post' ) }}
