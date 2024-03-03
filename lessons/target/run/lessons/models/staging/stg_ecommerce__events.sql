
  
    

    create or replace table `datatalks-de-409612`.`dbt_dev`.`stg_ecommerce__events`
      
    partition by timestamp_trunc(created_at, day)
    

    OPTIONS(
      expiration_timestamp=TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 168 hour),
    
      description=""""""
    )
    as (
      

with source as (
    SELECT 
        *
    FROM `bigquery-public-data`.`thelook_ecommerce`.`events`
)

SELECT  
    id AS event_id,
	user_id,
	sequence_number,
	session_id,
	created_at,
	ip_address,
	city,
	state,
	postal_code,
	browser,
	traffic_source,
	uri AS web_link,
	event_type

FROM source 


    );
  