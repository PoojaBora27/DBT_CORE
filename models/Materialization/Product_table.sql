{{ config(
    materialized = 'table',
    alias = 'Products_table'
) }}

select *
from {{ source('STAGING', 'Products') }}
where createdby in ('7','9')