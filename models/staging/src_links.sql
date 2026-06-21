WITH raw_links AS(
    SELECT * FROM RAW_DB.RAW_SCHEMA.RAW_LINKS
)
SELECT
    movieId AS movie_id,
    imdbId AS imdb_id,
    tmdbId AS tmdbIddb_id
FROM raw_links