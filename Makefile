start:
	docker compose up --build --detach --force-recreate

stop:
	docker compose stop

exec:
	docker compose exec postgres bash
	#psql -U pguser -d test
