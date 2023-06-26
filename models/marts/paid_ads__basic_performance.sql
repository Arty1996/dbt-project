{{ config (
    materialized="table"
)}}

SELECT *
FROM {{ ref ('transform_bing') }}

UNION ALL

SELECT *
FROM {{ ref ('transform_facebook') }}

UNION ALL

SELECT *
FROM {{ ref ('transform_tiktok') }}

UNION ALL

SELECT *
FROM {{ ref ('transform_twitter') }}