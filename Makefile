up:
	docker compose up
down:
	docker compose down

build:
	docker compose build
# reinit:
# 	make down
# 	rm -r server/db/data
# 	make build
# 	make up