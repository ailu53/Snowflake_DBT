{{ config (materialized = 'table',schema = 'ghy')}}

select * from {{ ref('country')}}