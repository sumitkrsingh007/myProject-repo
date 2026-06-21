WITH raw_movies AS(
    SELECT * FROM RAW_DB.RAW_SCHEMA.RAW_MOVIES
)
SELECT
    movieId AS movie_id,
    title,
    genres
FROM raw_movies