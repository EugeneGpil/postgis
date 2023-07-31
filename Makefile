start:
	docker compose up --build --detach --force-recreate --remove-orphans

stop:
	docker compose stop

exec-15:
	docker compose exec postgres-15.3 bash
	#psql -U pguser -d test

exec-11:
	docker compose exec --user=postgres postgres-11 bash
	# psql

# CREATE DATABASE test;
# \c test;
# CREATE EXTENSION Postgis;
