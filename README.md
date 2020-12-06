# Record Hunt App

An app that allows the user to look up record Shops, and the vinyl Records they have. It contains the following models:

- A Shop model with attributes name, city, and address
- A Record model with attributes title, artist, year, and price.

Records belong to Shops and Shops can have many Records. The app is designed to view/modify Records through Shops ony; i.e. Records cannot be accessed without going through their associated Shop.

Some things the app can do: 

- View all Shops
- Create a Shop... new Record Shops are always exciting! Note that two Shops cannot share the same address and city.
- Read a Shop's details... e.g. what's their address again?
- Update a Shop's details if it moves or rebrands
- Delete a Shop if it closes :(

- View all Records in a Shop
- Create a Record for a Shop if an order comes in, or if a customer trades one in
- Read a Record's details once you locate it in a Shop
- Update a Record's details... e.g. if if it's been mislabelled or goes on sale
- Delete a Record from a Shop when it gets sold


## Endpoints

#### Retrieve list of all Shops
GET /shops
Response:
200 OK
[
    {
        "id": 1,
        "name": "example shop",
        "city": "example city",
        "address": "123 example street",
        "created_at": "2020-12-06T21:36:48.372Z",
        "updated_at": "2020-12-06T21:36:48.372Z"
    }
]

#### Retrieve a single Shop
GET /shops/1
Response:
200 OK
{
    "id": 1,
    "name": "example shop",
    "city": "example city",
    "address": "123 example street",
    "created_at": "2020-12-06T21:36:48.372Z",
    "updated_at": "2020-12-06T21:36:48.372Z"
}

#### Create a new Shop
POST /shops
{
    "name": "example shop second branch",
    "city": "example city",
    "address": "238 example street"
}
Response:
201 CREATED
{
    "id": 11,
    "name": "example shop second branch",
    "city": "example city",
    "address": "238 example street",
    "created_at": "2020-12-06T21:44:18.675Z",
    "updated_at": "2020-12-06T21:44:18.675Z"
}

#### Update a Shop
PATCH /shops/1
{
    "address": "234 example street"
}
Response:
200 OK
{
    "id": 1,
    "name": "example shop",
    "city": "example city",
    "address": "234 example street",
    "created_at": "2020-12-06T21:36:48.372Z",
    "updated_at": "2020-12-06T21:57:03.569Z"
}

#### Delete a Shop
DELETE /shops/1
Response:
200 OK
[]


#### Retrieve list of all Records in a Shop
GET /shops/1/records
Response:
200 OK
[
    {
        "id": 1,
        "title": "Bad",
        "artist": "Michael Jackson",
        "year": 1987,
        "price": 32
    }
]

#### Retrieve a single Record in a Shop
GET /shops/1/records/1
Response:
200 OK
{
    "id": 1,
    "title": "Bad",
    "artist": "Michael Jackson",
    "year": 1987,
    "price": 32
}

#### Create a new Record in a Shop
POST /shops/1/records
{
    "title": "1999",
    "artist": "Prince",
    "year": 1982,
    "price": 33
}
Response:
201 CREATED
{
    "id": 501,
    "title": "1999",
    "artist": "Prince",
    "year": 1982,
    "price": 33
}

#### Update a Record in a Shop
PATCH /shops/1/records/1
{
    "price": 45
}
Response:
200 OK
{
    "id": 1,
    "title": "Bad",
    "artist": "Michael Jackson",
    "year": 1967,
    "price": 45
}

#### Delete a Record from a Shop
DELETE /shops/1/records1/
Response:
200 OK
[]
