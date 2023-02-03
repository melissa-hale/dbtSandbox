{% snapshot scd_raw_listings %}

{{
   config(
       target_schema='snapshots',
       unique_key='id',
       strategy='timestamp',
       updated_at='updated_at',
       invalidate_hard_deletes=True,
   )
}}

select * from {{ source('airbnb', 'listings') }}

{% endsnapshot %}