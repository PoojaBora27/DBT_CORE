{% snapshot Products_snapshots %}
{{ 
    config ( target_schema = 'Snapshots',
    unique_key = 'productid',
    strategy = 'check',
    check_cols = ['TYPECDE','CREATEDBY']
    )
}}
 SELECT * FROM {{ source('STAGING','Products')}}
{% endsnapshot %}