SELeCT * FROM {{ source('jaffle','orders')}}
WHERE order_date < current_date()