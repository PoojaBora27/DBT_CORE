{{ config(
    materialized = 'incremental',
    unique_key = 'addressid',
    alias = 'Addresses_incremental'
) }}

select *
from {{ source('STAGING', 'Addresses') }}