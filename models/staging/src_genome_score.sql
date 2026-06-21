WITH raw_genome_scores AS(
    SELECT * FROM RAW_DB.RAW_SCHEMA.RAW_GENOME_SCORES
)
SELECT
    movieId AS movie_id,
    tagId AS tag_id,
    relevance
FROM raw_genome_scores