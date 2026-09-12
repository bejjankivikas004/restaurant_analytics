{{ config(
    schema='SILVER',
    materialized='table'
) }}

SELECT
    RESTAURANT_ID,
    RESTAURANT_NAME,
    REGION,
    CITY,
    STATE,
    COUNTRY,
    OPEN_DATE,
    SERVICE_MODES,
    STATUS
FROM {{ ref('stg_locations') }}