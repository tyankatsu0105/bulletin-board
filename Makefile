setup-bundler:
	bundle config set path 'vendor/bundle'

build:
	docker compose build

up:
	docker compose up -d
down:
	docker compose down

createdb:
	docker compose run server rails db:create

shell:
	docker compose exec server sh

db-migrate:
	docker compose run server rails db:migrate

rails-console:
	docker compose run server rails console