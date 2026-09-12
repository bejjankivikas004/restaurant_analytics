{{ config(
    schema='GOLD',
    materialized='view'
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
FROM {{ ref('menu_item_snapshot') }}
WHERE DBT_VALID_TO IS NULL