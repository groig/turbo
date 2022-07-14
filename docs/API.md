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
authorization: Bearer sQUSCeGhsX_QZFEe88JSebu8VTVhNHRsNngaoGxdYUM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vVGap3I_GYAAA7E
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
authorization: Bearer O1hyiPeViB4ONwzWrVBngxsVp3vBDvZN4EbyzqjXuCQ=
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
x-request-id: FwHI1tUdm_P_ZKcAAAYh
```
* __Response body:__
```json
{
  "id": "fc6a598a-0c39-4750-9ed2-b49e584f73b9",
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
* __Path:__ /api/addresses/fc6a598a-0c39-4750-9ed2-b49e584f73b9
* __Request headers:__
```
accept: application/json
authorization: Bearer O1hyiPeViB4ONwzWrVBngxsVp3vBDvZN4EbyzqjXuCQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1ux_8tv_ZKcAAAwh
```
* __Response body:__
```json
{
  "id": "fc6a598a-0c39-4750-9ed2-b49e584f73b9",
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
* __Path:__ /api/addresses/f842a846-798d-4bc8-aa6e-07f3024b07ba
* __Request headers:__
```
accept: application/json
authorization: Bearer mYMERKbGJTu99fVZwFf3kvQ6Ju7_QNufFl3M1j9JKp0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u_NtgfYSn4AAAuk
```
* __Response body:__
```json
{
  "id": "f842a846-798d-4bc8-aa6e-07f3024b07ba",
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
  "name": "address-576460752303419902"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/f842a846-798d-4bc8-aa6e-07f3024b07ba
* __Request headers:__
```
accept: application/json
authorization: Bearer dWB2VruSuYofltNB08Vpqs6PMyh5T4_5MSEZnVh9luE=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vAr38zYSn4AAAwE
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
authorization: Bearer RcU_dO15ZP-iu58e6Nk9BFJsAGSHGzuLvoeL27EaZpQ=
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
x-request-id: FwHI1vItYj0Z-d0AABDj
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
* __Path:__ /api/addresses/14e62026-4e76-4f7e-a4fd-64b393150743
* __Request headers:__
```
accept: application/json
authorization: Bearer K2GyvW8bVctM9d2gTGWL9rQxhfL8VOnu6kTPv5bj6LQ=
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
x-request-id: FwHI1vTE2-z6uEoAAA5E
```
* __Response body:__
```json
{
  "id": "14e62026-4e76-4f7e-a4fd-64b393150743",
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
* __Path:__ /api/addresses/14e62026-4e76-4f7e-a4fd-64b393150743
* __Request headers:__
```
accept: application/json
authorization: Bearer K2GyvW8bVctM9d2gTGWL9rQxhfL8VOnu6kTPv5bj6LQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vTp3kP6uEoAAA5k
```
* __Response body:__
```json
{
  "id": "14e62026-4e76-4f7e-a4fd-64b393150743",
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
* __Path:__ /api/addresses/55272702-7eae-4821-aa29-2a7460b8edfb
* __Request headers:__
```
accept: application/json
authorization: Bearer pJbQ3eh1398q4O5aTOEgdpXYSKbhkHm04xurg04Qv-s=
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
x-request-id: FwHI1vGiu7cVSnUAABAD
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/f9b38a3c-e5d2-434d-9858-f444eedbc0a9
* __Request headers:__
```
accept: application/json
authorization: Bearer GbCfXJnrrMN1ogm2IZd5g8zrRv0VYqCp1NBqzgOZOgU=
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
x-request-id: FwHI1vMbFd_b-v8AABDC
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
* __Path:__ /api/addresses/8fcb6737-e550-4471-9eb2-05ccc87b99a1
* __Request headers:__
```
accept: application/json
authorization: Bearer ma62PQh2XYIMmcZL2fohE91MmozVbriEpEzyi2jECMU=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vPaTkh98woAABGD
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/8fcb6737-e550-4471-9eb2-05ccc87b99a1
* __Request headers:__
```
accept: application/json
authorization: Bearer ma62PQh2XYIMmcZL2fohE91MmozVbriEpEzyi2jECMU=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vQw5YZ98woAABGj
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/ecb50271-0c81-48c3-8825-112877d53009
* __Request headers:__
```
accept: application/json
authorization: Bearer UgcRp53d6KZxIGGWkPn79vzxms8YyyOQDNswPcCyuZw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u4D2NKKdCIAAAxi
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
authorization: Bearer 2czq2UYhLYqfJECMqZ0zzrOL79pNYLngF6x76JPnF8I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u0araDN-ysAAA2j
```
* __Response body:__
```json
[
  {
    "color": "some color",
    "id": "249cb09b-6fe7-4805-9a58-85666746773a",
    "license_plate": "license--576460752303420029",
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
authorization: Bearer jl7Q58hHEDbqZKSfIw6Fnyzmhbtuo104JbpOJKsh3QU=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303419199",
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
x-request-id: FwHI1vI5_eMPvUkAABDh
location: /api/cars/fa21133c-610f-4c1a-8888-906f5d5ca4c4
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "fa21133c-610f-4c1a-8888-906f5d5ca4c4",
  "license_plate": "license--576460752303419199",
  "make": "some make",
  "model": "some model"
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/fa21133c-610f-4c1a-8888-906f5d5ca4c4
* __Request headers:__
```
accept: application/json
authorization: Bearer jl7Q58hHEDbqZKSfIw6Fnyzmhbtuo104JbpOJKsh3QU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vJhng8PvUkAABFh
```
* __Response body:__
```json
{
  "color": "some color",
  "id": "fa21133c-610f-4c1a-8888-906f5d5ca4c4",
  "license_plate": "license--576460752303419199",
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
authorization: Bearer 5BKIq1mGF3XJeXhCtul4vBQoJRe2u1K3XTGNxSvEHyc=
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
x-request-id: FwHI1uwdp-ozjsMAAAjE
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
* __Path:__ /api/cars/87e0a35b-400a-4033-b5a8-b6d7aa16f546
* __Request headers:__
```
accept: application/json
authorization: Bearer xkCoi8qmP0-_JGPhBiLvaFHy1kmCz70AUaSTYhXcKR8=
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
x-request-id: FwHI1u9oJ8gHsB4AAA9D
```
* __Response body:__
```json
{
  "color": "some updated color",
  "id": "87e0a35b-400a-4033-b5a8-b6d7aa16f546",
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
  "email": "user-576460752303420413@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1uoSb0GViT8AAApB
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
  "email": "user-576460752303421822@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1uZcihxZJ20AAAfC
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
x-request-id: FwHI1ua6bGJGE4UAAAgC
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
* __Path:__ /api/confirm/sDOWaAv0yTAqvBiTdkrLbCOjD0MEegzipxjgx7VTEVY
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
x-request-id: FwHI1udUIZ9rdSYAAAnB
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
* __Path:__ /api/confirm/sDOWaAv0yTAqvBiTdkrLbCOjD0MEegzipxjgx7VTEVY
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
x-request-id: FwHI1ueJKxNrdSYAAAVk
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
x-request-id: FwHI1tUzmUf_MFAAAASC
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
authorization: Bearer d6MnLXDUqlZffUpgwxlEB3BRm8E4L0HzEqRXF-BrD5s=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1tUyDX0RoL0AAARi
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
authorization: Bearer N2aYT2Q3ujqZSLGaRgrE6cxwIPr5CahGYpv_ueK7UcA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vKOSXb92O0AAA0E
```
* __Response body:__
```json
[
  {
    "id": "51e8916a-9d7b-4acf-94f0-f4707a6e50a5"
  },
  {
    "id": "a3d0d6f8-fa55-4826-98c5-286d21e76f6c"
  },
  {
    "id": "fc8cffe1-e7b5-4681-9a9c-6d2a630d3d34"
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
authorization: Bearer 72Q1jHLHH6sRiy5c6Eb9QGVskNLc226urmu5zmSiYt4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u5YdWAF_SMAAA6D
```
* __Response body:__
```json
[
  {
    "id": "5e71536f-d27e-451a-a461-e1976442e503"
  }
]
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/de2cad6b-38f6-4b54-a1c9-d0a956295880
* __Request headers:__
```
accept: application/json
authorization: Bearer x-K7DGT434yjyzUCue8XR-8MCdDPy1wiNo4XFbWzXc8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u-q1qN6vp4AAA-h
```
* __Response body:__
```json
{
  "id": "de2cad6b-38f6-4b54-a1c9-d0a956295880"
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/b803c1e9-a513-424b-8b9b-1d87e8bf7019
* __Request headers:__
```
accept: application/json
authorization: Bearer x-K7DGT434yjyzUCue8XR-8MCdDPy1wiNo4XFbWzXc8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vARHa56vp4AAA_D
```
* __Response body:__
```json
{
  "id": "b803c1e9-a513-424b-8b9b-1d87e8bf7019"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/631b4ac1-14dc-4c7a-bc66-b1108c012b7a
* __Request headers:__
```
accept: application/json
authorization: Bearer Yc-oSPdXRk7AxhYZGJstg2ijuz2FtrygXD4HqsKWfBM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vD0M030iwQAAA-i
```
* __Response body:__
```json
{
  "id": "631b4ac1-14dc-4c7a-bc66-b1108c012b7a"
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/a85f17ff-3022-4e1e-b07c-3c4650c6fbed
* __Request headers:__
```
accept: application/json
authorization: Bearer Yc-oSPdXRk7AxhYZGJstg2ijuz2FtrygXD4HqsKWfBM=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vEsNK70iwQAAA_C
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
authorization: Bearer TaV7wQiqALtTIh_sgqOz0IAxzgqu6-TbeZg_oE96kGU=
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
x-request-id: FwHI1tWLcZeV6XgAAAbh
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
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer": {
    "email": "user-576460752303420639@example.com",
    "name": "user-576460752303420607",
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
x-request-id: FwHI1uri_moHXvsAAAuB
```
* __Response body:__
```json
{
  "id": "69ef83c3-acce-4d3f-82a7-957705549936",
  "token": "sKOX4ag0_A0HTDlp02aswdthFREZ0DYw5jUuWU1mbME="
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
x-request-id: FwHI1uysl6vLMqUAAAti
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
    "email": "user-576460752303420831@example.com",
    "license": "driver-license-abc",
    "name": "user-576460752303420799",
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
x-request-id: FwHI1upWLHx-8I0AAArB
```
* __Response body:__
```json
{
  "id": "b7c92725-340a-4afb-b191-e26f0321ec3c",
  "token": "qXCp2cLiHXXzkkmFYA7RpDWgomg_viv_-QNjb3ZFbxg="
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
    "email": "user-576460752303421596@example.com",
    "name": "user-576460752303421564",
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
x-request-id: FwHI1utmIJfH_t8AAAfE
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
    "email": "user-576460752303421436@example.com",
    "name": "user-576460752303421404",
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
x-request-id: FwHI1uvzDFNvS4QAAAhk
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
x-request-id: FwHI1tt_Gs22oD4AAAMk
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
  "email": "user-576460752303421884@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1upex5PBEnoAAAZk
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
x-request-id: FwHI1uS1mQq3fmcAAAbi
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
* __Path:__ /api/reset_password/0K2XLV66-2BFbC3pcLlyLCRhcyd8nIRB9imZUR44X8U
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
x-request-id: FwHI1uUgFH70FAIAAAcC
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
* __Path:__ /api/reset_password/b5rLfmEOzd5FYDOergpHn6OypJQkSVxQMM18FIua9MI
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
x-request-id: FwHI1uXLJNNdcxUAAAdi
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
x-request-id: FwHI1t0Pja3lRqcAAAfh
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
  "email": "user-576460752303421534@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1uaLHeIxLWwAAAfi
```
* __Response body:__
```json
{
  "token": "eJzMd-8NobeBhtFGjaOFt0JkgTcwLMLakk2KYtihpLc="
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
  "email": "user-576460752303420477@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1udgz6RgLDMAAAnh
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
authorization: Bearer gbJcefkKT4_8lqwVlqHi4bzLMH8lulqixQ08G67ythQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1ufzuIAwWW0AAAXE
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
x-request-id: FwHI1uZK2dJOeRoAAAuD
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
authorization: Bearer Q46w0ftGfy01x-9DgL0iTp-vLaVwr4O9_VT_2WzJi5M=
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
x-request-id: FwHI1vCjUqkQCF4AAAyk
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "tK63NKBqHbqU1W0w4DxN-T0jOqY6yNrTkpCCEsmIFYo="
}
```

#### PUT /settings (change password) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer lrrZJ-ClKq1HAYTS_dAVQcqUhjPvJmMBWn5_v-M6RMU=
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
x-request-id: FwHI1uqa9PhzCTUAAAbE
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
authorization: Bearer AmyC0EzxGI3q7mBIBheXT1dLHQj9OA4ITdA4QK9IRQY=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303421660@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1utejQkWMdkAAAdE
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
authorization: Bearer FMzSvskgw_lGc__rzh1mFuHrOAtpRHn3N-NXAq9C2yM=
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
x-request-id: FwHI1u2AKMTifQkAAAmk
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

#### PUT /settings (change name) updates the user email

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer -wJUWkU5MUROtY8H-rs0N9_cZSADuaTlq-6s-r9e5JE=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303419517@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u-oUqXUxcwAAA-j
```
* __Response body:__
```json
{
  "message": "A code to confirm your email change has been sent to the new address."
}
```

#### PUT /settings (change name) does not update email on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer VGAEH1LTCJsPxzWcVQ8_aLIAqzOeK-7Y5by1_YL0Wx4=
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
x-request-id: FwHI1ux5KeuRVosAAArC
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
* __Path:__ /api/confirm_email/25VM3hujU3qOAI_Mbouo0oZjWPj2_LXzL-mbzMLkWcU
* __Request headers:__
```
authorization: Bearer stV7GF8kC3DJnoIe82vayCHGJqBb5Jb6jIKzudwRGJ4=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u46PMy03ekAAAzi
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
authorization: Bearer eUq7BQE1pWM5xafiDZu1wjzIbpXmKidKJTqNeAphaos=
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1u807Bpw4X0AAAsk
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
authorization: Bearer mo-Tu-ptOYV6dERp94qK5I3VMwXGYrQOoIEYnLuJvBc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwHI1vicM64jMeEAABJD
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "288fb9c1-60c6-4913-a714-7475a9d9f003"
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/6896b420-492f-4def-a2e7-62af24e1a00d
* __Request headers:__
```
accept: application/json
authorization: Bearer ZW6g7_RNV9A6ls2_0WCsvNhMyOUXQ_WcX7TNJtPl0Kc=
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
x-request-id: FwHI1vkw-6pIpbAAABMi
```
* __Response body:__
```json
{
  "credit": 42,
  "id": "6896b420-492f-4def-a2e7-62af24e1a00d"
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/6896b420-492f-4def-a2e7-62af24e1a00d
* __Request headers:__
```
accept: application/json
authorization: Bearer ZW6g7_RNV9A6ls2_0WCsvNhMyOUXQ_WcX7TNJtPl0Kc=
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
x-request-id: FwHI1vmAjFhIpbAAABNC
```
* __Response body:__
```json
{
  "credit": 43,
  "id": "6896b420-492f-4def-a2e7-62af24e1a00d"
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/e713afd4-c019-4988-8210-c1ffdd96f000
* __Request headers:__
```
accept: application/json
authorization: Bearer oToN8CfQQinlkQ-GON06AbRp8RlLxu1w2dqYFEfJJ6I=
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
x-request-id: FwHI1vhPGYib2J8AABAk
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

