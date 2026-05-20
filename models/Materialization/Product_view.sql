{{ config(
    materialized = 'view',
    alias = 'Products_view'
) }}

select *
from {{ source('STAGING', 'Products') }}
where createdby in ('7','9')