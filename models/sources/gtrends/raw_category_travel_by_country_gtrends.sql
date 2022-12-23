SELECT
    CAST (date AS DATE) AS date,
    hits,
    geo AS country,
    time,
    gprop AS source,
    category
from {{ source('imports','countries_v2') }}