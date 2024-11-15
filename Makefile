build:
	docker compose build

start:
	docker compose up

bash:
	docker compose run --rm web bash

specs:
	docker compose run --rm web rspec

setup_db:
	docker compose run --rm web rails db:create db:migrate db:seed
