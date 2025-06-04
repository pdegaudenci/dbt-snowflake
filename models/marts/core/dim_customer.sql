select
  customer_id,
  name,
  email,
  region,
  registered_on
from {{ ref('stg_clients') }}
