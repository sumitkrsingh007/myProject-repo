{{
    config(
        materialized='incremental',
        on_schema_change = 'fail'
    )
}}

WITH fct_ratings AS (
    SELECT * FROM {{ ref('src_ratings') }}
)

SELECT
    user_id,
    movie_id,
    rating,
    rating_timestamp
FROM fct_ratings
WHERE rating IS NOT NULL

{% if is_incremental() %}
    AND rating_timestamp > (SELECT MAX(rating_timestamp)) FROM {{ this }}
{% endif %}


--AND rating_timestamp comes from src_ratings
--this = fct_ratings 