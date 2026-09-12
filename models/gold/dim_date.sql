{{ config(
    schema='GOLD',
    materialized='table'
) }}

WITH date_range AS (
    SELECT
        MIN(ORDER_DATE) AS MIN_DATE,
        MAX(ORDER_DATE) AS MAX_DATE
    FROM {{ ref('silver_orders') }}
),

dates AS (
    SELECT
        DATEADD(
            DAY,
            SEQ4(),
            MIN_DATE
        ) AS DATE
    FROM date_range,
         TABLE(GENERATOR(ROWCOUNT => 10000))
    WHERE DATEADD(
        DAY,
        SEQ4(),
        MIN_DATE
    ) <= MAX_DATE
)

SELECT
    DATE,
    YEAR(DATE) AS YEAR,
    QUARTER(DATE) AS QUARTER,
    MONTH(DATE) AS MONTH,
    MONTHNAME(DATE) AS MONTH_NAME,
    WEEKOFYEAR(DATE) AS WEEK,
    DAY(DATE) AS DAY,
    DAYNAME(DATE) AS DAY_NAME
FROM dates