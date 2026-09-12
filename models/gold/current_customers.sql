{{ config(
    schema='GOLD',
    materialized='view'
) }}

SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE,
    LOYALTY_TIER,
    CITY,
    STATE,
    COUNTRY,
    UPDATED_AT
FROM {{ ref('customer_snapshot') }}
WHERE DBT_VALID_TO IS NULL