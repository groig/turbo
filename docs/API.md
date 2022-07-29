# API Documentation

  * [TurboWeb.AddressController](#turboweb-addresscontroller)
    * [index](#turboweb-addresscontroller-index)
    * [create](#turboweb-addresscontroller-create)
    * [show](#turboweb-addresscontroller-show)
    * [create](#turboweb-addresscontroller-create)
    * [update](#turboweb-addresscontroller-update)
    * [show](#turboweb-addresscontroller-show)
    * [update](#turboweb-addresscontroller-update)
    * [delete](#turboweb-addresscontroller-delete)
    * [show](#turboweb-addresscontroller-show)
    * [delete](#turboweb-addresscontroller-delete)
  * [TurboWeb.CarController](#turboweb-carcontroller)
    * [index](#turboweb-carcontroller-index)
    * [create](#turboweb-carcontroller-create)
    * [show](#turboweb-carcontroller-show)
    * [create](#turboweb-carcontroller-create)
    * [update](#turboweb-carcontroller-update)
  * [TurboWeb.ConfirmationController](#turboweb-confirmationcontroller)
    * [create](#turboweb-confirmationcontroller-create)
    * [update](#turboweb-confirmationcontroller-update)
  * [TurboWeb.CustomerController](#turboweb-customercontroller)
    * [index](#turboweb-customercontroller-index)
    * [show](#turboweb-customercontroller-show)
  * [TurboWeb.DriverController](#turboweb-drivercontroller)
    * [index](#turboweb-drivercontroller-index)
    * [show](#turboweb-drivercontroller-show)
    * [location](#turboweb-drivercontroller-location)
    * [license](#turboweb-drivercontroller-license)
  * [TurboWeb.RegistrationController](#turboweb-registrationcontroller)
    * [create](#turboweb-registrationcontroller-create)
  * [TurboWeb.ResetPasswordController](#turboweb-resetpasswordcontroller)
    * [create](#turboweb-resetpasswordcontroller-create)
    * [update](#turboweb-resetpasswordcontroller-update)
  * [TurboWeb.AuthController](#turboweb-authcontroller)
    * [create](#turboweb-authcontroller-create)
    * [delete](#turboweb-authcontroller-delete)
  * [TurboWeb.SettingsController](#turboweb-settingscontroller)
    * [update](#turboweb-settingscontroller-update)
    * [confirm_email](#turboweb-settingscontroller-confirm_email)
  * [TurboWeb.WalletController](#turboweb-walletcontroller)
    * [show](#turboweb-walletcontroller-show)
    * [credit](#turboweb-walletcontroller-credit)

## TurboWeb.AddressController
### <a id=turboweb-addresscontroller-index></a>index
#### index lists all addresses for a customer

##### Request
* __Method:__ GET
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer N0uhgxf9xL7Qnyt20tV8dtBN2hA_M7znjFz3bswY1zQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TCR8wQFlc0AABRh
```
* __Response body:__
```json
[]
```

### <a id=turboweb-addresscontroller-create></a>create
#### create address renders address when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer i-3WgA2Wyn_RJiwaVJgkn8tzoZShnUBiOSqUdowBTE0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  },
  "name": "some address"
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TEbf2gf9GYAABUh
```
* __Response body:__
```json
{
  "id": "57da14c4-d831-454a-a26c-399735a7d977",
  "location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  },
  "name": "some address"
}
```

### <a id=turboweb-addresscontroller-show></a>show
#### create address renders address when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/57da14c4-d831-454a-a26c-399735a7d977
* __Request headers:__
```
accept: application/json
authorization: Bearer i-3WgA2Wyn_RJiwaVJgkn8tzoZShnUBiOSqUdowBTE0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TFetKof9GYAABVB
```
* __Response body:__
```json
{
  "id": "57da14c4-d831-454a-a26c-399735a7d977",
  "location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "crs": {
      "properties": {
        "name": "EPSG:4326"
      },
      "type": "name"
    },
    "type": "Point"
  },
  "name": "some address"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/b6cd26bc-62e0-4eb3-94a4-8f809a79eefc
* __Request headers:__
```
accept: application/json
authorization: Bearer kk37j7aiCFV_8z3EBVntofO0ATIGGiOJjLSmuH_vSPk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S67ZfTBeIkAAAvk
```
* __Response body:__
```json
{
  "id": "b6cd26bc-62e0-4eb3-94a4-8f809a79eefc",
  "location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "crs": {
      "properties": {
        "name": "EPSG:4326"
      },
      "type": "name"
    },
    "type": "Point"
  },
  "name": "address-576460752303419582"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/b6cd26bc-62e0-4eb3-94a4-8f809a79eefc
* __Request headers:__
```
accept: application/json
authorization: Bearer sAZgWFAECJ6szvU8k-AsiJd1p7JlqbZUseP3LTyk_Jc=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S7rRO_BeIkAAAxj
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-create></a>create
#### create address renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer NqyrC2vHdyNrw6gGFnqC_I10IE7ayXOKcc12BuI96wc=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "location": null,
  "name": null
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TJQXjz92O0AAA7D
```
* __Response body:__
```json
{
  "errors": {
    "location": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-addresscontroller-update></a>update
#### update address renders address when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/a03a4b00-5436-431d-bdec-99e2bc235cd2
* __Request headers:__
```
accept: application/json
authorization: Bearer rOXgv62w-WmYCZf-2JD1SOHyv_U92eD1z9CANOhcQ34=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "address": {
    "location": {
      "coordinates": [
        42.2,
        20.42
      ],
      "type": "Point"
    },
    "name": "New Name"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SY6NC7s6cUAAAdk
```
* __Response body:__
```json
{
  "id": "a03a4b00-5436-431d-bdec-99e2bc235cd2",
  "location": {
    "coordinates": [
      42.2,
      20.42
    ],
    "type": "Point"
  },
  "name": "New Name"
}
```

### <a id=turboweb-addresscontroller-show></a>show
#### update address renders address when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/a03a4b00-5436-431d-bdec-99e2bc235cd2
* __Request headers:__
```
accept: application/json
authorization: Bearer rOXgv62w-WmYCZf-2JD1SOHyv_U92eD1z9CANOhcQ34=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S2YYk7s6cUAABIh
```
* __Response body:__
```json
{
  "id": "a03a4b00-5436-431d-bdec-99e2bc235cd2",
  "location": {
    "coordinates": [
      42.2,
      20.42
    ],
    "crs": {
      "properties": {
        "name": "EPSG:4326"
      },
      "type": "name"
    },
    "type": "Point"
  },
  "name": "New Name"
}
```

### <a id=turboweb-addresscontroller-update></a>update
#### update address only owner can edit address

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/54938142-b438-4c24-a16f-bbae76ca021c
* __Request headers:__
```
accept: application/json
authorization: Bearer wLfE4nBon_UzOf_0jSS6XSYtTJFbPCiBLaZQxzShHzE=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "address": {
    "location": {
      "coordinates": [
        42.2,
        20.42
      ],
      "type": "Point"
    },
    "name": "New Name"
  }
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SQS26GfUnEAAAri
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/7b148f50-8cc9-4634-a905-b541cd7cd327
* __Request headers:__
```
accept: application/json
authorization: Bearer eooLY1yIbpeYzUjXjaPAx2gxv2utsA8zfjGaGegLTpw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "address": {
    "location": null,
    "name": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S-3mbm03ekAAAxk
```
* __Response body:__
```json
{
  "errors": {
    "location": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address deletes chosen address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/c44c60c4-06fb-449e-a3fc-d7579e356419
* __Request headers:__
```
accept: application/json
authorization: Bearer rdhXKzv4VW1S7qBjuI3ko8ncpdxtDtACczWy-cf5FfQ=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0RVQzJr035QAAASk
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/c44c60c4-06fb-449e-a3fc-d7579e356419
* __Request headers:__
```
accept: application/json
authorization: Bearer rdhXKzv4VW1S7qBjuI3ko8ncpdxtDtACczWy-cf5FfQ=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SGqfxz035QAAAdj
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/e2089dce-d9eb-4d08-9cb9-7b41c8ba09b1
* __Request headers:__
```
accept: application/json
authorization: Bearer tB8qn5icc5PeTJcQJ8oJYBBg5DD4QUz2riC57k2LG90=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SVf6G9ZJ20AAAgD
```
* __Response body:__
```json
"Not Found"
```

## TurboWeb.CarController
### <a id=turboweb-carcontroller-index></a>index
#### index lists all cars for the driver

##### Request
* __Method:__ GET
* __Path:__ /api/cars
* __Request headers:__
```
accept: application/json
authorization: Bearer BfS4UbspchZQHBkYDLGVmlQIckUZx_0HUeBs3HVZH68=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TP_B8N98woAAA6k
```
* __Response body:__
```json
[
  {
    "color": "some color",
    "id": "cda67eec-fee7-493b-bd31-cdd107c78cc6",
    "license_plate": "license--576460752303419772",
    "make": "some make",
    "model": "some model"
  }
]
```

### <a id=turboweb-carcontroller-create></a>create
#### create car renders car when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/cars
* __Request headers:__
```
accept: application/json
authorization: Bearer b6XE0TyvrFY3XqS001GVBBZLmndwX2vtA6PcquMBFQg=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303417983",
  "make": "some make",
  "model": "some model"
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TGSMnxVubUAABWh
location: /api/cars/9ece182a-91e7-40f7-8757-105337e06679
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "9ece182a-91e7-40f7-8757-105337e06679",
  "license_plate": "license--576460752303417983",
  "make": "some make",
  "model": "some model"
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/9ece182a-91e7-40f7-8757-105337e06679
* __Request headers:__
```
accept: application/json
authorization: Bearer b6XE0TyvrFY3XqS001GVBBZLmndwX2vtA6PcquMBFQg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0THPppFVubUAAA1k
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "9ece182a-91e7-40f7-8757-105337e06679",
  "license_plate": "license--576460752303417983",
  "make": "some make",
  "model": "some model"
}
```

### <a id=turboweb-carcontroller-create></a>create
#### create car renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/cars
* __Request headers:__
```
accept: application/json
authorization: Bearer cZuCEmjqtNG8yF-Ppxnq-M4RUI48jyl2EZKX5MQTedk=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "car": {
    "color": null,
    "license_plate": null,
    "make": null,
    "model": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0Svd9yLvBXYAAAnk
```
* __Response body:__
```json
{
  "errors": {
    "color": [
      "can't be blank"
    ],
    "license_plate": [
      "can't be blank"
    ],
    "make": [
      "can't be blank"
    ],
    "model": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-carcontroller-update></a>update
#### update car renders car when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/cars/6f2286df-bab8-42c5-b817-a9a8efd570ad
* __Request headers:__
```
accept: application/json
authorization: Bearer gKgDGzEQJIdp7DiWNNYNZkNJceblzFNsITkoUGNVZdw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "car": {
    "color": "some updated color",
    "license_plate": "some updated license_plate",
    "make": "some updated make",
    "model": "some updated model"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TM6inzdKX4AAA_D
```
* __Response body:__
```json
{
  "color": "some updated color",
  "id": "6f2286df-bab8-42c5-b817-a9a8efd570ad",
  "license_plate": "some updated license_plate",
  "make": "some updated make",
  "model": "some updated model"
}
```

## TurboWeb.ConfirmationController
### <a id=turboweb-confirmationcontroller-create></a>create
#### POST /confirm sends a new confirmation token

##### Request
* __Method:__ POST
* __Path:__ /api/confirm
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303419359@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SZ3trH2ksQAAAeE
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

#### POST /confirm does not send confirmation token if User is confirmed

##### Request
* __Method:__ POST
* __Path:__ /api/confirm
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421692@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SW84Ho2plMAAA-B
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

#### POST /confirm does not send confirmation token if email is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/confirm
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "unknown@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SbmLDeY-1oAAAiD
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

### <a id=turboweb-confirmationcontroller-update></a>update
#### POST /confirm/:token confirms the given token once

##### Request
* __Method:__ POST
* __Path:__ /api/confirm/ixM-f42irMKlCQU7xNacpYYbtVlcdGEvmDoJn6OHUyM
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0RpBwJFM2RIAAAWE
```
* __Response body:__
```json
{
  "message": "User confirmed successfully."
}
```

#### POST /confirm/:token confirms the given token once

##### Request
* __Method:__ POST
* __Path:__ /api/confirm/ixM-f42irMKlCQU7xNacpYYbtVlcdGEvmDoJn6OHUyM
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SVlbvBM2RIAAAxi
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "User confirmation code is invalid or it has expired."
    }
  ]
}
```

#### POST /confirm/:token does not confirm email with invalid token

##### Request
* __Method:__ POST
* __Path:__ /api/confirm/oops
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SYWJddOeRoAAA_h
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "User confirmation code is invalid or it has expired."
    }
  ]
}
```

## TurboWeb.CustomerController
### <a id=turboweb-customercontroller-index></a>index
#### index lists all customers

##### Request
* __Method:__ GET
* __Path:__ /api/customers
* __Request headers:__
```
accept: application/json
authorization: Bearer RWK7-vkrAtMPFGnYzikaPYxfntqDCkVIsEVv3dm60kQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SjLK-ozqsQAAA0i
```
* __Response body:__
```json
{
  "data": []
}
```

### <a id=turboweb-customercontroller-show></a>show
#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/3c0e92ea-c5c1-4cd3-980e-78f35b649b83
* __Request headers:__
```
accept: application/json
authorization: Bearer z0SaYknq2f_4PmC7u5hntaktN2Q06pJ4vMrlTb1SJ24=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0RbJSNv6_fEAAATk
```
* __Response body:__
```json
{
  "id": "3c0e92ea-c5c1-4cd3-980e-78f35b649b83"
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/f1aa9817-5ffa-48ab-a8e4-6a4ac57a1ce9
* __Request headers:__
```
accept: application/json
authorization: Bearer z0SaYknq2f_4PmC7u5hntaktN2Q06pJ4vMrlTb1SJ24=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SbGorj6_fEAAAfk
```
* __Response body:__
```json
{
  "id": "f1aa9817-5ffa-48ab-a8e4-6a4ac57a1ce9"
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/e5caec6c-39a2-47cc-93f4-a87a16380dcf
* __Request headers:__
```
accept: application/json
authorization: Bearer 2m7g6lVbHdxB2j5e5zZA2ggNHIcdLwtiGInXJvNhC2U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0Se-FxJxBNAAABCh
```
* __Response body:__
```json
{
  "id": "e5caec6c-39a2-47cc-93f4-a87a16380dcf"
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/6feab1c8-e046-4e6b-a33d-8208e0ea0c14
* __Request headers:__
```
accept: application/json
authorization: Bearer 2m7g6lVbHdxB2j5e5zZA2ggNHIcdLwtiGInXJvNhC2U=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SgBwpBxBNAAABDB
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Not Found"
```

## TurboWeb.DriverController
### <a id=turboweb-drivercontroller-index></a>index
#### index lists all drivers when user is admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers
* __Request headers:__
```
accept: application/json
authorization: Bearer MIaNlOTSPPstM5GCM2_827-Q74-oj1hBnUWnsN4x-VQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TRyI0ZssGsAABCj
```
* __Response body:__
```json
[
  {
    "id": "46494515-b785-46d5-bd29-3764c30dea35"
  },
  {
    "id": "a9d81147-a0d9-42dc-b392-48a13580ec6a"
  },
  {
    "id": "859fdc48-6322-4bd7-af37-e60f745c5ab3"
  }
]
```

#### index lists only self 

##### Request
* __Method:__ GET
* __Path:__ /api/drivers
* __Request headers:__
```
accept: application/json
authorization: Bearer kERoD31e0yy5ZnoDEfBZumStvvYnqHmb8oHNZladLOQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TKqlWtLOM8AAA3k
```
* __Response body:__
```json
[
  {
    "id": "a56e1621-71cd-450d-a5d3-55bc644be5ca"
  }
]
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/8cca01d7-b4ed-4b22-a334-c7146489c341
* __Request headers:__
```
accept: application/json
authorization: Bearer cx7cHlBAmtjBo8Hmp8gd7NQUkDAq5ZDYX53m9oObD_U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S7oQt_sgzYAAAwE
```
* __Response body:__
```json
{
  "id": "8cca01d7-b4ed-4b22-a334-c7146489c341"
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/ae396b1f-443d-46e4-941b-64165908d039
* __Request headers:__
```
accept: application/json
authorization: Bearer cx7cHlBAmtjBo8Hmp8gd7NQUkDAq5ZDYX53m9oObD_U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S8ciyvsgzYAAA-i
```
* __Response body:__
```json
{
  "id": "ae396b1f-443d-46e4-941b-64165908d039"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/c9f93c73-b83b-4452-b998-c9728e07916e
* __Request headers:__
```
accept: application/json
authorization: Bearer vRR2gn9sZBU3_oOilLFaxdIinB2ZSQUjoIKbXPufLaQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TNlU76U8nwAABch
```
* __Response body:__
```json
{
  "id": "c9f93c73-b83b-4452-b998-c9728e07916e"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/1070d89b-1782-4b21-ad21-85bc0299f47c
* __Request headers:__
```
accept: application/json
authorization: Bearer vRR2gn9sZBU3_oOilLFaxdIinB2ZSQUjoIKbXPufLaQ=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TOITm-U8nwAABdB
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-drivercontroller-location></a>location
#### updates driver with the last reported location

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/location
* __Request headers:__
```
accept: application/json
authorization: Bearer YXCNJ8rD6Lu-AXERsUcG1WTDGM-GlQojkUKNEG0qEfA=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "last_location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0RmfUnDOkysAAAVk
```
* __Response body:__
```json
{
  "location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  }
}
```

### <a id=turboweb-drivercontroller-license></a>license
#### updates drivers license

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/license
* __Request headers:__
```
accept: application/json
authorization: Bearer jgtLPFu4WMSrZpC6iMcb6ktj1t4eJUAQIFZDGXCOT5I=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303420189"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S-yxXQOo5AAAA0D
```
* __Response body:__
```json
{
  "message": "Driver license updated successfully"
}
```

## TurboWeb.RegistrationController
### <a id=turboweb-registrationcontroller-create></a>create
#### POST /register customer creates customer and logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer": {
    "email": "user-576460752303421212@example.com",
    "name": "user-576460752303421180",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SrvYysIx18AAAlE
```
* __Response body:__
```json
{
  "id": "7857c315-b180-44b8-8b0b-63dfa763f587",
  "token": "NqXz-JMCLRAkVjMx7d829RW22ZpHS0cB7ni0SIBj4tw="
}
```

#### POST /register customer render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer": {
    "email": "with spaces",
    "password": "toosmol"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SpPyvffy3gAAAnj
```
* __Response body:__
```json
{
  "errors": {
    "email": [
      "must have the @ sign and no spaces"
    ],
    "name": [
      "can't be blank"
    ],
    "password": [
      "should be at least 8 character(s)"
    ]
  }
}
```

#### POST /register driver creates driver and logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303420606@example.com",
    "license": "driver-license-abc",
    "name": "user-576460752303420574",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SRplT6us5AAAAui
```
* __Response body:__
```json
{
  "id": "34d33802-a0d5-466e-b36b-add1e9b531a7",
  "token": "TYH0We5JA0XxZCcv-XF-Jntkc4jv5Stzqcx1AtbT1vo="
}
```

#### POST /register driver render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303420893@example.com",
    "name": "user-576460752303420861",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SpktYUxC48AAAqD
```
* __Response body:__
```json
{
  "errors": {
    "license": [
      "can't be blank"
    ]
  }
}
```

#### POST /register admin creates admin

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "admin": {
    "email": "user-576460752303420830@example.com",
    "name": "user-576460752303420798",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SCj_8ej-tMAAArC
```
* __Response body:__
```json
{
  "message": "Admin user created successfully "
}
```

#### POST /register admin render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "admin": {
    "email": "with spaces",
    "password": "toosmol"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SiajVytuWAAAA0C
```
* __Response body:__
```json
{
  "errors": {
    "email": [
      "must have the @ sign and no spaces"
    ],
    "name": [
      "can't be blank"
    ],
    "password": [
      "should be at least 8 character(s)"
    ]
  }
}
```

## TurboWeb.ResetPasswordController
### <a id=turboweb-resetpasswordcontroller-create></a>create
#### POST /reset_password sends a new reset password token

##### Request
* __Method:__ POST
* __Path:__ /api/reset_password
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303420988@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0St-NuIGCgkAABDh
```
* __Response body:__
```json
{
  "message": "If your email is in our system, you will receive instructions to reset your password shortly."
}
```

#### POST /reset_password does not send reset password token if email is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/reset_password
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "unknown@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SpeE3Zd3GQAAAoD
```
* __Response body:__
```json
{
  "message": "If your email is in our system, you will receive instructions to reset your password shortly."
}
```

### <a id=turboweb-resetpasswordcontroller-update></a>update
#### PUT /reset_password/:token resets password once

##### Request
* __Method:__ PUT
* __Path:__ /api/reset_password/rtcRVBrgSBgv3V1y0990ss8TSF0dthk3jSrqe-JSSWA
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "password": "new valid password",
  "password_confirmation": "new valid password"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SvrjiX5_0gAAA7C
```
* __Response body:__
```json
{
  "message": "Password reset successfully."
}
```

#### PUT /reset_password/:token does not reset password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/reset_password/H3dpqWZZBlT24taHHJ7KB8vFBafgMC16Oe7kckiVxPQ
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "password": "toosmol",
  "password_confirmation": "does not match"
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SAOv4xY_RUAAAdD
```
* __Response body:__
```json
{
  "errors": {
    "password": [
      "should be at least 8 character(s)"
    ],
    "password_confirmation": [
      "does not match password"
    ]
  }
}
```

#### PUT /reset_password/:token does not reset password with invalid token

##### Request
* __Method:__ PUT
* __Path:__ /api/reset_password/oops
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SsDw4hDJsMAAAsD
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "Reset password token is invalid or it has expired."
    }
  ]
}
```

## TurboWeb.AuthController
### <a id=turboweb-authcontroller-create></a>create
#### POST /log_in logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/log_in
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303419966@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0Sn3sUHkE6YAAAnD
```
* __Response body:__
```json
{
  "token": "YUDTNrSyvHtBQsdab3UsPjrfP_g9uFkVAv1HkffpQ-8="
}
```

#### POST /log_in emits error message with invalid credentials

##### Request
* __Method:__ POST
* __Path:__ /api/log_in
* __Request headers:__
```
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421244@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0Srxm4qtmIYAAArj
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "Invalid email or password."
    }
  ]
}
```

### <a id=turboweb-authcontroller-delete></a>delete
#### DELETE /log_out logs the user out

##### Request
* __Method:__ DELETE
* __Path:__ /api/log_out
* __Request headers:__
```
accept: application/json
authorization: Bearer qOlaJOtYUaSCCOroU-8lPY9cWiMarT0y21orkjYGwRE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SlMdta5mCoAAA2C
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

#### DELETE /log_out succeeds even if the user is not logged in

##### Request
* __Method:__ DELETE
* __Path:__ /api/log_out
* __Request headers:__
```
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0SqnUM1Pg54AAAiE
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

## TurboWeb.SettingsController
### <a id=turboweb-settingscontroller-update></a>update
#### PUT /settings (change password) updates the user password and resets tokens

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer C-_dEHEcILW6Coz3yHQK0BVXhg4JGA5Du05ee4o0C28=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_password",
  "current_password": "hello world!",
  "passwords": {
    "password": "new valid password",
    "password_confirmation": "new valid password"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TIMjIXebOsAABIC
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "UkDi5QaDQ0hd87XvdztOdfkmS_jsuHwwZo9-yXYc5SA="
}
```

#### PUT /settings (change password) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer Pkfn7MvBGTns6EpfAy1Xv2NKTwhACWi71hb-llIGZ8Y=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_password",
  "current_password": "invalid",
  "passwords": {
    "password": "toosmol",
    "password_confirmation": "does not match"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TLoYdnb-v8AABZh
```
* __Response body:__
```json
{
  "errors": {
    "current_password": [
      "is not valid"
    ],
    "password": [
      "should be at least 8 character(s)"
    ],
    "password_confirmation": [
      "does not match password"
    ]
  }
}
```

#### PUT /settings (change email) updates the user email

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer 8Vu3xvYviFhRSYzP8GU9iTKUnvE9KhEFzhZDZpvoy1Q=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303418431@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S8ro0KfYZQAABPh
```
* __Response body:__
```json
{
  "message": "A code to confirm your email change has been sent to the new address."
}
```

#### PUT /settings (change email) does not update email on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer 9G2sadA-piywzUq8EXEC9oCNknq9qhezzwlSquOaRVw=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "invalid",
  "email": "with spaces"
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TOITdaD4IsAABNi
```
* __Response body:__
```json
{
  "errors": {
    "current_password": [
      "is not valid"
    ],
    "email": [
      "must have the @ sign and no spaces"
    ]
  }
}
```

#### PUT /settings (change name) updates the user name

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer kNDfbStOrV0w9qBI1WbFXSmp3SaoDd6ofxzH9ivH5Ro=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303420381"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S6YG6OKnogAAAxD
```
* __Response body:__
```json
{
  "message": "User name updated successfully"
}
```

#### PUT /settings (change name) does not update name on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer MdZSIbfierCJZIkCffIdjgMf13UYJYf6lHi0ZI__A5s=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": ""
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S2E0DDOWQIAAA7i
```
* __Response body:__
```json
{
  "errors": {
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-settingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/uAKQVsO-ckoZF6lHR8w-0LOO4zbzOGUuprUwn4JWSmo
* __Request headers:__
```
authorization: Bearer YAtilJL5Ue-WIUD8vrezrSovAEPfwG7x-jr4WguBXO8=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TDv4FTPq_YAABEi
```
* __Response body:__
```json
{
  "message": "Email changed successfully."
}
```

#### GET /users/settings/confirm_email/:token does not update email with invalid token

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/oops
* __Request headers:__
```
authorization: Bearer 6kpg6t9Uylvp-usEmUWrAW6eufohHOQxwWXNkpncS2g=
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0S0SCspWJhIAAArE
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "Email change code is invalid or it has expired."
    }
  ]
}
```

## TurboWeb.WalletController
### <a id=turboweb-walletcontroller-show></a>show
#### show returns the drivers wallet

##### Request
* __Method:__ GET
* __Path:__ /api/wallet
* __Request headers:__
```
accept: application/json
authorization: Bearer U8cMCq2LLtZnLLqTCIT-UGBisyebjKyMn5eCcuw5xps=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0Tx4YN_SmsMAABND
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "1bddc215-bf4c-46ad-ad69-6f3e60f23b1f"
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/9e73d6a2-1cf4-46c1-b4fb-e874f7139685
* __Request headers:__
```
accept: application/json
authorization: Bearer yKqq7zTM4HweK-e8Ks7E37a5ArE1CZBaRFQy1K2pmyo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0T04SzWV1-QAABgC
```
* __Response body:__
```json
{
  "credit": 42,
  "id": "9e73d6a2-1cf4-46c1-b4fb-e874f7139685"
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/9e73d6a2-1cf4-46c1-b4fb-e874f7139685
* __Request headers:__
```
accept: application/json
authorization: Bearer yKqq7zTM4HweK-e8Ks7E37a5ArE1CZBaRFQy1K2pmyo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 1,
  "transfer_id": "2233344455",
  "type": "card"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0T1s4paV1-QAABgi
```
* __Response body:__
```json
{
  "credit": 43,
  "id": "9e73d6a2-1cf4-46c1-b4fb-e874f7139685"
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/ff216ae0-14eb-42dd-a344-61ae07240ec6
* __Request headers:__
```
accept: application/json
authorization: Bearer _m5YGzB_3hg_Nw6-pjJBGA7RlJLC9RMOVna1Z6doSGU=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwZm0TzM6t-xT_kAABdC
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

