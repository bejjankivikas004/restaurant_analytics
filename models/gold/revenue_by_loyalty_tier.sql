{{ config(
    schema='GOLD',
    materialized='table'
) }}

SELECT
    c.LOYALTY_TIER,
    SUM(f.NET_AMOUNT) AS TOTAL_REVENUE,
    COUNT(DISTINCT f.ORDER_ID) AS TOTAL_ORDERS,
    SUM(f.QTY) AS TOTAL_ITEMS_SOLD
FROM {{ ref('fact_orders') }} f

INNER JOIN {{ ref('silver_customers') }} c
    ON f.CUSTOMER_ID = c.CUSTOMER_ID

GROUP BY c.LOYALTY_TIER
ORDER BY TOTAL_REVENUE DESC