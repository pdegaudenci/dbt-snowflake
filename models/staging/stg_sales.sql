with raw as (
  select * from {{ source('raw', 'sales_data') }}
)

select
  sale_id,
  dealer_id,
  cast(date as date) as sale_date,
  vehicle_model,
  units_sold,
  price_usd
from raw
