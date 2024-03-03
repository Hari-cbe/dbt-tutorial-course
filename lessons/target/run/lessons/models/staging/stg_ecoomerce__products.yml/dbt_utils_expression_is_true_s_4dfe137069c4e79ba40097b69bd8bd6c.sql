select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      



select
    1
from `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__products`

where not(retail_price >= cost)


      
    ) dbt_internal_test