# Спрос на рейсы авиакомпании

Для авиакомпании, выполняющая внутренние пассажирские перевозки, необхадимо понять предпочтения пользователей, покупающих билеты на разные направления.

Целью проекта является изучение базы данных и анализ спроса пассажиров на рейсы в города, где проходят крупнейшие культурные фестивали.

В налиичии файлы с результатами SQL-запросов (query_1, query_3).

**query_1.csv** — результат первого запроса. В нём содержится такая информация:

- *model* — **модель самолета;
- *flights_amount* — количество рейсов для каждой модели самолетов *model* в сентябре 2018 года.

**query_3.csv** — результат третьего запроса. В нём содержится такая информация:

- *city* — город;
- *average_flights* — среднее количество рейсов, прибывающих в город (*city*) за день в сентябре 2018 года.

 Для этих двух наборов данных нужно:

- импортировать файлы;
- изучить данные в них;
- проверить типы данных на корректность;
- выбрать топ-10 городов по количеству рейсов;
- построить графики: модели самолётов и количество рейсов, города и количество рейсов, топ-10 городов и количество рейсов;
- сделать выводы по каждому из графиков, пояснить результат.