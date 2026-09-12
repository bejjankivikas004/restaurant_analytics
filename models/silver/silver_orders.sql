{{ config(
    schema='SILVER',
    materialized='table'
) }}

SELECT
    ORDER_ID,
    ORDER_LINE_ID,
    ORDER_DATE,
    CUSTOMER_ID,
    MENU_ITEM_ID,
    RESTAURANT_ID,
    ORDER_CHANNEL,
    QTY,
    UNIT_PRICE,
    DISCOUNT_PCT,
    PAYMENT_TYPE,
    ORDER_STATUS,

    QTY * UNIT_PRICE AS GROSS_AMOUNT,

    (QTY * UNIT_PRICE) * (DISCOUNT_PCT / 100) AS DISCOUNT_AMOUNT,

    (QTY * UNIT_PRICE)
        - ((QTY * UNIT_PRICE) * (DISCOUNT_PCT / 100)) AS NET_AMOUNT

FROM {{ ref('stg_orders') }}