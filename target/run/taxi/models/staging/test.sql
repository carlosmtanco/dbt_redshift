

  create view "taxiwh"."taxi_dbt"."test__dbt_tmp" as (
    

select * from "taxiwh"."taxi_external"."fulldata"
  ) with no schema binding;
