with raw as (
  select * from {{ source('raw', 'fleet_data') }}
)

select
  vin,
  model,
  year,
  mileage,
  cast(last_checkin as timestamp) as last_checkin
from raw
