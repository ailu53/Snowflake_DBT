

SELECT

id,
user_id,
status,
order_date,
_ETL_LOADED_AT

FROM {{ source('jaffle','orders')}}