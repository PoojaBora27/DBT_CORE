{% macro generate_increment_id(column_name) %}
    row_number() over (order by {{ column_name }})
{% endmacro %}
