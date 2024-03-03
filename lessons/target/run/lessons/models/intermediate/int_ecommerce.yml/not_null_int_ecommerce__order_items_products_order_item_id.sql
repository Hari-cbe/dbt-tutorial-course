select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_item_id
from `datatalks-de-409612`.`dbt_dev`.`int_ecommerce__order_items_products`
where order_item_id is null



      
    ) dbt_internal_test