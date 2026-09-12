{{ config(
    schema='SILVER',
    materialized='table'
) }}

SELECT
    REVIEW_ID,
    ORDER_ID,
    CUSTOMER_ID,
    RESTAURANT_ID,
    RATING,
    UPPER(TRIM(REVIEW_CATEGORY)) AS REVIEW_CATEGORY,
    REVIEW_DATE
FROM {{ source('bronze', 'BRONZE_REVIEWS') }}