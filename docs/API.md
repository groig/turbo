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
authorization: Bearer 1dslWBwePsYCGW6OYv5vARWJyGhwmeNoj4W4yG8BeDg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxboa8-fztkAABDB
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
authorization: Bearer ozLjtE5QARHEBgR4oztGuvZFl5OU5be1Z77CeyJVwCg=
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
x-request-id: Fwh_mxrHFKLEC1MAABRB
```
* __Response body:__
```json
{
  "data": {
    "id": "4cfb0618-a0f4-4e8f-bf3e-e5f855602ec5",
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
* __Path:__ /api/addresses/4cfb0618-a0f4-4e8f-bf3e-e5f855602ec5
* __Request headers:__
```
accept: application/json
authorization: Bearer ozLjtE5QARHEBgR4oztGuvZFl5OU5be1Z77CeyJVwCg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxrh7BPEC1MAABRh
```
* __Response body:__
```json
{
  "data": {
    "id": "4cfb0618-a0f4-4e8f-bf3e-e5f855602ec5",
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
* __Path:__ /api/addresses/3e356cba-62a4-4c5f-9406-8d22ad5877a8
* __Request headers:__
```
accept: application/json
authorization: Bearer ASj1v5oGm34V23XuaVG3FRzAkEoVAhLMQX9gr2EkZqE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxokGGO-nAwAABLD
```
* __Response body:__
```json
{
  "data": {
    "id": "3e356cba-62a4-4c5f-9406-8d22ad5877a8",
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
    "name": "address-576460752303418014"
  }
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/3e356cba-62a4-4c5f-9406-8d22ad5877a8
* __Request headers:__
```
accept: application/json
authorization: Bearer KrxIcBIM6IuT4JNIYdCbMJUmdbI6WJH5QLQ72KUmAJA=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxpRBnS-nAwAABLj
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
authorization: Bearer uJDN71K5A1SN3QP3KJiLvJt31NpE7-VBAMozmErIgT0=
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
x-request-id: Fwh_mxi0UyODREMAABCE
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
* __Path:__ /api/addresses/907f9a78-dcf9-468b-8aab-72254827e865
* __Request headers:__
```
accept: application/json
authorization: Bearer UMjPTxkkv-7JxR83AUPs0UInC7koFFRZEsbk1Cer_Ts=
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
x-request-id: Fwh_mwvlVJPYtFcAAAlE
```
* __Response body:__
```json
{
  "data": {
    "id": "907f9a78-dcf9-468b-8aab-72254827e865",
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
* __Path:__ /api/addresses/907f9a78-dcf9-468b-8aab-72254827e865
* __Request headers:__
```
accept: application/json
authorization: Bearer UMjPTxkkv-7JxR83AUPs0UInC7koFFRZEsbk1Cer_Ts=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxTijS3YtFcAAA3E
```
* __Response body:__
```json
{
  "data": {
    "id": "907f9a78-dcf9-468b-8aab-72254827e865",
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
* __Path:__ /api/addresses/32f98b9a-70c9-45b9-ad31-ca4d3b29d56a
* __Request headers:__
```
accept: application/json
authorization: Bearer V_vxsSx09VfcXZ7aqWhzkeprevZcej80Yx8Isl8fkGk=
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
x-request-id: Fwh_mxZd6XfhErkAABKC
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/8c68a8df-e500-414d-bb02-4e7a9b5f737a
* __Request headers:__
```
accept: application/json
authorization: Bearer UL87NFedgTcOoEnvi1RoIs4CpgJhgDSPUN3sbRF9hks=
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
x-request-id: Fwh_mxt--4ZZ1gcAABUh
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
* __Path:__ /api/addresses/627e96ed-ee56-4269-ba85-a0282c695b77
* __Request headers:__
```
accept: application/json
authorization: Bearer P7wS71XKx1FVfTnx0qV8rReZn9E6PVG0VtTaWV3tZ8g=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxf99233x8QAABAk
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/627e96ed-ee56-4269-ba85-a0282c695b77
* __Request headers:__
```
accept: application/json
authorization: Bearer P7wS71XKx1FVfTnx0qV8rReZn9E6PVG0VtTaWV3tZ8g=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxg8P_f3x8QAABGD
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/07e244da-70e6-4fe4-aa26-e09ef2021e6f
* __Request headers:__
```
accept: application/json
authorization: Bearer qhPTz_YSHnnFnHJ9TKC8uPPSlxkLc1A5C2DdpQoal80=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mvzJKzdqibsAAAoC
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
authorization: Bearer OXFBfbwfxNIEC8lzNr5oeKvyUgIfOCZWwDhokiuvyYg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxbM1c9XJmMAAA_j
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "7edbfbac-60af-4aa4-aa4c-7a011a36b256",
      "license_plate": "license--576460752303418718",
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
authorization: Bearer NiK-vO3yPayAG2hPUpc_g4HUhRynR_YJYKaiyTSWuMo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303420381",
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
x-request-id: Fwh_mxNd7C5VubUAAAxD
location: /api/cars/989269a0-90d3-462a-979d-e14687d6fcb1
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "989269a0-90d3-462a-979d-e14687d6fcb1",
    "license_plate": "license--576460752303420381",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/989269a0-90d3-462a-979d-e14687d6fcb1
* __Request headers:__
```
accept: application/json
authorization: Bearer NiK-vO3yPayAG2hPUpc_g4HUhRynR_YJYKaiyTSWuMo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxOU0rZVubUAABFC
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "989269a0-90d3-462a-979d-e14687d6fcb1",
    "license_plate": "license--576460752303420381",
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
authorization: Bearer FIEyWaMhJFAvORLONfj2n9NZdMOLdrKV6gNd3lu1OhM=
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
x-request-id: Fwh_mxRuVLgPvUkAAAzD
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
* __Path:__ /api/cars/ade89209-4e96-4ed1-abc7-ede9aa1870bb
* __Request headers:__
```
accept: application/json
authorization: Bearer qH9lK3aBIUhFXQGdsPV85mG2uGErhFtTLSBdEJsm6UY=
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
x-request-id: Fwh_mxio4Q2WUsgAABKh
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "ade89209-4e96-4ed1-abc7-ede9aa1870bb",
    "license_plate": "some updated license_plate",
    "make": "some updated make",
    "model": "some updated model"
  }
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
  "email": "user-576460752303419934@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw3uBFoIx18AAA5C
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
  "email": "user-576460752303421053@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw5rOY1zA-cAAAnh
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
x-request-id: Fwh_mw84YOJWJhIAAApD
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
* __Path:__ /api/confirm/KdmBPVHTktf29HZwwo1dHZJ8IyAruqOxEMShzrmgL1M
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
x-request-id: Fwh_mw6ztfmPvSAAAAoD
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
* __Path:__ /api/confirm/KdmBPVHTktf29HZwwo1dHZJ8IyAruqOxEMShzrmgL1M
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
x-request-id: Fwh_mw7s2bSPvSAAAAoj
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
x-request-id: Fwh_mvzJLkJGEZEAAAXh
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
authorization: Bearer vhcsdKCmIomyjqMF-5U76UyktJnI7QovNq_Gu4YfUcw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mwzQGZXr2psAAAgD
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
* __Path:__ /api/customers/7ee91fed-4d94-43cd-aa2b-476e939ce8cd
* __Request headers:__
```
accept: application/json
authorization: Bearer FU8tzfQnmA9JCGblgAoI5eSJJngHYeDVLmPxM4Ej_2I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mwxEEDzLZWMAAAmk
```
* __Response body:__
```json
{
  "data": {
    "id": "7ee91fed-4d94-43cd-aa2b-476e939ce8cd"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/edeb50ba-f5df-4b0c-ad51-6723969a57ca
* __Request headers:__
```
accept: application/json
authorization: Bearer FU8tzfQnmA9JCGblgAoI5eSJJngHYeDVLmPxM4Ej_2I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mwxj5wzLZWMAAAoE
```
* __Response body:__
```json
{
  "data": {
    "id": "edeb50ba-f5df-4b0c-ad51-6723969a57ca"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d4af3bcf-b4cd-45e4-af4d-51d74196fb3b
* __Request headers:__
```
accept: application/json
authorization: Bearer 6jsCN23fXDndYluCOWh6t1lTERcEkQDGdYn099Kp7U4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mvzJ4qDVutEAAAYB
```
* __Response body:__
```json
{
  "data": {
    "id": "d4af3bcf-b4cd-45e4-af4d-51d74196fb3b"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/88365fd0-95c5-40d8-af43-394b70f3985e
* __Request headers:__
```
accept: application/json
authorization: Bearer 6jsCN23fXDndYluCOWh6t1lTERcEkQDGdYn099Kp7U4=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mwsy_T3VutEAAAjk
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
authorization: Bearer mxOGK2RzEy8K40oaorUMhqIr91kLvUe9kvws6WsWBwM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxa9jvjzcsMAAA8E
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "4ebcc95d-b4a2-4766-aeda-41cbe7b06198"
    },
    {
      "id": "ced955c3-f8c0-408c-a109-f884714961f1"
    },
    {
      "id": "40ef792c-212b-4703-a92d-6a263ea81707"
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
authorization: Bearer MfcKPM8UAPGMnSKQQ6mDb6SOG6Hht91-4_QIYWWtHpA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mwyKiNstlNkAAAzi
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "c7c04366-ae41-4c04-b92f-b2c8c5616e0d"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/fe41381c-87e2-463b-b46c-23fb78ed0f58
* __Request headers:__
```
accept: application/json
authorization: Bearer Ej1c-Vi2z1ySSMU-IFMhJqAl6UwA8eGRMqJv-MLSMGM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw1l933kE6YAAAkB
```
* __Response body:__
```json
{
  "data": {
    "id": "fe41381c-87e2-463b-b46c-23fb78ed0f58"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/bcb178bf-1c19-4aba-8940-90bb7a04eef7
* __Request headers:__
```
accept: application/json
authorization: Bearer Ej1c-Vi2z1ySSMU-IFMhJqAl6UwA8eGRMqJv-MLSMGM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw3AoMnkE6YAAAjj
```
* __Response body:__
```json
{
  "data": {
    "id": "bcb178bf-1c19-4aba-8940-90bb7a04eef7"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/7265ab92-ec20-4d41-bc6c-c83f5f4351b0
* __Request headers:__
```
accept: application/json
authorization: Bearer j77C_KoRH9VAN5cXf298_x2-ziZtzuC2C7CleZ7pHdY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxft5N9N_ZQAABPi
```
* __Response body:__
```json
{
  "data": {
    "id": "7265ab92-ec20-4d41-bc6c-c83f5f4351b0"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/5340ca09-0ec8-4e12-b109-b5e933901fbd
* __Request headers:__
```
accept: application/json
authorization: Bearer j77C_KoRH9VAN5cXf298_x2-ziZtzuC2C7CleZ7pHdY=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxgnR2lN_ZQAABHB
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
authorization: Bearer YQwlwqFvE3-6LXER9e2lf8orA8CKV3rE-SbKKSoUWSU=
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
x-request-id: Fwh_mw5rOYTvWiUAAAmj
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
authorization: Bearer xknNAWfx8Y3FbC_cs7n2lp1gE3AoMxbj24Tz8Uy1B3c=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303421022"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mv0nXyyQB74AAASj
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
    "email": "user-576460752303420671@example.com",
    "name": "user-576460752303420639",
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
x-request-id: Fwh_mw-QQMa-GqEAAAth
```
* __Response body:__
```json
{
  "data": {
    "id": "bdeb1b92-78e7-4162-aa69-2a4f3e653539",
    "token": "oGLYiyPB07fzaHR3sVl9cWtyECt8PL8TVnACrBK8DKY="
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
x-request-id: Fwh_mw6hdHETIe4AAA7C
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
    "email": "user-576460752303419678@example.com",
    "license": "driver-license-abc",
    "name": "user-576460752303419646",
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
x-request-id: Fwh_mw60b862PpAAAA9C
```
* __Response body:__
```json
{
  "data": {
    "id": "1c605231-06cf-42e4-9f97-ecc806781324",
    "token": "wV7yYUrOifySBLixz6J6oCdQoBtxr3eDYIzAWxS8MYM="
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
    "email": "user-576460752303419486@example.com",
    "name": "user-576460752303419454",
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
x-request-id: Fwh_mxAOhF7ifQkAABAC
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
    "email": "user-576460752303420764@example.com",
    "name": "user-576460752303420732",
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
x-request-id: Fwh_mw9dAqfYtnsAAAsE
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
x-request-id: Fwh_mv0kAl6gNTUAAAoi
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
  "email": "user-576460752303421277@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw2EWHhFB2wAAAjD
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
x-request-id: Fwh_mw3zWOUWMdkAAAlh
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
* __Path:__ /api/reset_password/vYVFe7fBQV0R_k93fw3PqogrhPIBdZpfLAgPg0ikHpo
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
x-request-id: Fwh_mxDYS-S8WKUAABCC
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
* __Path:__ /api/reset_password/st-K1ohOqKtR7kA7y_ovOeMxO2vPDqNNmHOYF4O2lOo
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
x-request-id: Fwh_mw5M_MBmjaoAAAnB
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
x-request-id: Fwh_mwEPdge5b_QAAAZB
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
authorization: Bearer o2dHmXRLpDYdThO_aB5ONnc6ujiBFobDj-bFYT-Isu4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxsUCarOobMAABZC
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "def7dd57-cd9a-493a-a212-e75865bed8d4",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "2c073761-05f5-44e2-b7b9-9ff18ad66c5a",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "0c74f3da-6504-4abe-a2ed-bd4a762b34cb",
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
authorization: Bearer 2MXPg9vAWxo-PLob7kJ4ZzqrbLnLuTeIBH7mOTilHqk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxmRW-HvEIoAABMB
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "cd4429fa-b838-43aa-a92a-10f6b5c4afb0",
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
authorization: Bearer OxWawCQdV57bmWYBRq--jOMX2ioo33u-k2GUlb6_WZM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxgnSEhpVNcAABFj
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "5cd70ec4-81de-4190-8946-e2e7c1ede0f0",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "03f0079a-2714-4943-8fe9-0f4ba12889ee",
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
authorization: Bearer T4aHvhd9VdKPjXup59AxdAz2nfv5ulEiLS35sx3YMoc=
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
x-request-id: Fwh_mxOS_JbRHl0AAA3h
location: /api/rides/061a2599-4a3f-4e50-ba55-ced54987c928
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "061a2599-4a3f-4e50-ba55-ced54987c928",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### create ride renders ride when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rides/061a2599-4a3f-4e50-ba55-ced54987c928
* __Request headers:__
```
accept: application/json
authorization: Bearer T4aHvhd9VdKPjXup59AxdAz2nfv5ulEiLS35sx3YMoc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxPjUIHRHl0AAAxj
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "061a2599-4a3f-4e50-ba55-ced54987c928",
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
authorization: Bearer qMZD9EiwAhm8b1xWjQ-KINu-JvuGURVR3MQq7Dr6omI=
content-type: multipart/mixed; boundary=plug_conn_test
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxR-GltjyaYAAA0D
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
* __Path:__ /api/rides/f266069c-de51-4478-b753-1d55273c72dc
* __Request headers:__
```
accept: application/json
authorization: Bearer MxY6TEejDHH0FKdQSOndP1Gx4KBbBaRLQkA_nfc6CZc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxu4_eeipDcAABci
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "f266069c-de51-4478-b753-1d55273c72dc",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/90a3b637-714d-4554-ab34-2f40c2889fc3
* __Request headers:__
```
accept: application/json
authorization: Bearer MxY6TEejDHH0FKdQSOndP1Gx4KBbBaRLQkA_nfc6CZc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxvUmayipDcAABdC
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "90a3b637-714d-4554-ab34-2f40c2889fc3",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/758bc894-7079-432d-83df-b268a3c58069
* __Request headers:__
```
accept: application/json
authorization: Bearer 2oKadyuDlMwEb-ttOItJWZiXt3yRKJpUqTYuJ0udBls=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxYcXz15o30AAA7D
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "758bc894-7079-432d-83df-b268a3c58069",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/6aec05c9-9a60-4402-9b93-5061d644e297
* __Request headers:__
```
accept: application/json
authorization: Bearer NkncuiUY7njXR10joaHkkS3xHWrr9mAt0QsSdBQW6qg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxFfVBEMpr4AAAuD
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "6aec05c9-9a60-4402-9b93-5061d644e297",
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
  "email": "user-576460752303420479@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw_Z4QqKnogAAAqj
```
* __Response body:__
```json
{
  "data": {
    "token": "vDN4vayYSuNFg3Y1HJR59PxyuFx25VsDZ91JnxvVBzM="
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
  "email": "user-576460752303420637@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxEg4HJftUkAAAuE
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
authorization: Bearer R5trbx3Y3hZ-YF54Jin6f0Zw3bE9nu6kv2A7XxUgCns=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxBnfBbNmNkAAAxh
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
x-request-id: Fwh_mw-oEaxXT6sAAAuB
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
authorization: Bearer lJkKmAuBqX6zNtTKMLWb2rDNW9_8DgOwUFnjOPw0FVI=
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
x-request-id: Fwh_mxCwcBiIlyAAAAzB
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "Gx5KJm-HGuSHSoqAW4YSvYroja3efsHGofzjZqjTJXo="
  }
}
```

#### PUT /settings (change password) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer XCv5BMkZ_U5-9XpsuVNzofAhFwF-DXqAD_cQiSUIgBI=
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
x-request-id: Fwh_mxNFLfWPfXoAAAwD
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
authorization: Bearer fNIPpa-IcjnM0qsXXhR9Qg4w4f_ra0_qKzHbzHofGts=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303420284@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxKK4rxsoy8AAAyk
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
authorization: Bearer Syxx_w1q_SxWJ2NNbMHXobNX7wnc6w_kfzrkfELiRUA=
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
x-request-id: Fwh_mxIjdoOU5VQAAAzh
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
authorization: Bearer 4vwi0xTkCF-94geVlSfceMJ1mwDNrdZO7gQAPzoXx98=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303419550"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mw-4sxnsgzYAAA-C
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
authorization: Bearer 2gp320JHCYRDVe_349vDlnWkeCRZ1lsI0YhP-vk1PFw=
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
x-request-id: Fwh_mxBW89iLpVYAAAsk
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
* __Path:__ /api/confirm_email/7jKQOcWgicIeXVYvv1EqoGK8BYz2IWaYn17MkYmS9TM
* __Request headers:__
```
authorization: Bearer KSS-oBk6Lr-R4d08Ljw-qDnTpNJEeZsNx2cnfiXzgNY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxPthXN-bm0AAAyD
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
authorization: Bearer 47OwJFz6bgyVGPPPx5p44_DpjNSST_ZuUsV7z0N-47I=
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxHQWfI_8EwAAAwk
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
authorization: Bearer MQtF_Obk2kEHuQ-nX3qhM54uKXBuxq0qrYKpesYvc5Q=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwh_mxyBAWApkkgAABhC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "c592e0fc-2973-4134-a8b0-0d4487b8cdaf"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/392c61f9-432a-40bb-9632-9b87a6334aed
* __Request headers:__
```
accept: application/json
authorization: Bearer kkX3DIYs6C1Q0iKXJj0hfKkmscyCB4U_CAzycnbcj_o=
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
x-request-id: Fwh_mx7EomHF00oAABWB
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "392c61f9-432a-40bb-9632-9b87a6334aed"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/392c61f9-432a-40bb-9632-9b87a6334aed
* __Request headers:__
```
accept: application/json
authorization: Bearer kkX3DIYs6C1Q0iKXJj0hfKkmscyCB4U_CAzycnbcj_o=
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
x-request-id: Fwh_mx71_XrF00oAABHE
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "392c61f9-432a-40bb-9632-9b87a6334aed"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/e6f5ef19-ec0a-4522-b362-3530462e5a13
* __Request headers:__
```
accept: application/json
authorization: Bearer svmllMCYwpFiJrmxkLMQfCOShxDKh8slibrnFxLlc9I=
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
x-request-id: Fwh_mxwwD3YmvoQAABfC
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

