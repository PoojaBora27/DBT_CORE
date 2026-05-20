{{ config(
    materialized = 'incremental',
    unique_key = 'productid',
    alias = 'Products_incremental'
) }}

select *
from {{ source('STAGING', 'Products') }}
where createdby in ('7','9')