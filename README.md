# restApiDockerContainer
A simple REST API in PHP

## functional api calls

Read one item with ID:
```
GET http://localhost/api/product/read_one?id=XXX
```

Search for a item with search string:
```
GET http://localhost/api/product/search?s=XXX
```

Read all items:
```
GET http://localhost/api/product/read
```

Read all items that are in stock:
```
GET http://localhost/api/product/read_in_stock
```

Ordering one item with ID:
```
POST http://localhost/api/product/order
```
Body
```
{
    "id" : "1"
}
```
