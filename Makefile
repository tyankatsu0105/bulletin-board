build:
	cd server && docker compose build

setup-bundler:
	cd server && bundle config set path 'vendor/bundle'

up:
	cd server && docker compose up -d
down:
	cd server && docker compose down

createdb:
	cd server && docker compose run server rails db:create

shell:
	cd server && docker compose exec server sh

db-migrate:
	cd server && docker compose run server rails db:migrate

rails-console:
	cd server && docker compose run server rails console