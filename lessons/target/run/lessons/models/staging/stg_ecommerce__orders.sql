
  
    

    create or replace table `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__orders`
      
    
    

    OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description="""1 order per row order"""
    )
    as (
      with source as (

    select * from `bigquery-public-data`.`thelook_ecommerce`.`orders`

)
    select
        order_id,
        user_id,
        status,
        gender,
        created_at,
        returned_at,
        shipped_at,
        delivered_at,
        num_of_item

    from source
    );
  