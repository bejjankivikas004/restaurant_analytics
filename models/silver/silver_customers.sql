{{ config(
    schema='SILVER',
    materialized='table'
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
FROM {{ ref('stg_customers') }}