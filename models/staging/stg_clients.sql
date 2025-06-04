with raw as (
  select * from {{ source('raw', 'clients_data') }}
)

select
  customer_id,
  name,
  email,
  region,
  cast(registered_on as date) as registered_on
from raw
