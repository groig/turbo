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
  * [TurboWeb.DriverController](#turboweb-drivercontroller)
    * [index](#turboweb-drivercontroller-index)
    * [show](#turboweb-drivercontroller-show)
    * [location](#turboweb-drivercontroller-location)
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
authorization: Bearer vgufVhUqkcdpH1IYtCRYEUMtzC49FGXq8KdkCn9Tpvc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwR2djVGE4UAAASE
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
authorization: Bearer RXv32cZn3TY_yNeTPHM513zYxU9yCUHmxprWRi-2kOw=
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
x-request-id: FwG7rwXtE1mIuPAAAAsj
```
* __Response body:__
```json
{
  "id": "7e590eea-4f04-4027-bd51-1ee4ea8e3ce1",
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
* __Path:__ /api/addresses/7e590eea-4f04-4027-bd51-1ee4ea8e3ce1
* __Request headers:__
```
accept: application/json
authorization: Bearer RXv32cZn3TY_yNeTPHM513zYxU9yCUHmxprWRi-2kOw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwvcMYiIuPAAAAsi
```
* __Response body:__
```json
{
  "id": "7e590eea-4f04-4027-bd51-1ee4ea8e3ce1",
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
* __Path:__ /api/addresses/1129708f-4efb-4d0b-abc3-445dd20e952a
* __Request headers:__
```
accept: application/json
authorization: Bearer onlTMjftvnRAg_XQbnPIaBf2rQDz9K6lG4R-8dGm2R0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rw4fzyrbOe8AAAhE
```
* __Response body:__
```json
{
  "id": "1129708f-4efb-4d0b-abc3-445dd20e952a",
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
  "name": "address-576460752303419261"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/1129708f-4efb-4d0b-abc3-445dd20e952a
* __Request headers:__
```
accept: application/json
authorization: Bearer AYuoT1Dx2jjg80VVRnuUFW5Ntm_BGY0BzGNXDXT35fg=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rw5DqhzbOe8AAAhk
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
authorization: Bearer _bZ7Mf6l7VAEt62abdB2e0g-MLPbZryL2iNuGTy02CY=
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
x-request-id: FwG7rxCAdGh_MpMAAAxi
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
* __Path:__ /api/addresses/2279a8c1-7822-4277-8905-ad40b12e6a86
* __Request headers:__
```
accept: application/json
authorization: Bearer 2oGUfm-PSLGLgpWeMXezAcw_ntQ9csoWSWDF63dkShM=
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
x-request-id: FwG7rwzHBTAaWJMAAAti
```
* __Response body:__
```json
{
  "id": "2279a8c1-7822-4277-8905-ad40b12e6a86",
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
* __Path:__ /api/addresses/2279a8c1-7822-4277-8905-ad40b12e6a86
* __Request headers:__
```
accept: application/json
authorization: Bearer 2oGUfm-PSLGLgpWeMXezAcw_ntQ9csoWSWDF63dkShM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwzwj5oaWJMAAAxh
```
* __Response body:__
```json
{
  "id": "2279a8c1-7822-4277-8905-ad40b12e6a86",
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
* __Path:__ /api/addresses/bc2c9371-a181-45b7-8362-c8379f5afd1f
* __Request headers:__
```
accept: application/json
authorization: Bearer hjf7n5YZMi_AFFtqfojLcO3gQaj2FWLrngayh0L79mY=
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
x-request-id: FwG7rxFl4nf3x8QAAA4B
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/9d5cf518-3d85-4abe-80bb-485dbf91d2a8
* __Request headers:__
```
accept: application/json
authorization: Bearer j19OE0hFK9hfPzNG0UQtTi_6zRTHxPHki65bPjFcdSg=
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
x-request-id: FwG7rw8dygAsnw8AAAzB
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
* __Path:__ /api/addresses/6fa7cee7-c487-4da4-87ab-c78498ec9648
* __Request headers:__
```
accept: application/json
authorization: Bearer yCBnHilNAkNwsnIwOov0Tc8nFbEGJSmyJ6Rb-i2cUfw=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rvWe_bdrGQQAAAhj
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/6fa7cee7-c487-4da4-87ab-c78498ec9648
* __Request headers:__
```
accept: application/json
authorization: Bearer yCBnHilNAkNwsnIwOov0Tc8nFbEGJSmyJ6Rb-i2cUfw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwPQEV5rGQQAAAbC
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/8dd99a7d-81b3-4cb8-8ac7-4d4761e03497
* __Request headers:__
```
accept: application/json
authorization: Bearer KGee_Ch_4ROM8vWopcAtQwHWRgUIZbjsl3YeXbbWxPw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rxAVux4g084AAAjE
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
authorization: Bearer RDd3cnaY2ECxYlJjAQQ4N5MJa4SsXqFi45vTZI8wOuY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rw129vQf2AAAABBj
```
* __Response body:__
```json
[
  {
    "color": "some color",
    "id": "26c19b98-4461-49b2-a19b-75c260bf2f13",
    "license_plate": "license--576460752303419325",
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
authorization: Bearer qXPXbxlwqXHXEb3Eqs-EMny02t1uDV-WNd8A6KNyJL8=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303420605",
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
x-request-id: FwG7rwYvXBZ-8I0AAAtj
location: /api/cars/5718c732-74a6-4738-9ed0-fe34b4c97ac3
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "5718c732-74a6-4738-9ed0-fe34b4c97ac3",
  "license_plate": "license--576460752303420605",
  "make": "some make",
  "model": "some model"
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/5718c732-74a6-4738-9ed0-fe34b4c97ac3
* __Request headers:__
```
accept: application/json
authorization: Bearer qXPXbxlwqXHXEb3Eqs-EMny02t1uDV-WNd8A6KNyJL8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwZqPbx-8I0AAAji
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "5718c732-74a6-4738-9ed0-fe34b4c97ac3",
  "license_plate": "license--576460752303420605",
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
authorization: Bearer b0nAr2eltuQRaVqinpv1lxa-oImhAC1Ogldq8ubIUGU=
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
x-request-id: FwG7rw5gnlOHeHsAABFj
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
* __Path:__ /api/cars/3932929f-96d4-4790-8cde-2a90c80ee5fa
* __Request headers:__
```
accept: application/json
authorization: Bearer 5ajDf1PYi0e2DYMOey12mkgHvgMOdA6wnhC2t2R8jIc=
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
x-request-id: FwG7rweecdDvWiUAAAmC
```
* __Response body:__
```json
{
  "color": "some updated color",
  "id": "3932929f-96d4-4790-8cde-2a90c80ee5fa",
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421790@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwPv1Hs236UAAARE
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421407@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwUJEh6M4gwAAASk
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
x-request-id: FwG7rwR0Ay_raZgAAAfB
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
* __Path:__ /api/confirm/ZtaRM9XaMkgt0eokxHLwvzsZhZBzzRMdxcLs4IzIOhY

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rvWlTlNAiO0AAAQC
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
* __Path:__ /api/confirm/ZtaRM9XaMkgt0eokxHLwvzsZhZBzzRMdxcLs4IzIOhY

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwN84GVAiO0AAAaC
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

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwS4OVer0oAAAAcC
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
authorization: Bearer fO2GwsN7LfhjZW2F1J7Fp03rM-Po2KWUj4r1Lc-RpcA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rvWlkxR80lcAAAiD
```
* __Response body:__
```json
{
  "data": []
}
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
authorization: Bearer 3a1jWfYLT3Mul-WmZgwTlUFaOtWqPjvn5mqo9nAEcJk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwcyu6jyEXUAAAXE
```
* __Response body:__
```json
[
  {
    "id": "1829e9bf-e006-4208-876a-a915ca5e2fc5"
  },
  {
    "id": "d6da630b-6635-40d6-b996-9a42dd884aff"
  },
  {
    "id": "6f55932e-cf91-4bdc-b8d9-b633766a3bb0"
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
authorization: Bearer UCYS_xytzAJ0uvNuSuO3swdnQUD016X2fXWHpR0nf8E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rw0jU3z1Aj4AAAui
```
* __Response body:__
```json
[
  {
    "id": "5d9d5fe6-6af9-4f6f-8d34-a724451a1fa2"
  }
]
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/3f959475-7c2f-4185-9ad4-198c08bfb424
* __Request headers:__
```
accept: application/json
authorization: Bearer sfx1qfd_zKVhHcZfqmKpzFfFU1Q9CIEpP4F9XWz3JW0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwi7sDUNzGgAAAZk
```
* __Response body:__
```json
{
  "id": "3f959475-7c2f-4185-9ad4-198c08bfb424"
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/314241f5-77d0-43c3-8559-aa95abf2e14f
* __Request headers:__
```
accept: application/json
authorization: Bearer sfx1qfd_zKVhHcZfqmKpzFfFU1Q9CIEpP4F9XWz3JW0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwmsO4ENzGgAAApB
```
* __Response body:__
```json
{
  "id": "314241f5-77d0-43c3-8559-aa95abf2e14f"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/5a370734-9978-447b-bbf7-fb90abdd060e
* __Request headers:__
```
accept: application/json
authorization: Bearer heoFvAWCMszKg6forIa1pLU6_PM0Ctv_fsXSO5ZrliU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rvWLy-3MDlYAAAMk
```
* __Response body:__
```json
{
  "id": "5a370734-9978-447b-bbf7-fb90abdd060e"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/d49ca1a5-49ec-4bc4-8573-25072020b527
* __Request headers:__
```
accept: application/json
authorization: Bearer heoFvAWCMszKg6forIa1pLU6_PM0Ctv_fsXSO5ZrliU=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwTi78DMDlYAAApD
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
authorization: Bearer XIKH_yb9O4cIp_SF9a0uVsL43HBj3eZiHqPbeYjhE9o=
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
x-request-id: FwG7rwpRJ7r_GpIAAArC
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

## TurboWeb.RegistrationController
### <a id=turboweb-registrationcontroller-create></a>create
#### POST /register customer creates customer and logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer": {
    "email": "user-576460752303421310@example.com",
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
x-request-id: FwG7rwZRzBDGYUIAAAjC
```
* __Response body:__
```json
{
  "id": "c3b99d4a-0be5-4eb0-8dd3-c08b310e1211",
  "token": "HzAR72565KPv1sD1vY3POePTmnINL4V6n-GZrjXLHJk="
}
```

#### POST /register customer render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
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
x-request-id: FwG7rwOXFLr0FAIAAAdh
```
* __Response body:__
```json
{
  "errors": {
    "email": [
      "must have the @ sign and no spaces"
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303422108@example.com",
    "license": "driver-license-abc",
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
x-request-id: FwG7rwch-ay1t-kAAAWk
```
* __Response body:__
```json
{
  "id": "7640ef51-5351-4881-8f4b-0aa104f5dc77",
  "token": "d48y81ixpwsnWq5kShYoh_Lp0tC9P5iLHvMEHKaI2gM="
}
```

#### POST /register driver render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303420765@example.com",
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
x-request-id: FwG7rwXDIR3fy3gAAArj
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "admin": {
    "email": "user-576460752303421213@example.com",
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
x-request-id: FwG7rvwrnizEJxMAAAkj
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
x-request-id: FwG7rwYzGhbKtjsAAAuD
```
* __Response body:__
```json
{
  "errors": {
    "email": [
      "must have the @ sign and no spaces"
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303420829@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwXApoRCHzMAAAhB
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
x-request-id: FwG7rwgJU1r3A-cAAAmB
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
* __Path:__ /api/reset_password/IdjjwEWAq9NeJMSeoWWEt_kYUmfSldP5m0HkWjxMdS0
* __Request headers:__
```
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
x-request-id: FwG7rwagtqXvBXYAAAlC
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
* __Path:__ /api/reset_password/XoxBKwttnehvKD5gkMVfIcANJwA6C6i8ZEERTKBtgIU
* __Request headers:__
```
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
x-request-id: FwG7rvkV5Fs2BH0AAAbB
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

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwdugf-3O5IAAAjB
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
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421884@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwjmkQjbVo0AAA0D
```
* __Response body:__
```json
{
  "token": "DSSxJOBPulYH_G88op3a_dWe9twe8aDw9spvlwQgxqk="
}
```

#### POST /log_in emits error message with invalid credentials

##### Request
* __Method:__ POST
* __Path:__ /api/log_in
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421980@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwgvEXXYtnsAAAni
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
authorization: Bearer LjI233jozLOoaUNouHwwdCtbmbacTEQYnWTnBz3k0MU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rweeWLIhu58AAAxD
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

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwicRgsjxAcAAAnh
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

## TurboWeb.SettingsController
### <a id=turboweb-settingscontroller-update></a>update
#### PUT /settings (change password form) updates the user password and resets tokens

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer fgGxETJba9U2S7n0wT6nOh6xis6ZyRoEoNEpZIath48=
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
x-request-id: FwG7rwlGaSifYZQAAApi
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "6VM-PFegxfi8hSOSCUdse5DsK_yFbkFh3dVeBZ4M6WY="
}
```

#### PUT /settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer zarX1hrWRGbQlhght3ct1F6FZ_Q149rd-aVzgo9F9FY=
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
x-request-id: FwG7rwugSnKbP-EAAAvB
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

#### PUT /settings (change email form) updates the user email

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer G4DVY_x397TTom_ZKF59qarY_q2l7ZynCrqzIwh82Qk=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303422204@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwa-deJ9kVkAAAUk
```
* __Response body:__
```json
{
  "message": "A code to confirm your email change has been sent to the new address."
}
```

#### PUT /settings (change email form) does not update email on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer MG-cwp_YEtu7f2s6aVCF3Q46g88eAhL8M3HpXWsG_jE=
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
x-request-id: FwG7rwxakWrFDCwAAAek
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

### <a id=turboweb-settingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/H1dU_hCiTLI6WW6wv5DoaHblFXsqxuvsFUD1oOWtrxs
* __Request headers:__
```
authorization: Bearer ypc9jGLIVQisFVGW-ZMWt0nTPw8GljBfyjHS5Mvlhew=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwqUYZdsoy8AAA6D
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
authorization: Bearer Zrs1MFSqedJH-UX2hau3O2NnnI1tUVc0IchLdVAUEUs=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rwUZAu_3X28AAAdi
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
authorization: Bearer KJ7UPF8J7jyymSpX5gTWPLDGsK1zzK2zvu1vDncMRwo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwG7rxT86gYbUskAABMj
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "f801d102-0983-46ad-b6ea-9b183d61e1d7"
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/085c6f76-0357-44ad-8141-69291d99b11f
* __Request headers:__
```
accept: application/json
authorization: Bearer NYot9g9WDH-TqaTvHQn5vfeuTFDQ4zj6HnQhPLakaZs=
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
x-request-id: FwG7rxQXlYI1gZoAABJj
```
* __Response body:__
```json
{
  "credit": 42,
  "id": "085c6f76-0357-44ad-8141-69291d99b11f"
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/085c6f76-0357-44ad-8141-69291d99b11f
* __Request headers:__
```
accept: application/json
authorization: Bearer NYot9g9WDH-TqaTvHQn5vfeuTFDQ4zj6HnQhPLakaZs=
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
x-request-id: FwG7rxQ-9Oc1gZoAABKD
```
* __Response body:__
```json
{
  "credit": 43,
  "id": "085c6f76-0357-44ad-8141-69291d99b11f"
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/619bf57a-e2a8-4591-8cd8-017ac893e1f7
* __Request headers:__
```
accept: application/json
authorization: Bearer w3sXn2-BwHBWosJmiogMKS_BErLjFSbZx6c11RYS_c4=
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
x-request-id: FwG7rxSupEZryD8AABLj
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

