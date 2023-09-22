build:
	docker compose build

up:
	docker compose up
down:
	docker compose down

define createdb
	docker compose run server rails db:create
endef

shell:
	docker compose exec server sh