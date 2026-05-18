{% macro Price_in_dollar(price_col_name,decimal_places) %}
round(({{price_col_name}}/96.05),{{decimal_places}})
{% endmacro %}