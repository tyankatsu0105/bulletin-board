setup-bundler:
	cd server && bundle config set path 'vendor/bundle'
build:
	cd server && docker compose build && bundle update --bundler
install:
	cd server && docker compose exec server bundle install

up:
	cd server && docker compose up -d
down:
	cd server && docker compose down

createdb:
	cd server && docker compose run server rails db:create

shell:
	cd server && docker compose exec server sh

migrate:
	cd server && docker compose exec server rails db:migrate
rollback:
	cd server && docker compose exec server rails db:rollback

rails-console:
	cd server && docker compose exec server rails console

format:
	cd server && docker compose exec server rubocop --auto-correct-all