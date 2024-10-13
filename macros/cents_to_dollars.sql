{% macro cents_to_dollars (col_name,decimals) %}


(
    ROUND({{col_name}}/100,{{decimals}})
    
)



{% endmacro %}