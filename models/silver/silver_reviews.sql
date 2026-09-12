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
    REVIEW_CATEGORY,
    REVIEW_DATE
FROM {{ ref('stg_reviews') }}