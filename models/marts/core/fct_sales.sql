select
  dealer_id,
  vehicle_model,
  sum(units_sold) as total_units,
  sum(price_usd) as total_revenue
from {{ ref('int_sales_with_clients') }}
group by 1, 2
