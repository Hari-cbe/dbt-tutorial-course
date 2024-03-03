with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`products`

)

select
    id,
    cost,
    category,
    name,
    brand,
    retail_price,
    department,
    sku,
    distribution_center_id

from source