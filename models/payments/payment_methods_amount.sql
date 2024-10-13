
{% set payment_methods = [ 'credit_card','coupon','bank_transfer','gift_card'] %}

select  orderid ,


{% for method in payment_methods %}
sum(case when paymentmethod = '{{method}}' then amount_dollar end) as {{method}}_ammount,

{% endfor %}

from {{ ref('src_payments')}}
group by orderid