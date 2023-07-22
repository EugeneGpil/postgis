start:
	docker compose up --build --detach --force-recreate

stop:
	docker compose stop

exec:
	docker compose exec postgres bash
	#psql -U pguser -d test

# Первым делом зайти в командной строке в psql, создать database, use эту database
# И "CREATE EXTENSION Postgis;"
# Иначе не будут работать гео вычисления