# README
## Development

### Using make
**Build the project**: `make build` - Builds docker image

**Start the project**: `make start` - Starts web container and dependencies

**Run bash on the project**: `make bash` - Runs bash on web container

**Run all the tests**: `make specs` - Runs all specs on web container

**Setup database**: `make setup_db` - Creates, migrates and seeds the dev database

### Not using make

**Build the project**: `docker compose build` - Builds docker image

**Start the project**: `docker compose up` - Starts web container and dependencies

**Run bash on the project**: `docker compose run --rm web bash` - Runs bash on web container

**Run all the tests**: `docker compose run --rm web rspec` - Runs all specs on web container

**Setup database**: `docker compose run --rm web rails db:create db:migrate db:seed` - Creates, migrates and seeds the dev

## APIs

### Items

**Create an item**

```bash
curl -X POST http://localhost:3000/items \
  -H "Content-Type: application/json" \
  -d '{"price": 10, "name": "foo"}'
```

**Update an item**

```bash
curl -X PUT http://localhost:3000/items/1 \
  -H "Content-Type: application/json" \
  -d '{"price": 12, "name": "bar"}'
```

**List items**

```bash
curl -X GET http://localhost:3000/items/ \
  -H "Content-Type: application/json"
```

**Delete an item**

```bash
curl -X DELETE http://localhost:3000/customers/1 \
  -H "Content-Type: application/json"
```

### Customers

**Create a customer**

```bash
curl -X POST http://localhost:3000/customers \
  -H "Content-Type: application/json" \
  -d '{"name": "John Doe", "birth_date": "1986-06-22"}'
```

**Update a customer**

```bash
curl -X PUT http://localhost:3000/customers/1 \
  -H "Content-Type: application/json" \
  -d '{"name": "Jane Doe", "birth_date": "1994-06-22"}'
```

**List customers**

```bash
curl -X GET http://localhost:3000/customers/ \
  -H "Content-Type: application/json"
```

**Delete a customer**

```bash
curl -X DELETE http://localhost:3000/customers/1 \
  -H "Content-Type: application/json"
```

## Challenge

This is an ordering system, so far we only have implemented the management of the items that will be sold, which are documented above. For this challenge, we need you to implement the features described below:

- Add an API to receive the orders, this should receive a list of items, along with the Customer information, delivery address and it should create the records in a way that we can keep track of how much we need to charge the customer, which items are in the order, and who and where to deliver them to. You do not need to worry about taxes.
- After the order is created, we need to notify another service responsible for charging of the order creation, we don't need to worry about the billing information as the service should already have this information, only the order ID needs to be sent.
- Create an api that should list the orders, along with all items and customer information using JSON format.

You are free to design the relationships and the application like you think it is the best way
