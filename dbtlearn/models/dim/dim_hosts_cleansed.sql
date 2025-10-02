{{
  config(
    materialized = 'view'
    )
}}
WITH src_hosts AS (
    SELECT 
        *
    FROM {{ref("src_hosts")}}
)
SELECT 
    created_at,
    host_id,
    COALESCE(host_name, 'Anonymous') AS host_name,
    is_superhost,
    updated_at
FROM src_hosts

/* 
    CASE
        WHEN host_name IS NULL OR host_name = '' THEN 'Anonymous'
        ELSE host_name
    END AS host_name


    IFNULL(host_name, 'Anonymous') AS host_name
    -- or
    COALESCE(host_name, 'Anonymous') AS host_name

    NVL( host_name, 'Anonymous' ) AS host_name
*/

