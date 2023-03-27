select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select VendorID
from "taxiwh"."taxi_external"."green"
where VendorID is null



      
    ) dbt_internal_test