select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select status
from `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__orders`
where status is null



      
    ) dbt_internal_test