with orders_last_year as (

  select *
  from {{ ref('fct_orders') }}

)
select
  customer_id
  count(*)
from orders_last_year
group by customer_id