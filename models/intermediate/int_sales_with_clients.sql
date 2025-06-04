with sales as (
  select * from {{ ref('stg_sales') }}
),
clients as (
  select * from {{ ref('stg_clients') }}
)

select
  s.sale_id,
  s.dealer_id,
  s.sale_date,
  s.vehicle_model,
  s.units_sold,
  s.price_usd,
  c.customer_id,
  c.region
from sales s
left join clients c
  on s.dealer_id = c.customer_id
