{% macro payment_methods() %}

    {% set results = run_query("select distinct paymentmethod from {{ ref('src_payments')}}") %}
    
    {% set payment_methods = results.columns[0].values() %}

    {{return(payment_methods)}}

{% endmacro %}