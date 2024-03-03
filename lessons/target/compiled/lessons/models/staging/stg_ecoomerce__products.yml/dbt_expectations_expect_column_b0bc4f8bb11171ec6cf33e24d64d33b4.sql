






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and retail_price >= 0
)
 as expression


    from `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__products`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







