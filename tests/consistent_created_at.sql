select
    fct.review_date,
    dim.created_at
from
    {{ ref('fct_reviews_cleansed') }} as fct
join
    {{ ref('dim_listings_cleansed') }} as dim on fct.listing_id = dim.listing_id
where
    fct.review_date < dim.created_at