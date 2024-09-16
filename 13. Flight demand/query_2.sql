select
    count(flights.flight_id) as flight_id,
    case when aircrafts.model like 'Boeing%' then 'Boeing'
    when aircrafts.model like 'Airbus%' then 'Airbus'
    else 'other'
    end as flights_amount
from
    flights
inner join aircrafts on aircrafts.aircraft_code = flights.aircraft_code
where
    (departure_time::date) >= '2018-09-01' and (departure_time::date) <= '2018-09-30'
group by
    flights_amount