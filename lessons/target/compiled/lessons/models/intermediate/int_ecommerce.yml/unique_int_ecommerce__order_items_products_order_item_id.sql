
    
    

with dbt_test__target as (

  select order_item_id as unique_field
  from `datatalks-de-409612`.`dbt_dev`.`int_ecommerce__order_items_products`
  where order_item_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


