{{ config(
    schema='GOLD',
    materialized='table'
) }}

SELECT
    MENU_ITEM_ID,
    ITEM_NAME,
    ITEM_TYPE,
    CUISINE,
    DIET_TYPE,
    LIST_PRICE,
    STATUS,
    UPDATED_AT
FROM {{ ref('silver_menu_items') }}