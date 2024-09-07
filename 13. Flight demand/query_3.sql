select
    subq.city,
    avg(cnt_flight) as average_flights
from
    (select 
         extract(day from flights.arrival_time) as day_arrival,
         airports.city,
         count(flights.flight_id) as cnt_flight
     from airports
     inner join flights on flights.arrival_airport = airports.airport_code
     where (flights.arrival_time::date) >= '2018-08-01' and (flights.arrival_time::date) <= '2018-08-31'
     group by
         airports.city,
         day_arrival
     order by
         day_arrival
    ) as subq
group by
   subq.city 