{{config(materialized = 'table',tags=["payments"])}}

SELECT 

ID,
Orderid,
Paymentmethod,
Status,
{{ cents_to_dollars('amount',3)}} as amount_dollar,
created,
_batched_at


FROM {{ source('stripe','payment')}}