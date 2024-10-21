
{{config (materialized='incremental',unique_key='id')}}


SELECT 

id,
first_name,
last_name


FROM {{ source ('jaffle', 'customers')}}
