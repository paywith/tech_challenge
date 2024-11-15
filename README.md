# README
## Development

**Build the project**: `make build`
**Start the project**: `make start`
**Run bash on the project**: `make bash`
**Run all the tests**: `make specs`


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
curl -X DELETE http://localhost:3000/items/1 \
  -H "Content-Type: application/json"
```


## Challenge

This is an ordering system, so far we only have implemented the management of the items that will be sold, which are documented above. For this challenge, we need you to implement the features described below:

- Add an API to receive the orders, this should receive a list of items, along with the delivery address and it should create the records in a way that we can keep track of how much we need to charge the customer, which items and where to deliver them to.
- After the order is created, we need to notify another service, which is responsible for charging the order of the order creation (we need to send the id of each created order), by making a request to an url, that needs to be configurable.
- Create an api that should list the orders, along with all items, names and prices using json format.

You are free to design the relationships and the application like you think it is the best way
