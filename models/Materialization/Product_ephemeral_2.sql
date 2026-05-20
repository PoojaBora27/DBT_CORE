{{ config(
    materialized = 'table',
    alias = 'Products_ephemeral'
) }}
select * from {{ ref('Product_ephemeral_1') }}