{{
    config(
        materialized='table'
    )
}}

WITH fct_ratings AS (
    SELECT * FROM {{ ref('fct_ratings') }}
),
seed_date AS (
    SELECT * FROM {{ ref('seed_movie_release_dates') }}
)

SELECT
    f.*,
    CASE 
        WHEN d.rel_dt IS NULL THEN 'unknown'
        ELSE 'known'
    END AS rlease_info
FROM fct_ratings f
LEFT JOIN seed_date d
ON f.movie_id = d.id