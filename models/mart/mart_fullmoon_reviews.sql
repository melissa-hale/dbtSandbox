{{
  config(
    materialized = 'table',
    post_hook='GRANT SELECT ON {{ this }} TO ROLE REPORTER'
    )
}}

with fct_reviews as (
    select * from {{ ref('fct_reviews_cleansed') }}
),
full_moon_dates as (
    select * from {{ ref('seed_full_moon_dates') }}
)

select
    r.*,
case
    when fm.full_moon_date is null then 'not full moon'
    else 'full moon'
end as is_full_moon
from
    fct_reviews as r
    left join full_moon_dates as fm
    on (to_date(r.review_date) = dateadd(day, 1, fm.full_moon_date))