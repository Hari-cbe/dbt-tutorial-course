
  
    

    create or replace table `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__products`
      
    
    

    OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description=""""""
    )
    as (
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
    );
  