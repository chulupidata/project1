WITH raw FROM(SELECT
  country_simplified AS country,
  Name AS country_full_name,
  ISO_2 AS country_code_2,
  ISO_3 AS country_code_3,
  continent_name AS continent,
  Continent AS continent_code,
  country_flag,
  Internet AS domain_ending,
  Telephone AS telephone_country_code,
  Vehicle AS car_code,
  currency_name,
  currency_code,
  currency_symbol,
  GDP_2021_worldbank,
  ranking_GDP_2021_worldbank,
FROM {{ source('imports','country_codes') }}
),
SELECT * FROM raw