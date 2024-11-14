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
