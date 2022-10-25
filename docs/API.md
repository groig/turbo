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
authorization: Bearer Oan9MH5YZMVy_jGsUmp0iDImqWBqIwT7SaFBXQ0C9ik=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy7KhpacukUAAB1i
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
authorization: Bearer ez6sVA8_EmqYmEJupdfIG4_O8BpgKNxXvW5HJNTwv_w=
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
x-request-id: FyFuozBcSljxjeUAAA_E
```
* __Response body:__
```json
{
  "data": {
    "id": "09f5f841-9bf3-4b3b-bdee-f621db2cc4a5",
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
* __Path:__ /api/addresses/09f5f841-9bf3-4b3b-bdee-f621db2cc4a5
* __Request headers:__
```
accept: application/json
authorization: Bearer ez6sVA8_EmqYmEJupdfIG4_O8BpgKNxXvW5HJNTwv_w=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuozCEWJXxjeUAAB-C
```
* __Response body:__
```json
{
  "data": {
    "id": "09f5f841-9bf3-4b3b-bdee-f621db2cc4a5",
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
* __Path:__ /api/addresses/ffe0c720-5fea-4720-856d-afea629b53a2
* __Request headers:__
```
accept: application/json
authorization: Bearer r87kO-pFpn4Xr7RfWeFJaGtQOaSEjP8o7t_dxpjr00I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyy8fiOQtfUAAA0k
```
* __Response body:__
```json
{
  "data": {
    "id": "ffe0c720-5fea-4720-856d-afea629b53a2",
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
    "name": "address-576460752303420444"
  }
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/ffe0c720-5fea-4720-856d-afea629b53a2
* __Request headers:__
```
accept: application/json
authorization: Bearer XH0DoVEhr_VUVOy_lkhZ-w7KxdnNLH6TAKZ4Y2QZ2lk=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy0HPeqQtfUAAA3E
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
authorization: Bearer cmWTWbib2hO37eSoJ0Wl63_Qnl_rFkcdPkdfUwzRILg=
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
x-request-id: FyFuoylaSQ5soy8AABeB
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
* __Path:__ /api/addresses/a0979640-06d2-416a-9462-69dd983a262c
* __Request headers:__
```
accept: application/json
authorization: Bearer AQ-XGIkaHCKnTluLcUa9R8FfB_xHFQ_ex7ZF-oIWjPo=
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
x-request-id: FyFuow4fCXtuoLcAAAgC
```
* __Response body:__
```json
{
  "data": {
    "id": "a0979640-06d2-416a-9462-69dd983a262c",
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
* __Path:__ /api/addresses/a0979640-06d2-416a-9462-69dd983a262c
* __Request headers:__
```
accept: application/json
authorization: Bearer AQ-XGIkaHCKnTluLcUa9R8FfB_xHFQ_ex7ZF-oIWjPo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyjmtSVuoLcAAApk
```
* __Response body:__
```json
{
  "data": {
    "id": "a0979640-06d2-416a-9462-69dd983a262c",
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
* __Path:__ /api/addresses/55894647-1c27-4ee0-9fbb-589f31562b77
* __Request headers:__
```
accept: application/json
authorization: Bearer efX6KOpO1jMMF8PzHUNyTM1OLYxfIQ3VO7PjwwPY9uE=
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
x-request-id: FyFuoy_pZ3VIpbAAABgD
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/0a0fffd7-8672-4b78-b188-c6e392acd75a
* __Request headers:__
```
accept: application/json
authorization: Bearer aU5duOjxUDvMfwSakalwkOWLlFjnhU4CqYZ6ouElK9A=
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
x-request-id: FyFuozFH1ABT6OsAACCC
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
* __Path:__ /api/addresses/d2e4b668-788d-40c4-ac52-9b36af173040
* __Request headers:__
```
accept: application/json
authorization: Bearer erc0hCflGg9yZpDbGTSk734mmAY58F971HGAPLy2gq4=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyr6TLBLOM8AABnh
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/d2e4b668-788d-40c4-ac52-9b36af173040
* __Request headers:__
```
accept: application/json
authorization: Bearer erc0hCflGg9yZpDbGTSk734mmAY58F971HGAPLy2gq4=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoys267FLOM8AABGD
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/96cbea72-11e5-4a99-b7d9-585ce49ff78d
* __Request headers:__
```
accept: application/json
authorization: Bearer YzDdN3qviYBy9F3lliribdJLhhndI52f7-vULrnWo0E=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy5jhrEH_z8AABZD
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
authorization: Bearer -dnTQJHlT31D37YTiA5DKBt5ED3nmhll9_IJvGB3RhE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyMgJAKtuWAAAAlj
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "072d1d43-4ac9-4462-91eb-32b9dcbfae28",
      "license_plate": "license--576460752303419103",
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
authorization: Bearer L1VDNLPhn-4t3cIdE8UYwcYOvILby8wO0vVJztIZ3Gk=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303422140",
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
x-request-id: FyFuow4fr9l80lcAAAhC
location: /api/cars/727e0964-ac7d-496b-9002-5922f1ad1a27
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "727e0964-ac7d-496b-9002-5922f1ad1a27",
    "license_plate": "license--576460752303422140",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/727e0964-ac7d-496b-9002-5922f1ad1a27
* __Request headers:__
```
accept: application/json
authorization: Bearer L1VDNLPhn-4t3cIdE8UYwcYOvILby8wO0vVJztIZ3Gk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyIBOvh80lcAABBi
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "727e0964-ac7d-496b-9002-5922f1ad1a27",
    "license_plate": "license--576460752303422140",
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
authorization: Bearer VS0-85j56WllahPUsrrhVPpWS9vr_85ahM5Nv86OWdM=
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
x-request-id: FyFuoyvgiSQKi44AABkC
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
* __Path:__ /api/cars/62f01117-f0e6-4f99-92df-0caf21c23d1d
* __Request headers:__
```
accept: application/json
authorization: Bearer 1-yyQBrVM4ue4F1POgts9gBs786SFf6MaNR6EB7bppg=
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
x-request-id: FyFuoyz7kyxM520AAA2k
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "62f01117-f0e6-4f99-92df-0caf21c23d1d",
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
* __Path:__ /api/cars/e331e1ff-81a7-4fd4-8211-7a16af6e5c09
* __Request headers:__
```
accept: application/json
authorization: Bearer s7VY59wViUbJdgeAypnD2Ed1rphDdPnGWJv58il-jh0=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoygzzfD4hOUAABbB
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
  "email": "user-576460752303421502@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuow4fkPTOkysAAAUD
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
  "email": "user-576460752303419486@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyDxPQ3f-OsAAAgD
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
x-request-id: FyFuoyFHbCetkhAAAAgj
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
* __Path:__ /api/confirm/8-haF7i7xAM2jQzk_Tq2ev9naN6Mw2pZlqutfFwpgSQ
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
x-request-id: FyFuox-UGRz2ksQAAA3i
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
* __Path:__ /api/confirm/8-haF7i7xAM2jQzk_Tq2ev9naN6Mw2pZlqutfFwpgSQ
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
x-request-id: FyFuox_y6gn2ksQAAAcj
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
x-request-id: FyFuoyBWzqzYtFcAAA7i
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
authorization: Bearer bwOqN1m82Fy8nFYkq3dwBnNzj7fZl54i8s1t49JwuT8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyPnI2tDkFoAABJB
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
* __Path:__ /api/customers/b96c0e85-f709-45ff-8edd-ce4d6f2a3aab
* __Request headers:__
```
accept: application/json
authorization: Bearer mFbe58VleoWqOQYWYgEor3J_I5lck_i_3C0nhTz7WdU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuow4fgYxM2RIAAAgi
```
* __Response body:__
```json
{
  "data": {
    "id": "b96c0e85-f709-45ff-8edd-ce4d6f2a3aab"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/663a55a8-6f5a-4888-9524-3e21a393498e
* __Request headers:__
```
accept: application/json
authorization: Bearer mFbe58VleoWqOQYWYgEor3J_I5lck_i_3C0nhTz7WdU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyJddfhM2RIAAAhD
```
* __Response body:__
```json
{
  "data": {
    "id": "663a55a8-6f5a-4888-9524-3e21a393498e"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d43564df-415c-4cb5-8664-a7f911e14ff0
* __Request headers:__
```
accept: application/json
authorization: Bearer Wxca7bRvlww4nq4nPEpREMeHqH5bs_GZnfeF9LfH4Ec=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyNRKbXBEnoAAAmD
```
* __Response body:__
```json
{
  "data": {
    "id": "d43564df-415c-4cb5-8664-a7f911e14ff0"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/35283260-33aa-4cb9-bbe9-545787d6976c
* __Request headers:__
```
accept: application/json
authorization: Bearer Wxca7bRvlww4nq4nPEpREMeHqH5bs_GZnfeF9LfH4Ec=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyN7YfXBEnoAABHB
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
authorization: Bearer OrXIsdXNqZwLHmJfyhHu8kfsaVLbYhFrmLWkcDKm7q0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyr2C5LDlQcAABFD
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303417566@example.com",
      "id": "cd0c7c9a-ca1f-455c-8bae-e493a2a4b545",
      "name": "user-576460752303417598",
      "phone": "5955"
    },
    {
      "credit": 0,
      "email": "user-576460752303417055@example.com",
      "id": "2b193c9e-9573-46f3-98ef-e3f7be4608dd",
      "name": "user-576460752303417087",
      "phone": "6466"
    },
    {
      "credit": 0,
      "email": "user-576460752303416927@example.com",
      "id": "ff4af70a-ee80-4a4f-ad1b-196f353c7406",
      "name": "user-576460752303416959",
      "phone": "6594"
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
authorization: Bearer OyDNfC6LDvHDLsBaCs6yg96HQnY50bn8wx6gRaSgdCU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyNPop-cisgAABGh
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "18e8b390-0105-4055-8d45-66e658740226",
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
authorization: Bearer 9AE5y3eTtvtTtnB25O8BYWoMnfOQNxMxi9GWNjJ41c8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoxTTXNEpkEEAAApC
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303419999@example.com",
      "id": "b34a4c05-5a01-4d90-ad4f-b0507098c97f",
      "name": "user-576460752303420031",
      "phone": "3522"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/4097db7e-0595-4e21-8536-9a9bc7f76000
* __Request headers:__
```
accept: application/json
authorization: Bearer cjj8gZpWUbFEiH6Y8abNOBBz5xjN8M9xlr15YaLaq8E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy160WfaqC4AAA4k
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303416830@example.com",
    "id": "4097db7e-0595-4e21-8536-9a9bc7f76000",
    "name": "user-576460752303416862",
    "phone": "6691"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/543a90e0-d967-426f-b9a1-0f77481ed486
* __Request headers:__
```
accept: application/json
authorization: Bearer cjj8gZpWUbFEiH6Y8abNOBBz5xjN8M9xlr15YaLaq8E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy3brS7aqC4AAA6E
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303416159@example.com",
    "id": "543a90e0-d967-426f-b9a1-0f77481ed486",
    "name": "user-576460752303416191",
    "phone": "7362"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/789b4613-0494-4d57-aeb5-68a4f0c5162d
* __Request headers:__
```
accept: application/json
authorization: Bearer biCJZY6YNoYPgsECCLDmZVHn0eTR1GUVox0HNyCdpH0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy7jUMPAkk0AABZj
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303415967@example.com",
    "id": "789b4613-0494-4d57-aeb5-68a4f0c5162d",
    "name": "user-576460752303415999",
    "phone": "7554"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/e585e36e-77c9-49aa-a92a-82198231a1ab
* __Request headers:__
```
accept: application/json
authorization: Bearer biCJZY6YNoYPgsECCLDmZVHn0eTR1GUVox0HNyCdpH0=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy8nZKPAkk0AAB3i
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
authorization: Bearer FdiSjovb4F2W6fVyPfS4AP8DbEthtr-YRitHAIr4jyc=
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
x-request-id: FyFuoylaSRwJ5-UAABCj
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
authorization: Bearer m9PaKFfU2AbzSA3SjNnNacFz76gCtHGzkIIqrl-2-CA=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303420412"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoywoYS9jyaYAAAwk
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
    "email": "user-576460752303420733@example.com",
    "name": "user-576460752303420701",
    "password": "hello world!",
    "phone": "2852"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyUvenTvWiUAAAtD
```
* __Response body:__
```json
{
  "data": {
    "id": "8ce04ef6-94cc-4e50-b0fd-be364742de94",
    "token": "qFThpHqSfIv2zg0cLCaQoodSjNQLL_bkKbWbu6zADPo="
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
x-request-id: FyFuoxTJxvCcx38AAAWE
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
    "email": "user-576460752303420317@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303420285",
    "password": "hello world!",
    "phone": "3268"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyZ2vADYtnsAAAzj
```
* __Response body:__
```json
{
  "data": {
    "id": "fff40c58-4c70-48b6-b855-287a18479f3f",
    "token": "OPSVEZw9iNMLIadTiHl2T6QlhOnTZpv4SopWgPcjtHw="
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
    "email": "user-576460752303419933@example.com",
    "name": "user-576460752303419901",
    "password": "hello world!",
    "phone": "3652"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyd1lxJR3b4AAA5j
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
    "email": "user-576460752303421308@example.com",
    "name": "user-576460752303421276",
    "password": "hello world!",
    "phone": "2277"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyYcQnfmtRMAAAkE
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
x-request-id: FyFuoyZgdliwCZsAAAvj
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
  "email": "user-576460752303420127@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoxMCCqD_MToAAAVk
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
x-request-id: FyFuoyYqVWQhu58AABTi
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
* __Path:__ /api/reset_password/2wAj1q23AIVNhsnc_uNla16MOAmCi95PNG6iZRyhS7I
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
x-request-id: FyFuoya0dkoSA0MAAAmE
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
* __Path:__ /api/reset_password/9uKHeocFcVcqvEi89WVv64sk1y1pH7MgSZ0TVJBOzpg
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
x-request-id: FyFuox-_PpuY-1oAAA8B
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
x-request-id: FyFuoyWyVlXCJJ0AAAvD
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
authorization: Bearer 7TP8ANOGNCsVyif2MBcAXsQaOpqqCEm_cOJVuKIrDbw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuozBcSkgEuvIAAB9h
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "1230da33-6363-4105-944b-d066c1075043",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "21502921-ea2f-4f3b-892c-4caf708483e0",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "955730da-d126-48d7-9021-4912b85031ee",
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
authorization: Bearer L5OZqkyazFONQc1zmCUeqhY2HTBEHfq2sD4jSRVQSBI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy1FFR3xjoIAABpi
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "ec49236d-f5f5-4457-930f-5a9ca5617cc2",
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
authorization: Bearer VKzMWaVuQRfPpjemGqZsqNMF-vUkB3gMcdPzxC_riAM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyWE9QedQBYAABQC
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "150fdd63-2366-4b45-8d5c-8be4164a9fd1",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "c3a0456a-5c03-41fa-b0e6-53640a411c97",
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
authorization: Bearer S8MF4quA4JIwRtCrFvxWNL3FL4dr6l4o5TDxWeUdSPY=
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
x-request-id: FyFuoyGd_lRXM8wAABBC
location: /api/rides/a54b1974-ab87-497a-84fe-b374aeef882e
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "a54b1974-ab87-497a-84fe-b374aeef882e",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### create ride renders ride when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rides/a54b1974-ab87-497a-84fe-b374aeef882e
* __Request headers:__
```
accept: application/json
authorization: Bearer S8MF4quA4JIwRtCrFvxWNL3FL4dr6l4o5TDxWeUdSPY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyPOuWpXM8wAABHC
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "a54b1974-ab87-497a-84fe-b374aeef882e",
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
authorization: Bearer TFK4dcZPLIh5mpuXZ-N39J2xU0eEXTWxMDo3i6LSp9k=
content-type: multipart/mixed; boundary=plug_conn_test
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy9B5c7OLnwAABbj
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
* __Path:__ /api/rides/2a880fff-e0c7-4e32-b55d-a662166ceb87
* __Request headers:__
```
accept: application/json
authorization: Bearer B1SE5cF1vvOJJGQMaGuCvjjVv4lzR2hPg35V7jy5S9g=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuozE-hkFKm-UAAB-B
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "2a880fff-e0c7-4e32-b55d-a662166ceb87",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/c6a31cd8-4240-4bf5-ba2f-6f5d1f65e8a2
* __Request headers:__
```
accept: application/json
authorization: Bearer B1SE5cF1vvOJJGQMaGuCvjjVv4lzR2hPg35V7jy5S9g=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuozFgb7VKm-UAABEE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "c6a31cd8-4240-4bf5-ba2f-6f5d1f65e8a2",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/427c8d66-3b1b-41fa-851a-f2869cce1d8b
* __Request headers:__
```
accept: application/json
authorization: Bearer bivQY3OL1p4EOnrnTtz35s1lk-BzFsC_ERmwG2JNq90=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoybXVg4TIe4AAA1j
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "427c8d66-3b1b-41fa-851a-f2869cce1d8b",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/f77128ab-e2d8-425f-bbc7-5215c7228ba2
* __Request headers:__
```
accept: application/json
authorization: Bearer L1-j-BhuY9VOIWufGGnOlcSJG6tql9kX7mZbyl7QIX8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy5ywfPcP2sAAA9k
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "f77128ab-e2d8-425f-bbc7-5215c7228ba2",
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
  "email": "user-576460752303421436@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyTiI4bUwK4AAApD
```
* __Response body:__
```json
{
  "data": {
    "token": "VIqpeRBXPNzZiTYPa8Bg-do2mZ6-2eNpgF0ZhQAFf2I="
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
  "email": "user-576460752303420541@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyV5tQLxk3AAABSB
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
authorization: Bearer 5MKEENBeTi9jHtCS67tDn1qDLn24ohlwhfTi522JsNU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyRKsQQxC48AAAdE
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
x-request-id: FyFuoySv3eoIx18AAAfE
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
authorization: Bearer 4IvfKmWswo024huQWX8mKFFR4LPr7PJ2KQKFXfaDhzE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyjF5Xq3lkoAAA9j
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303419613@example.com",
      "id": "891f2a5e-b114-4eb8-a9d4-13d45650df33",
      "name": "user-576460752303419645",
      "phone": "3908"
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
authorization: Bearer i3UL7muIXJ-dONfy951vael74uMuYbcMAVGUx0UaoCs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyp2E7BBbXsAABlh
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "id": "bb88e79f-7801-4250-b9ee-d229866074d6"
    },
    "user": {
      "email": "user-576460752303417406@example.com",
      "id": "e78c2a6f-30d5-4f38-87ea-38218806a5b7",
      "name": "user-576460752303417438",
      "phone": "6115"
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
authorization: Bearer xIwHPIdVEX6kUvujqP84qp8kgfbxVx9JEB5kn4ao-10=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyhtyHWIlyAAABbh
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "fe141f43-f474-4fe1-ab0e-713f004ede4a",
      "license": "licence-576460752303420988"
    },
    "user": {
      "email": "user-576460752303417790@example.com",
      "id": "83eb1895-98af-42c8-a3e7-04c5a2a1c2e4",
      "name": "user-576460752303417822",
      "phone": "5731"
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
authorization: Bearer lsEw6Q7-xXu6J_7jnJWVB-vDytWhBB1XlXS4UgUI7rg=
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
x-request-id: FyFuoyrrxkFPG-gAABhi
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "nSdQ-WGROSIuoB2b1ZRzGfGl-TUq9z9xqTL1iJUm0po="
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
authorization: Bearer nITJU2jQmO8ugFKpw3OwaA-G2p_1XW5oCe4cGkVipXA=
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
x-request-id: FyFuoyzoLdsZ55gAABpC
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
authorization: Bearer gUIxNv99hu4cN3Kqkh4tO4Ifh4212dF5jvkUsCpfJY4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303417599@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoykleAhvhE0AABch
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
authorization: Bearer yO0mlU2hqT3P0M1koI0vjpRjTEJ67usXoaEkbFheuwM=
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
x-request-id: FyFuoyaksy5mBZMAABVi
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
authorization: Bearer djSt3pnkiFJQZ9z60jgUiL0J65MXr4BBCkOWhYSYOKw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303418206"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyYY_SqPvSAAABTC
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
authorization: Bearer s-EAYeaR0WxkheC46XGyTpZ63pWoz8qcb9T9G2VOmJE=
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
x-request-id: FyFuoyxy3_WLb5gAABxh
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
* __Path:__ /api/confirm_email/9ZcEzXS-E-nzKKA8VsrDWBzE_rvzBZ2bh_PQ8quEmZY
* __Request headers:__
```
accept: application/json
authorization: Bearer l0R0-4Sek1iHRH76ChzLTbx_2UOfNk3IsmWM1fPNnnk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoy2tXA_vpLYAAA5k
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
authorization: Bearer MRrCeDHDSAzQVUxbz97vH4rU7DmXbG4d13uaE-dFOVA=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuoyeaP4sKwzAAABXh
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
authorization: Bearer hbyGnuOAipLg31vyme5GkMFHSAt3YZ4IBuAI0ANEiZw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FyFuozdpT3aDtRoAACCh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "80827c58-40fe-49bd-9126-70c6f1d6bc5e"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/84e5c415-fc97-4a9d-b2ca-8a39d8fe1933
* __Request headers:__
```
accept: application/json
authorization: Bearer 3GgJ8DwCo13Wtd5ecrC0HCU80W-xneWdgx4ybMy_b7U=
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
x-request-id: FyFuozfaxYepvJEAACFh
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "84e5c415-fc97-4a9d-b2ca-8a39d8fe1933"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/84e5c415-fc97-4a9d-b2ca-8a39d8fe1933
* __Request headers:__
```
accept: application/json
authorization: Bearer 3GgJ8DwCo13Wtd5ecrC0HCU80W-xneWdgx4ybMy_b7U=
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
x-request-id: FyFuozgJrhWpvJEAACZi
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "84e5c415-fc97-4a9d-b2ca-8a39d8fe1933"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/caa79736-9d63-4125-86a0-8c21553d60f4
* __Request headers:__
```
accept: application/json
authorization: Bearer A-Hy1pk10EIDlAkk5vwDeo9OY14BdINAyjLOabXa7G0=
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
x-request-id: FyFuozcavFUSa1kAACXi
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

