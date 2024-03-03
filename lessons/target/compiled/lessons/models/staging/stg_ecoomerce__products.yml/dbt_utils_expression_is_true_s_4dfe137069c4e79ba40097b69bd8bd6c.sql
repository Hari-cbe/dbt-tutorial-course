



select
    1
from `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__products`

where not(retail_price >= cost)

