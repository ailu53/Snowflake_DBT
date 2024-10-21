
select orderid,

{% for method in dbt_utils.get_column_values(table=ref('src_payments'), column='paymentmethod') %}
sum(case when paymentmethod = '{{method}}' then amount_dollar end) as {{method}}_amount,

{% endfor %}

from {{ ref('src_payments') }}
group by orderid
