select
    festivals.festival_name,
    extract(week from festivals.festival_date) as festival_week
from
    festivals
where festivals.festival_date >= '2018-06-23' and
    festivals.festival_date <= '2018-09-30' and
    festivals.festival_city = 'Москва'