{{
  config(
    materialized = 'view'
    )
}}
with src_listings as (
    select * from {{ ref('src_listings') }}
)
select
    LISTING_ID,
    LISTING_NAME,
    ROOM_TYPE,
case
    when MINIMUM_NIGHTS = 0 then 1
    else MINIMUM_NIGHTS
end as MINIMUM_NIGHTS,
    HOST_ID,
    replace(
        PRICE_STR,
        '$'
    ) :: number(
        10,
        2
    ) as PRICE,
    CREATED_AT,
    UPDATED_AT
from
    src_listings