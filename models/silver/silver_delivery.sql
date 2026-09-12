{{ config(
    schema='SILVER',
    materialized='table'
) }}

SELECT
    ORDER_ID,
    DELIVERY_PARTNER,
    DISTANCE_KM,
    PREP_TIME_MIN,
    DELIVERY_TIME_MIN,
    DELIVERY_STATUS,

    PREP_TIME_MIN + DELIVERY_TIME_MIN AS TOTAL_DELIVERY_TIME_MIN

FROM {{ ref('stg_delivery') }}