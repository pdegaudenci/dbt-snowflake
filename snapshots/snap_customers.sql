{% snapshot snap_customers %}
{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='timestamp',
      updated_at='registered_on'
    )
}}

select * from {{ ref('stg_clients') }}

{% endsnapshot %}
