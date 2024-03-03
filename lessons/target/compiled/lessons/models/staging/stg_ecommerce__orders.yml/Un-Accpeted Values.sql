
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__orders`
    group by status

)

select *
from all_values
where value_field not in (
    'Processing','Cancelled','Complete','Returned','Shipped'
)


