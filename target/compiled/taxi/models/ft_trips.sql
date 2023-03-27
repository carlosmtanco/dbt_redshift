

select
trip.taxi_type
,trip.VendorID
,decode(trip.VendorID,
        1, 'Creative Mobile Technologies',
        2, 'VeriFone Inc.',
            'Unknown') as VendorName
,trip.pickup_datetime
,trip.dropoff_datetime
,trip.store_and_fwd_flag
,trip.RatecodeID
,decode(trip.RatecodeID,
        1, 'Standard rate',
        2, 'JFK',
        3, 'Newark',
        4, 'Nassau or Westchester',
        5, 'Negotiated fare',
        6, 'Group ride',
            'Unknown') as RatecodeDesc
,trip.PULocationID
,zone1.Borough as PUBorough
,zone1.Zone as PUZone
,zone1.service_zone as PUservice_zone
,trip.DOLocationID
,zone2.Borough as DOBorough
,zone2.Zone as DOZone
,zone2.service_zone as DOservice_zone
,trip.passenger_count
,trip.trip_distance
,datediff(seconds, pickup_datetime, dropoff_datetime) as trip_sec_duration
,trip.fare_amount
,trip.extra
,trip.mta_tax
,trip.tip_amount
,trip.tolls_amount
,trip.ehail_fee
,trip.improvement_surcharge
,trip.total_amount
,trip.payment_type
,decode(trip.payment_type,
        1, 'Credit card',
        2, 'Cash',
        3, 'No charge',
        4, 'Dispute',
        5, 'Unknown',
        6, 'Voided trip',
            null) as payment_desc
,trip.trip_type
,trip.congestion_surcharge
,trip.airport_fee
from "taxiwh"."taxi_dbt"."stg_trips" trip
left join "taxiwh"."taxi_external"."zones" zone1 on trip.PULocationID = zone1.LocationID
left join "taxiwh"."taxi_external"."zones" zone2 on trip.DOLocationID = zone2.LocationID