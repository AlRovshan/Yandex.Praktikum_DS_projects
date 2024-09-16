select *
from ( select
    count(ticket_flights.ticket_no) as ticket_amount,
    extract(week from flights.arrival_time) as week_number
from
    flights
inner join ticket_flights on ticket_flights.flight_id = flights.flight_id
inner join airports on airports.airport_code = flights.arrival_airport
where flights.arrival_time::date >= '2018-07-23' and
    flights.arrival_time::date <= '2018-09-30' and
    airports.city = 'Москва'
group by
     extract(week from flights.arrival_time) ) as sub1
left join (select extract(week from festivals.festival_date) as festival_week,
    festivals.festival_name
from
    festivals
where festivals.festival_date >= '2018-06-23' and
    festivals.festival_date <= '2018-09-30' and
    festivals.festival_city = 'Москва') as sub2 on sub1.week_number = sub2.festival_week