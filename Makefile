build:
	docker compose build

start:
	docker compose up

bash:
	docker compose run --rm web bash

specs:
	docker compose run --rm web rspec

migrate:
	docker compose run --rm web rails db:create db:migrate
