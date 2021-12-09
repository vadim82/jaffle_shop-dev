{% snapshot customers_snapshot %}

    {{
        config(
          target_schema='snapshots',
          unique_key='id',
          strategy='check',
          check_cols=['id']
        )
    }}

select * from {{ ref('raw_customers') }}

{% endsnapshot %}