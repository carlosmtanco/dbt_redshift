

select 'green' as taxi_type
,VendorID
,lpep_pickup_datetime as pickup_datetime
,lpep_dropoff_datetime as dropoff_datetime
,store_and_fwd_flag
,RatecodeID
,PULocationID
,DOLocationID
,passenger_count
,trip_distance
,fare_amount
,extra
,mta_tax
,tip_amount
,tolls_amount
,ehail_fee
,improvement_surcharge
,total_amount
,payment_type
,trip_type
,congestion_surcharge
,null as airport_fee
from "taxiwh"."taxi_external"."green"

UNION ALL

select 'yellow' as taxi_type
,VendorID
,tpep_pickup_datetime as pickup_datetime
,tpep_dropoff_datetime as dropoff_datetime
,store_and_fwd_flag
,RatecodeID
,PULocationID
,DOLocationID
,passenger_count
,trip_distance
,fare_amount
,extra
,mta_tax
,tip_amount
,tolls_amount
,null as ehail_fee
,improvement_surcharge
,total_amount
,payment_type
,null as trip_type
,congestion_surcharge
,airport_fee
from "taxiwh"."taxi_external"."yellow"