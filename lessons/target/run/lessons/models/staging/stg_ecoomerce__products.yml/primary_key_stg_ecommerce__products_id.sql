select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
WITH validation as (
    SELECT 

    id as primary_key,
    count(1) as occurance

    FROM `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__products`
    GROUP BY 1
)
SELECT ''
FROM validation
WHERE primary_key IS NULL OR occurance > 1


      
    ) dbt_internal_test