Первым делом зайти в командной строке в psql.

```
docker compose exec postgres bash

psql -U pguser -d test
```

Должно зайти и сразу выбрать базу данных `test`

```
test=#
```

И в этой базе данных

```postgresql
CREATE EXTENSION Postgis;
```

Добавляем `postgis extension` к базе данных `test`

Иначе не будут работать гео вычисления

Дальше тест, все ли сделано правильно

```postgresql
SELECT ST_Distance(
  'SRID=4326;POINT(-118.4079 33.9434)'::geography, -- Los Angeles (LAX)
  'SRID=4326;POINT(2.5559 49.0083)'::geography     -- Paris (CDG)
  );
```

Должно вывести

```
   st_distance    
------------------
 9124665.27317673
(1 row)

```