{{ config(
    materialized = 'ephemeral',
    alias = 'Products_ephemeral'
) }}

select *
from {{ source('STAGING', 'Products') }}
where createdby in ('7')