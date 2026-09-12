{% snapshot customer_snapshot %}

{{
    config(
        target_schema='GOLD',
        unique_key='CUSTOMER_ID',
        strategy='timestamp',
        updated_at='UPDATED_AT'
    )
}}

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

FROM {{ ref('silver_customers') }}

{% endsnapshot %}