select productid , 
weightmeasure,
price,
{{ Price_in_dollar('price',1) }} as price_in_$
 from {{ source('STAGING', 'Products') }} 
 where prodcategoryid in ('RO','EB')