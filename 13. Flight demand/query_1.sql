select
    count(flights.flight_id) as flight_id,
    aircrafts.model as model
from
    flights
inner join aircrafts on aircrafts.aircraft_code = flights.aircraft_code
where
    (departure_time::date) >= '2018-09-01' and (departure_time::date) <= '2018-09-30'
group by
    aircrafts.model