# API Documentation

  * [TurboWeb.UserChannel](#turboweb-userchannel)
    * [ping replies with status ok](#turboweb-userchannel-ping-replies-with-status-ok)
    * [shout broadcasts to user:lobby](#turboweb-userchannel-shout-broadcasts-to-user-lobby)
    * [broadcasts are pushed to the client](#turboweb-userchannel-broadcasts-are-pushed-to-the-client)
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
    * [delete](#turboweb-carcontroller-delete)
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
  * [TurboWeb.RateConfigurationController](#turboweb-rateconfigurationcontroller)
    * [update](#turboweb-rateconfigurationcontroller-update)
    * [show](#turboweb-rateconfigurationcontroller-show)
    * [update](#turboweb-rateconfigurationcontroller-update)
  * [TurboWeb.RateController](#turboweb-ratecontroller)
    * [index](#turboweb-ratecontroller-index)
    * [create_time_rate](#turboweb-ratecontroller-create_time_rate)
    * [show](#turboweb-ratecontroller-show)
    * [create_time_rate](#turboweb-ratecontroller-create_time_rate)
    * [create_area_rate](#turboweb-ratecontroller-create_area_rate)
    * [show](#turboweb-ratecontroller-show)
    * [create_area_rate](#turboweb-ratecontroller-create_area_rate)
    * [update_time_rate](#turboweb-ratecontroller-update_time_rate)
    * [show](#turboweb-ratecontroller-show)
    * [update_time_rate](#turboweb-ratecontroller-update_time_rate)
    * [update_area_rate](#turboweb-ratecontroller-update_area_rate)
    * [show](#turboweb-ratecontroller-show)
    * [update_area_rate](#turboweb-ratecontroller-update_area_rate)
    * [calculate](#turboweb-ratecontroller-calculate)
  * [TurboWeb.RegistrationController](#turboweb-registrationcontroller)
    * [create](#turboweb-registrationcontroller-create)
  * [TurboWeb.ResetPasswordController](#turboweb-resetpasswordcontroller)
    * [create](#turboweb-resetpasswordcontroller-create)
    * [update](#turboweb-resetpasswordcontroller-update)
  * [TurboWeb.RideController](#turboweb-ridecontroller)
    * [index](#turboweb-ridecontroller-index)
    * [create](#turboweb-ridecontroller-create)
    * [show](#turboweb-ridecontroller-show)
    * [create](#turboweb-ridecontroller-create)
    * [show](#turboweb-ridecontroller-show)
    * [update](#turboweb-ridecontroller-update)
  * [TurboWeb.AuthController](#turboweb-authcontroller)
    * [create](#turboweb-authcontroller-create)
    * [delete](#turboweb-authcontroller-delete)
  * [TurboWeb.SettingsController](#turboweb-settingscontroller)
    * [show](#turboweb-settingscontroller-show)
    * [update](#turboweb-settingscontroller-update)
    * [confirm_email](#turboweb-settingscontroller-confirm_email)
  * [TurboWeb.WalletController](#turboweb-walletcontroller)
    * [show](#turboweb-walletcontroller-show)
    * [credit](#turboweb-walletcontroller-credit)

## TurboWeb.UserChannel
### <a id=turboweb-userchannel-ping-replies-with-status-ok></a>ping replies with status ok
#### Message
* __Topic:__ user:lobby
* __Event:__ ping
* __Body:__
```json
{
  "hello": "there"
}
```
#### Reply
* __Status:__ ok
* __Body:__
```json
{
  "hello": "there"
}
```
### <a id=turboweb-userchannel-shout-broadcasts-to-user-lobby></a>shout broadcasts to user:lobby
#### Message
* __Topic:__ user:lobby
* __Event:__ shout
* __Body:__
```json
{
  "hello": "all"
}
```
#### Broadcast
* __Topic:__ user:lobby
* __Event:__ shout
* __Body:__
```json
{
  "hello": "all"
}
```
### <a id=turboweb-userchannel-broadcasts-are-pushed-to-the-client></a>broadcasts are pushed to the client
#### Broadcast
* __Topic:__ user:lobby
* __Event:__ broadcast
* __Body:__
```json
{
  "some": "data"
}
```
#### Message
* __Topic:__ user:lobby
* __Event:__ broadcast
* __Body:__
```json
{
  "some": "data"
}
```
## TurboWeb.AddressController
### <a id=turboweb-addresscontroller-index></a>index
#### index lists all addresses for a customer

##### Request
* __Method:__ GET
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer 2fbJdUNm187cAadTWlWbCTuxThSjIM3sJ1ukdmUL9X8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQy09vQ6wdsAACBD
```
* __Response body:__
```json
{
  "data": []
}
```

### <a id=turboweb-addresscontroller-create></a>create
#### create address renders address when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer QnEfLMVNU9vjIlr6m3D2GWq0Cte-Jm5AnHS87ZeRIWQ=
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
x-request-id: FykIlOE5VAxzHbgAAATj
```
* __Response body:__
```json
{
  "data": {
    "id": "e8ef67d8-84aa-49d4-8b16-398d99059fb8",
    "location": {
      "coordinates": [
        30.2,
        20.3
      ],
      "type": "Point"
    },
    "name": "some address"
  }
}
```

### <a id=turboweb-addresscontroller-show></a>show
#### create address renders address when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/e8ef67d8-84aa-49d4-8b16-398d99059fb8
* __Request headers:__
```
accept: application/json
authorization: Bearer QnEfLMVNU9vjIlr6m3D2GWq0Cte-Jm5AnHS87ZeRIWQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQMrxFtzHbgAABFE
```
* __Response body:__
```json
{
  "data": {
    "id": "e8ef67d8-84aa-49d4-8b16-398d99059fb8",
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
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/3ce730d9-b35d-446d-939e-aef9ae05fac3
* __Request headers:__
```
accept: application/json
authorization: Bearer as5LWyzOJ_ZCrzfFL-soEf4Kkvsshz8bu-87ohsAaa4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQT1yQhIQwEAABNE
```
* __Response body:__
```json
{
  "data": {
    "id": "3ce730d9-b35d-446d-939e-aef9ae05fac3",
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
    "name": "address-576460752303417759"
  }
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/3ce730d9-b35d-446d-939e-aef9ae05fac3
* __Request headers:__
```
accept: application/json
authorization: Bearer _hxtS1x4Xpxo5r3jYEKcYU0B6wyVRZFkXIi4FRasq_c=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQUi0m9IQwEAABNk
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
authorization: Bearer aT03NOyr7BGIl2AfQvbTVcr2zmz6D2V4lvsTouH0UmY=
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
x-request-id: FykIlQWopkP0wb8AABIC
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
* __Path:__ /api/addresses/3f1ec6dc-a0d0-4fdf-b570-8418c9d2d9fc
* __Request headers:__
```
accept: application/json
authorization: Bearer 1lpY4u7usHhA-kbTZAW4MoGHZWdihHQMHtOx_mSnapw=
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
x-request-id: FykIlQau15DI_GYAABoj
```
* __Response body:__
```json
{
  "data": {
    "id": "3f1ec6dc-a0d0-4fdf-b570-8418c9d2d9fc",
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

### <a id=turboweb-addresscontroller-show></a>show
#### update address renders address when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/3f1ec6dc-a0d0-4fdf-b570-8418c9d2d9fc
* __Request headers:__
```
accept: application/json
authorization: Bearer 1lpY4u7usHhA-kbTZAW4MoGHZWdihHQMHtOx_mSnapw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQbeiljI_GYAABLC
```
* __Response body:__
```json
{
  "data": {
    "id": "3f1ec6dc-a0d0-4fdf-b570-8418c9d2d9fc",
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
}
```

### <a id=turboweb-addresscontroller-update></a>update
#### update address only owner can edit address

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/ce44750b-016f-4b29-b857-8899744e258d
* __Request headers:__
```
accept: application/json
authorization: Bearer DglmEaIaIc3v5m8ejE1-X27nRjZcuaoRsBSzWGPQMJc=
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
x-request-id: FykIlQoeUEIezcUAABkk
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/9ff0b918-6e2f-4230-bcfb-740205e70944
* __Request headers:__
```
accept: application/json
authorization: Bearer dwOX864LdDZVZHnpkm6iQS6Ltvexcr6DzRJHdnDEP00=
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
x-request-id: FykIlQgfSiDpQcoAABsB
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
* __Path:__ /api/addresses/73fba617-1fed-4eb7-b96f-2e047a7d14a3
* __Request headers:__
```
accept: application/json
authorization: Bearer Ctb2wbW4DOQGspI16gmAYe8B6cSCrkUZQ546_Vvd-sY=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQvy6saTCIMAACAD
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/73fba617-1fed-4eb7-b96f-2e047a7d14a3
* __Request headers:__
```
accept: application/json
authorization: Bearer Ctb2wbW4DOQGspI16gmAYe8B6cSCrkUZQ546_Vvd-sY=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQwrKROTCIMAACAj
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/782c66c0-5f86-4071-a295-f86efa41503b
* __Request headers:__
```
accept: application/json
authorization: Bearer s2Bp4dDqCdsdSfiuNiZaegL9EanW6CvV8UUNZGqfGuo=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQshMyWdQfoAABqk
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
authorization: Bearer GHtj51hlIXncTiCv4FN2UosxPKDynzO4Pm0On4FqsdA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlOE5zEIgi1YAAArB
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "e0351ef6-9eea-4483-b1ea-6d0911ded4b6",
      "license_plate": "license--576460752303421660",
      "make": "some make",
      "model": "some model"
    }
  ]
}
```

### <a id=turboweb-carcontroller-create></a>create
#### create car renders car when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/cars
* __Request headers:__
```
accept: application/json
authorization: Bearer y1GQO8D5SUPMmN9DyvsoULCJrY6oNUIk9p6JWVNUnjA=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303419390",
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
x-request-id: FykIlPrRr8kKwzAAABAi
location: /api/cars/38f999c9-2cc3-40df-a28a-1626f80575a4
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "38f999c9-2cc3-40df-a28a-1626f80575a4",
    "license_plate": "license--576460752303419390",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/38f999c9-2cc3-40df-a28a-1626f80575a4
* __Request headers:__
```
accept: application/json
authorization: Bearer y1GQO8D5SUPMmN9DyvsoULCJrY6oNUIk9p6JWVNUnjA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP2hz7UKwzAAABGj
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "38f999c9-2cc3-40df-a28a-1626f80575a4",
    "license_plate": "license--576460752303419390",
    "make": "some make",
    "model": "some model"
  }
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
authorization: Bearer M-2w743fNakxvSwd0uAPPX5xCaMsGoaaiWNCgcOQDM4=
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
x-request-id: FykIlQBfg9xabyoAABTD
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
* __Path:__ /api/cars/209254f5-5d60-4e8c-94f3-2ce39ea67a79
* __Request headers:__
```
accept: application/json
authorization: Bearer Xg2G1K4B_wZWG9D-bHAGioglffQHSftHCYXxYGLUFAw=
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
x-request-id: FykIlP7oddLZGckAABMD
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "209254f5-5d60-4e8c-94f3-2ce39ea67a79",
    "license_plate": "some updated license_plate",
    "make": "some updated make",
    "model": "some updated model"
  }
}
```

### <a id=turboweb-carcontroller-delete></a>delete
#### delete car deletes chosen car

##### Request
* __Method:__ DELETE
* __Path:__ /api/cars/2936fd69-bf9b-4680-b516-8355653c4e72
* __Request headers:__
```
accept: application/json
authorization: Bearer 7T-ZiHdYthSyqN3ncZmIifiGE8bc75eRXX-xzhM7HZk=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQKA23MVSnUAABCE
```
* __Response body:__
```json

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
  "email": "user-576460752303422013@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlOW500menYcAAAYD
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
  "email": "user-576460752303420350@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPap0S34UwIAAAvE
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
x-request-id: FykIlPY6tzQHXvsAAAwC
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
* __Path:__ /api/confirm/I1au3cVBVt2Qgw3PyZ6eFTRk1wXC-K-WaENGchT1Lu8
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
x-request-id: FykIlPeDSNsKKpAAAAyk
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
* __Path:__ /api/confirm/I1au3cVBVt2Qgw3PyZ6eFTRk1wXC-K-WaENGchT1Lu8
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
x-request-id: FykIlPfW6owKKpAAAAzk
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
x-request-id: FykIlPb3KALSrNkAAAyi
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
authorization: Bearer zS3NZdBbGTCK4AjHVSIq1pBl7o2mUMhwvXfpudK7vlY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlOPn4rqzsgkAAAfi
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
* __Path:__ /api/customers/4d34b1ad-0d7d-4986-94c0-e78723dadd31
* __Request headers:__
```
accept: application/json
authorization: Bearer int6ZGRsauUCplwLJapm0rwAHCBbwwBpONBINqDsS44=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP5b-_UVUukAABLD
```
* __Response body:__
```json
{
  "data": {
    "id": "4d34b1ad-0d7d-4986-94c0-e78723dadd31"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d512054e-de7b-4a2c-b838-1634865b0832
* __Request headers:__
```
accept: application/json
authorization: Bearer int6ZGRsauUCplwLJapm0rwAHCBbwwBpONBINqDsS44=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP56diYVUukAABLj
```
* __Response body:__
```json
{
  "data": {
    "id": "d512054e-de7b-4a2c-b838-1634865b0832"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/ade4a609-8b80-44bf-9f18-9bd8aef219a9
* __Request headers:__
```
accept: application/json
authorization: Bearer tMwLb0WiF_SqKG2WtEvTAgZ4XblMxbj15QQLJFKBoGA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP1H8qGzVJAAABFj
```
* __Response body:__
```json
{
  "data": {
    "id": "ade4a609-8b80-44bf-9f18-9bd8aef219a9"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d3d5b571-b747-4b76-a769-edae85c44d01
* __Request headers:__
```
accept: application/json
authorization: Bearer tMwLb0WiF_SqKG2WtEvTAgZ4XblMxbj15QQLJFKBoGA=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP1xewOzVJAAABGD
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
authorization: Bearer oALWdClEENSNf1XfnN6i5_vCr34W9pGXbtWUaOEUZhk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlOj-7j70rE8AAAfj
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303421214@example.com",
      "id": "31edef9f-5c1f-43a7-88a9-e5db99bf3ec4",
      "name": "user-576460752303421246",
      "phone": "2307"
    },
    {
      "credit": 0,
      "email": "user-576460752303421022@example.com",
      "id": "e8d623ec-25d5-481e-940d-142549f16f3f",
      "name": "user-576460752303421054",
      "phone": "2499"
    },
    {
      "credit": 0,
      "email": "user-576460752303421276@example.com",
      "id": "3b2b900f-b1cc-4005-97b5-67c861308abf",
      "name": "user-576460752303421308",
      "phone": "2245"
    }
  ]
}
```

#### index list only id and locations when user is customer

##### Request
* __Method:__ GET
* __Path:__ /api/drivers
* __Request headers:__
```
accept: application/json
authorization: Bearer 29Xax0HuBwznKl3lfzKLP2DzDqpyCTVlv235e8_YzUk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPrMSKN03uIAABAD
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "2013d65a-56d5-4e17-83c8-982089a5370d",
      "last_location": {
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
      }
    }
  ]
}
```

#### index lists only self 

##### Request
* __Method:__ GET
* __Path:__ /api/drivers
* __Request headers:__
```
accept: application/json
authorization: Bearer uq3WIo8428cKM3yX3l2NIo7anQrnyTKtEtuH-YxLxsU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQT7xIVM520AABij
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303418908@example.com",
      "id": "d70ce026-2646-40e7-9ca1-57002c9cd55b",
      "name": "user-576460752303418940",
      "phone": "4613"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/58433264-f498-4850-af40-c47473912b40
* __Request headers:__
```
accept: application/json
authorization: Bearer aHiTYa_UWFaac4f1s8gVVO2qOs_Wi-Xi4cnS6gMdaUM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQc44DZCwh8AABMi
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303418044@example.com",
    "id": "58433264-f498-4850-af40-c47473912b40",
    "name": "user-576460752303418076",
    "phone": "5477"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/2397d97b-cac5-4e0d-8325-2388e565f34a
* __Request headers:__
```
accept: application/json
authorization: Bearer aHiTYa_UWFaac4f1s8gVVO2qOs_Wi-Xi4cnS6gMdaUM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQd0Ks1Cwh8AABnB
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303417884@example.com",
    "id": "2397d97b-cac5-4e0d-8325-2388e565f34a",
    "name": "user-576460752303417916",
    "phone": "5637"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/8ead0451-2640-476b-926e-7f7133871fc6
* __Request headers:__
```
accept: application/json
authorization: Bearer IwZnj6sSq7HrIgEyK5XAMe7tuB_u2QKIhGKOZcW3HaY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQXq6DHvpLYAABmD
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303417471@example.com",
    "id": "8ead0451-2640-476b-926e-7f7133871fc6",
    "name": "user-576460752303417503",
    "phone": "6050"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/a14b07b7-4e6a-4226-9182-76ddced822e2
* __Request headers:__
```
accept: application/json
authorization: Bearer IwZnj6sSq7HrIgEyK5XAMe7tuB_u2QKIhGKOZcW3HaY=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQYtJ9XvpLYAABQk
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
authorization: Bearer omWJd0B4k8VtC-FKiyAahsHpfn7lXwSnsYgixoLJljk=
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
x-request-id: FykIlQnO9u-V1-QAABik
```
* __Response body:__
```json
{
  "data": {
    "location": {
      "coordinates": [
        30.2,
        20.3
      ],
      "type": "Point"
    }
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
authorization: Bearer mJChtVAP9tdxpChQjoOEUoTvJdBAODJLmZUeUplafDM=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303417628"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQh6eMMKLWEAABcE
```
* __Response body:__
```json
{
  "message": "Driver license updated successfully"
}
```

## TurboWeb.RateConfigurationController
### <a id=turboweb-rateconfigurationcontroller-update></a>update
#### update rate_configuration renders rate_configuration when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer 3CaEl4L49r15y5Co-e2CE96eW_4w3xu31dSUiz4cN2o=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate_configuration": {
    "min_rate": 43
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRaNcVmMNd0AACPD
```
* __Response body:__
```json
{
  "data": {
    "id": "6b2d6104-8df0-47d5-960d-d78c5b639ec1",
    "min_rate": 43
  }
}
```

### <a id=turboweb-rateconfigurationcontroller-show></a>show
#### update rate_configuration renders rate_configuration when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer 3CaEl4L49r15y5Co-e2CE96eW_4w3xu31dSUiz4cN2o=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRapVjaMNd0AACTB
```
* __Response body:__
```json
{
  "data": {
    "id": "6b2d6104-8df0-47d5-960d-d78c5b639ec1",
    "min_rate": 43
  }
}
```

### <a id=turboweb-rateconfigurationcontroller-update></a>update
#### update rate_configuration renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer IDiXA5PwnMY80nw2F1z5qb3zVsoPFPzBDc3ohQP1Pb4=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate_configuration": {
    "min_rate": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRZLfQENSkoAABei
```
* __Response body:__
```json
{
  "errors": {
    "min_rate": [
      "can't be blank"
    ]
  }
}
```

## TurboWeb.RateController
### <a id=turboweb-ratecontroller-index></a>index
#### index lists all rates

##### Request
* __Method:__ GET
* __Path:__ /api/rates
* __Request headers:__
```
authorization: Bearer DV-QZkQ89-IrWhTlDILwoBdEE3wgVB7vOjUkeGeOm6c=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRKj99U_rHgAACGD
```
* __Response body:__
```json
{
  "data": []
}
```

#### index lists all rates

##### Request
* __Method:__ GET
* __Path:__ /api/rates
* __Request headers:__
```
authorization: Bearer DV-QZkQ89-IrWhTlDILwoBdEE3wgVB7vOjUkeGeOm6c=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRLAQXY_rHgAACHD
```
* __Response body:__
```json
{
  "data": [
    {
      "area": null,
      "description": "some description",
      "end": "21:34:00",
      "fixed_rate_comfort": null,
      "fixed_rate_familiar": null,
      "fixed_rate_standard": null,
      "id": "abc545f9-b51a-4c30-8bf3-f2bbf9283d0e",
      "name": "some name",
      "rate_per_km_comfort": 42,
      "rate_per_km_familiar": 42,
      "rate_per_km_standard": 42,
      "start": "20:34:00",
      "type": "time"
    }
  ]
}
```

### <a id=turboweb-ratecontroller-create_time_rate></a>create_time_rate
#### create time rate renders rate when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_time_rate
* __Request headers:__
```
authorization: Bearer J0T7ynSbklvWSLx1MUWrGqferu5J5Fm_qroEdmzO1pc=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "description": "some description",
    "end": "21:34:00",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRIHX7g_cr8AAB0k
location: /api/rates/aa8ff204-76a9-4481-a998-db1c5b41916c
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "aa8ff204-76a9-4481-a998-db1c5b41916c",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### create time rate renders rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/aa8ff204-76a9-4481-a998-db1c5b41916c
* __Request headers:__
```
authorization: Bearer J0T7ynSbklvWSLx1MUWrGqferu5J5Fm_qroEdmzO1pc=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRIiGWM_cr8AACIB
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "aa8ff204-76a9-4481-a998-db1c5b41916c",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-create_time_rate></a>create_time_rate
#### create time rate renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_time_rate
* __Request headers:__
```
authorization: Bearer 1JROG4YqvdlvwB3FdiBitGkDz1EewGqiJ0TBq-K5DBc=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRJmuEZQYC4AAB2k
```
* __Response body:__
```json
{
  "errors": {
    "end": [
      "End time can't be lower than start time"
    ],
    "name": [
      "can't be blank"
    ],
    "rate_per_km_comfort": [
      "can't be blank"
    ],
    "rate_per_km_familiar": [
      "can't be blank"
    ],
    "rate_per_km_standard": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-create_area_rate></a>create_area_rate
#### create area rate renders rate when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_area_rate
* __Request headers:__
```
authorization: Bearer 3_m7ysR_rUIba66ZaZxxMvwmvGCxUvv-mB-5e3l-qqw=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some description",
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "name": "some name"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRTt6MUU1WgAACMB
location: /api/rates/94f419ca-2b34-4e78-bee4-04dd1292f7c5
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some description",
    "end": null,
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "id": "94f419ca-2b34-4e78-bee4-04dd1292f7c5",
    "name": "some name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### create area rate renders rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/94f419ca-2b34-4e78-bee4-04dd1292f7c5
* __Request headers:__
```
authorization: Bearer 3_m7ysR_rUIba66ZaZxxMvwmvGCxUvv-mB-5e3l-qqw=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRUIDhAU1WgAACMh
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Polygon"
    },
    "description": "some description",
    "end": null,
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "id": "94f419ca-2b34-4e78-bee4-04dd1292f7c5",
    "name": "some name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-create_area_rate></a>create_area_rate
#### create area rate renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_area_rate
* __Request headers:__
```
authorization: Bearer q58tzIOQ-U6thyvQ33jbzSGJaKleGPkgvuOHK0jU-8w=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRYQNni9zqIAACSh
```
* __Response body:__
```json
{
  "errors": {
    "area": [
      "can't be blank"
    ],
    "fixed_rate_comfort": [
      "can't be blank"
    ],
    "fixed_rate_familiar": [
      "can't be blank"
    ],
    "fixed_rate_standard": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-update_time_rate></a>update_time_rate
#### update time rate renders time rate when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_time_rate/d97da178-8773-48c9-bb4d-c554a3e45e24
* __Request headers:__
```
authorization: Bearer Img-y2ukqQbKhRDv3f3IXMnEZjcTWi9r1WCvE29uxfs=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "description": "some updated description",
    "end": "21:34:00",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRGqK37svpkAAB0E
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "d97da178-8773-48c9-bb4d-c554a3e45e24",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### update time rate renders time rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/d97da178-8773-48c9-bb4d-c554a3e45e24
* __Request headers:__
```
authorization: Bearer Img-y2ukqQbKhRDv3f3IXMnEZjcTWi9r1WCvE29uxfs=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRHND6jsvpkAACGB
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "d97da178-8773-48c9-bb4d-c554a3e45e24",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-update_time_rate></a>update_time_rate
#### update time rate renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_time_rate/9de8b9eb-168a-4c59-9cbc-21be00691b51
* __Request headers:__
```
authorization: Bearer FLtTYZD5OcNhD4UHlWaU3VMvGqj7WMJzxWe_agIsiV8=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRMAOeCgjLUAACLh
```
* __Response body:__
```json
{
  "errors": {
    "end": [
      "End time can't be lower than start time"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-update_area_rate></a>update_area_rate
#### update area rate renders area rate when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_area_rate/d0d26a9a-518c-4519-8fe4-49354efb9d74
* __Request headers:__
```
authorization: Bearer fGGWHxnadlyOZEIj_kSrWeLdB0tfCzf9MsRnY8TbexY=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some updated description",
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "name": "some updated name"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRNNP61jffoAAB4k
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some updated description",
    "end": null,
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "id": "d0d26a9a-518c-4519-8fe4-49354efb9d74",
    "name": "some updated name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### update area rate renders area rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/d0d26a9a-518c-4519-8fe4-49354efb9d74
* __Request headers:__
```
authorization: Bearer fGGWHxnadlyOZEIj_kSrWeLdB0tfCzf9MsRnY8TbexY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRN8yLhjffoAAB5E
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Polygon"
    },
    "description": "some updated description",
    "end": null,
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "id": "d0d26a9a-518c-4519-8fe4-49354efb9d74",
    "name": "some updated name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-update_area_rate></a>update_area_rate
#### update area rate renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_area_rate/21fd2515-f49a-4649-8f52-39e08b47c9a0
* __Request headers:__
```
authorization: Bearer rAoAg_jCKt-6VQC1HIO5YQ_A88VRTHmwPTWaJIs-5WQ=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRPBQEsWH4YAACJD
```
* __Response body:__
```json
{
  "errors": {
    "area": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-calculate></a>calculate
#### rate calculation get_rate_for_ride/4 returns the correct rate by distance

##### Request
* __Method:__ GET
* __Path:__ /api/rates/calculate?car_type=standard&destination[coordinates][]=-82.400248999966&destination[coordinates][]=23.129377298679902&destination[type]=Point&distance=1&start_time=09%3A25%3A00
* __Request headers:__
```
authorization: Bearer 6zjt8ieJ0xAor1NN2vGtXJe1KGXjmMJbwHXNfHxDTGc=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRQxsBxhO7cAAB7E
```
* __Response body:__
```json
{
  "data": {
    "price": 250
  }
}
```

#### rate calculation get_rate_for_ride/4 when the ride starts at the rate edge

##### Request
* __Method:__ GET
* __Path:__ /api/rates/calculate?car_type=standard&destination[coordinates][]=-82.400248999966&destination[coordinates][]=23.129377298679902&destination[type]=Point&distance=1&start_time=08%3A00%3A00
* __Request headers:__
```
authorization: Bearer vQuwBtB8HM5At_p_bt3GBwKGcFUJsCK1YXX0cjVhMFo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRXBaKFGrIUAACQh
```
* __Response body:__
```json
{
  "data": {
    "price": 250
  }
}
```

#### rate calculation get_rate_for_ride/4 returns the correct rate by destination area

##### Request
* __Method:__ GET
* __Path:__ /api/rates/calculate?car_type=standard&destination[coordinates][]=-82.39861486471447&destination[coordinates][]=23.13752372138783&destination[type]=Point&distance=1&start_time=09%3A25%3A00
* __Request headers:__
```
authorization: Bearer 4XrSDaXN2tYlh9KtT5zxnUXSRxWb6axEGiO0NYACDSo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlRVh17fFjX8AACOh
```
* __Response body:__
```json
{
  "data": {
    "price": 10
  }
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
    "email": "user-576460752303420255@example.com",
    "name": "user-576460752303420223",
    "password": "hello world!",
    "phone": "3330"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlO1Hw_yMZpAAAA0h
```
* __Response body:__
```json
{
  "data": {
    "id": "20293ad9-b18e-4714-81a3-040ffe66b317",
    "token": "a-hGW_Lp0EoM-_FPDXRdP0AM4NLkERnuK2OXQsJJf8Q="
  }
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
x-request-id: FykIlPkLsNucs1gAAA2j
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
    ],
    "phone": [
      "can't be blank"
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
    "email": "user-576460752303418589@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303418557",
    "password": "hello world!",
    "phone": "4996"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP8MXnNw4X0AABOj
```
* __Response body:__
```json
{
  "data": {
    "id": "53217a03-2357-4cf7-9fbe-198a2df52fdc",
    "token": "b9UWZdfc7rBz2SG7kifDiBwYovbCfP5g_SGORWj8on0="
  }
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
    "email": "user-576460752303418879@example.com",
    "name": "user-576460752303418847",
    "password": "hello world!",
    "phone": "4706"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP6sqQqXfqsAABKB
```
* __Response body:__
```json
{
  "errors": {
    "identity_card": [
      "can't be blank"
    ],
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
    "email": "user-576460752303418141@example.com",
    "name": "user-576460752303418109",
    "password": "hello world!",
    "phone": "5444"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQELxZnpz_QAABVj
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
x-request-id: FykIlQAx1faon1sAABSj
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
    ],
    "phone": [
      "can't be blank"
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
x-request-id: FykIlPCgtHNWD9gAAAjj
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
x-request-id: FykIlPcKf-TCJJ0AAAzC
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
* __Path:__ /api/reset_password/RAMbtcCAuL_y8rgWdUFAGJ2rLovfA5NxDMpM4Q-D3bY
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
x-request-id: FykIlPYql486XrsAAAvi
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
* __Path:__ /api/reset_password/tfCergwPIhgovXfn2IH75zqXy9kBgUjORl59w9eGNzY
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
x-request-id: FykIlPhywFojDAkAAA0k
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
x-request-id: FykIlPdf9mKsAlcAAA-h
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

## TurboWeb.RideController
### <a id=turboweb-ridecontroller-index></a>index
#### index lists all rides for admins

##### Request
* __Method:__ GET
* __Path:__ /api/rides
* __Request headers:__
```
accept: application/json
authorization: Bearer NtycD_HvslKW-a4vQbpQI3oRPfvLYWk5F0Ew3sI5cJU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQpJYAImvoQAAB5D
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "6b1ca4ab-590e-4a61-9aea-28e111494d36",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "f7314d88-a770-485e-b474-26ae2628a836",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "568a09f5-8f6a-4e5d-9eda-21b4eb49e02f",
      "start_time": null
    }
  ]
}
```

#### index lists rides for customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides
* __Request headers:__
```
accept: application/json
authorization: Bearer _-LufuT2Fgfkrzp-C4mdn8uziMX-LKHcvINzlIlkqe8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQ2Sqmu211kAAB9B
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "2c2ab06c-4eab-4397-af33-7c4e65f7e93e",
      "start_time": null
    }
  ]
}
```

#### index lists rides for drivers

##### Request
* __Method:__ GET
* __Path:__ /api/rides
* __Request headers:__
```
accept: application/json
authorization: Bearer 3lEer2fNtgG0i1h8h5zAJ6cyjdPux_AfT9jUncEwJoo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPxdjuXNfdgAABCB
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "61148b43-ee8d-4381-9cf4-8d22887bec8f",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "a71a0221-af52-4e88-9e15-c0aa5d58a9fb",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-create></a>create
#### create ride renders ride when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rides
* __Request headers:__
```
accept: application/json
authorization: Bearer loGJCsuxAg1k2881YZ-Yw9T8azh-bpvbOozRzv2RwcY=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "start_location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP0geAnifQkAABCi
location: /api/rides/593f240f-cbcd-458b-a770-23b8b3380520
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "593f240f-cbcd-458b-a770-23b8b3380520",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### create ride renders ride when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rides/593f240f-cbcd-458b-a770-23b8b3380520
* __Request headers:__
```
accept: application/json
authorization: Bearer loGJCsuxAg1k2881YZ-Yw9T8azh-bpvbOozRzv2RwcY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP1XGzDifQkAAA4E
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "593f240f-cbcd-458b-a770-23b8b3380520",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-create></a>create
#### create ride renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rides
* __Request headers:__
```
accept: application/json
authorization: Bearer PLgAAGNi6gFUONMhcB2Ytx-lKuhIaAsWjN3z4ldahRw=
content-type: multipart/mixed; boundary=plug_conn_test
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlP3YLUcMpr4AABFB
```
* __Response body:__
```json
{
  "errors": {
    "start_location": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/e1a1612d-4ac7-450d-a4d6-e6ff61a4361a
* __Request headers:__
```
accept: application/json
authorization: Bearer qfIUbJ9exiWOPTst11MxNrBPz6uX8AZeOwS5FC1zgbA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQJK9o-VaXkAABBE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "e1a1612d-4ac7-450d-a4d6-e6ff61a4361a",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/ba5a3c61-e4d7-414f-921b-e14f4612ecdf
* __Request headers:__
```
accept: application/json
authorization: Bearer qfIUbJ9exiWOPTst11MxNrBPz6uX8AZeOwS5FC1zgbA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQJw_RGVaXkAABaj
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "ba5a3c61-e4d7-414f-921b-e14f4612ecdf",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/9d1698ad-64af-4776-b07c-30e436f0db8b
* __Request headers:__
```
accept: application/json
authorization: Bearer 4Y0r-IEWqngxHCj2SU-_iU4ZmOfEdB5z3P70bHK725c=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQipaQmGT3MAAB0j
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "9d1698ad-64af-4776-b07c-30e436f0db8b",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/b9be81e4-997d-4d26-a628-8a7775c0c9e4
* __Request headers:__
```
accept: application/json
authorization: Bearer nmwu_4nZ_O-NzfTNwanugMYMf8uvvrusiPnwhOR99Io=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQRNFBUZ-d0AABaB
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "b9be81e4-997d-4d26-a628-8a7775c0c9e4",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/a355d05a-2e51-4103-9a08-d363601a0bd8
* __Request headers:__
```
accept: application/json
authorization: Bearer BEIgRp3DOeO60S08NY5OHJgvC_mAmFG8m0Etyxq1o7A=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver_route": {
    "coordinates": [
      [
        20,
        60
      ],
      [
        56,
        24
      ],
      [
        52.0,
        81
      ]
    ],
    "type": "LineString"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQxU7q7jOnIAABtE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": {
      "coordinates": [
        [
          20,
          60
        ],
        [
          56,
          24
        ],
        [
          52.0,
          81
        ]
      ],
      "type": "LineString"
    },
    "end_time": null,
    "id": "a355d05a-2e51-4103-9a08-d363601a0bd8",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/fd55ef6f-7961-4618-8553-5b786e6110af
* __Request headers:__
```
accept: application/json
authorization: Bearer dnf3H5DeBgKK5SX-v8fm71h9UdzLSdGt2sW6D4j3ex4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer_route": {
    "coordinates": [
      [
        20,
        60
      ],
      [
        56,
        24
      ],
      [
        52.0,
        81
      ]
    ],
    "type": "LineString"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQr5dRgfi9oAABqE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": {
      "coordinates": [
        [
          20,
          60
        ],
        [
          56,
          24
        ],
        [
          52.0,
          81
        ]
      ],
      "type": "LineString"
    },
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "fd55ef6f-7961-4618-8553-5b786e6110af",
    "start_time": null
  }
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
  "email": "user-576460752303420060@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPjilvas1eMAAA6C
```
* __Response body:__
```json
{
  "data": {
    "token": "54S83TGM2dmvK8LuyxksOPklfGDf1NFkZjykzyXOe8M="
  }
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
  "email": "user-576460752303419902@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPhj-MaufrkAAA0E
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
authorization: Bearer 9yVXB_QNmpRjRP75UvmuyT7okReD6UrOE5wYSreJYV8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlPmsogjYtnsAAA8C
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
x-request-id: FykIlPlvBX1mBZMAAA3D
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

## TurboWeb.SettingsController
### <a id=turboweb-settingscontroller-show></a>show
#### GET /settings renders current admin

##### Request
* __Method:__ GET
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer sh7Gb2mYcm7X0bDewjBXXMPrIHo3OmU9YiUW_Obl9DU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQWtkCyPuKQAABIi
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303417021@example.com",
      "id": "0e37932f-58a4-4d44-b781-3e81a3082b9f",
      "name": "user-576460752303417053",
      "phone": "6500"
    }
  }
}
```

#### GET /settings renders current customer

##### Request
* __Method:__ GET
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer MXzX8wo10T86JJUNDIlEl-dZMik0AFgbaGMKXf1wQOo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQYwaAL8Pa0AABmj
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "id": "93279950-1151-4ee4-90a4-079dbc6104ca"
    },
    "user": {
      "email": "user-576460752303417183@example.com",
      "id": "8cc0d540-be7d-4d34-863d-c63457dc856d",
      "name": "user-576460752303417215",
      "phone": "6338"
    }
  }
}
```

#### GET /settings renders current driver

##### Request
* __Method:__ GET
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer AuZUhUtQXuf-XKh2dxU41CfUWs0fdpubm4vs7YrC_RM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQqOxnCcBqMAABnk
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "e27c7ab9-d0b8-4a68-8ea9-81d33961540d",
      "license": "licence-576460752303416924"
    },
    "user": {
      "email": "user-576460752303416988@example.com",
      "id": "f684bdd9-4d8c-489b-ac7f-48986b5b6ded",
      "name": "user-576460752303417020",
      "phone": "6533"
    }
  }
}
```

### <a id=turboweb-settingscontroller-update></a>update
#### PUT /settings (change password) updates the user password and resets tokens

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer imihj_Wi_OMN4hrF0S6Cv3Fo1tYafaxjJ7UGeLKYYOk=
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
x-request-id: FykIlQvDewekD4sAAB_j
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "67GMTUA8GIgDMsTpPK0150QQv4OdFADv0sXUHoQGuRo="
  }
}
```

#### PUT /settings (change password) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer pupj90t45uWE72JWE8GDlb5UA955cOfzjKeRY4WWObc=
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
x-request-id: FykIlQUa4jvMDW4AABHi
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
accept: application/json
authorization: Bearer _KsnUyKZPpqFKvZIhukoPjh_eV7szk2AD10jfbwplEA=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303418750@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQax91upjmsAABKi
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
accept: application/json
authorization: Bearer 7v0G8Cp4cQ_BTTXHI30PENsOmIT9qz-EhSadYx3oNMk=
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
x-request-id: FykIlQdo89r_MfcAABmh
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
accept: application/json
authorization: Bearer jERm_xlgzbMrXKz8ES7UwFrYXyi9l7KHhNB1MXqNUAA=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303418462"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQhJnaY2sW8AABPC
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
accept: application/json
authorization: Bearer DTEAG7Bj-m4IeU1PcEJwhRpFxcF5FNGAedmE-z3iZM4=
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
x-request-id: FykIlQolujf_kcgAABVC
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
* __Path:__ /api/confirm_email/WHJL1ccSfbiEQgkiUIPv8nDfJSwqnXNHW5XuE86hT_4
* __Request headers:__
```
accept: application/json
authorization: Bearer IX_u--M73k8NFb8SkqtO9CpEwLKd7ZqeWvMTOPYskm4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQkDX-Z5uE0AABgk
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
accept: application/json
authorization: Bearer RI1llFfPwB77b_fYFhVRuvVxC8vC4EPwPILsC8VMpSM=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQtAykzCiroAAB1B
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
authorization: Bearer -_RL2MouBsQmU4c2caIdpO0bRD2DfvO5dp0osx1aCCc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FykIlQ95Ao6qUCEAACAh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "fd02df97-d3fe-48ee-9f5b-eef5d647caed"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/6b3ef80e-3c4e-4850-9637-da01f1efbdda
* __Request headers:__
```
accept: application/json
authorization: Bearer q4qFjWAeNVknNU6kaP08VvKjStMJP6a92pSPm7Hq4Cg=
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
x-request-id: FykIlQ7vyPiq-1gAACFj
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "6b3ef80e-3c4e-4850-9637-da01f1efbdda"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/6b3ef80e-3c4e-4850-9637-da01f1efbdda
* __Request headers:__
```
accept: application/json
authorization: Bearer q4qFjWAeNVknNU6kaP08VvKjStMJP6a92pSPm7Hq4Cg=
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
x-request-id: FykIlQ8WWqKq-1gAABvE
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "6b3ef80e-3c4e-4850-9637-da01f1efbdda"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/67fe9c56-fb96-43b7-88cc-9e7007d4b3d4
* __Request headers:__
```
accept: application/json
authorization: Bearer G8Z9faXUR4G3UzarC5o9zEzI1Fl2BB4zDv2tQkAJdfM=
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
x-request-id: FykIlQ_Xzn4JlUgAAByE
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

