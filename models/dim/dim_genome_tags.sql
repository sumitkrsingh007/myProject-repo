WITH tags AS(
    SELECT * from {{ ref('src_genome_tags') }}
)

SELECT
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM tags