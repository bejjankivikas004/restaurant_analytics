{{ config(
    schema='GOLD',
    materialized='table'
) }}

SELECT
    m.CUISINE,
    SUM(f.NET_AMOUNT) AS TOTAL_REVENUE,
    SUM(f.QTY) AS TOTAL_ITEMS_SOLD,
    COUNT(DISTINCT f.ORDER_ID) AS TOTAL_ORDERS
FROM {{ ref('fact_orders') }} f

INNER JOIN {{ ref('silver_menu_items') }} m
    ON f.MENU_ITEM_ID = m.MENU_ITEM_ID

GROUP BY m.CUISINE
ORDER BY TOTAL_REVENUE DESC