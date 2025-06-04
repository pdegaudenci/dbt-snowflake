select
  model,
  year,
  avg(mileage) as avg_mileage,
  count(*) as total_vehicles
from {{ ref('stg_fleet') }}
group by 1, 2
