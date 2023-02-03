{{
  config(
    materialized = 'view',
    post_hook='GRANT SELECT ON {{ this }} TO ROLE REPORTER'
    )
}}
with src_hosts as (
    select * from {{ ref('src_hosts') }}
)
select
    HOST_ID,
    nvl(HOST_NAME, 'Anonymous') as HOST_NAME,
    nvl(IS_SUPERHOST, 'f') as IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
from
    src_hosts
