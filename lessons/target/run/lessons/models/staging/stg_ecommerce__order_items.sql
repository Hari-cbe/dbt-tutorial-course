
  
    

    create or replace table `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__order_items`
      
    
    

    OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description=""""""
    )
    as (
      with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`order_items`

)
select
    id,
    order_id,
    user_id,
    product_id,
    inventory_item_id,
    status,
    created_at,
    shipped_at,
    delivered_at,
    returned_at,
    sale_price

from source
    );
  