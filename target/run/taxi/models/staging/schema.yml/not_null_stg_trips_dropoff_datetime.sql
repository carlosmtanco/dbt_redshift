select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select dropoff_datetime
from "taxiwh"."taxi_dbt"."stg_trips"
where dropoff_datetime is null



      
    ) dbt_internal_test