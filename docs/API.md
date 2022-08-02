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

## TurboWeb.AddressController
### <a id=turboweb-addresscontroller-index></a>index
#### index lists all addresses for a customer

##### Request
* __Method:__ GET
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer lLcOD-pP7I8XrI8vDvbEoZUGFUyBXeWLrKjwrYG6DL4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjD7L9dUTbgAABFj
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
authorization: Bearer ml3pKOP_JPutHUrkbjQinsacVhvk0sj42PmkuxWrgAg=
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
x-request-id: FwedvjUoYh0EuvIAABME
```
* __Response body:__
```json
{
  "data": {
    "id": "792d2b90-9d89-4bac-8d2d-a8d63e41b544",
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
* __Path:__ /api/addresses/792d2b90-9d89-4bac-8d2d-a8d63e41b544
* __Request headers:__
```
accept: application/json
authorization: Bearer ml3pKOP_JPutHUrkbjQinsacVhvk0sj42PmkuxWrgAg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjVGg50EuvIAABMk
```
* __Response body:__
```json
{
  "data": {
    "id": "792d2b90-9d89-4bac-8d2d-a8d63e41b544",
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
* __Path:__ /api/addresses/eecc8127-0242-4cdc-9c9c-1ba787d8ecd5
* __Request headers:__
```
accept: application/json
authorization: Bearer LddLp9GjOcEZ-rKFqdO5pLqILlQxHQpCBvrlLn_wDi8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedviVkE2eA2GoAAAgE
```
* __Response body:__
```json
{
  "data": {
    "id": "eecc8127-0242-4cdc-9c9c-1ba787d8ecd5",
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
    "name": "address-576460752303421564"
  }
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/eecc8127-0242-4cdc-9c9c-1ba787d8ecd5
* __Request headers:__
```
accept: application/json
authorization: Bearer RlG3_jo3_SQF3dPrq1n2EMZLBV5dXa8gGDhtB8N-RFQ=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvi-kk-GA2GoAAA-E
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
authorization: Bearer umi_Bv8Q3qKaaJI4moO-rJcR1B-NcGGxWO4_a26Hy3I=
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
x-request-id: FwedvjW6O2rqWLcAABHB
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
* __Path:__ /api/addresses/5326bd16-7608-4cde-8245-204e77dda598
* __Request headers:__
```
accept: application/json
authorization: Bearer cWO2-VvunQBtUqt2CMEY9GXcHhzRBKblHkOdEIQOJ_k=
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
x-request-id: FwedvjMcCcOfJmIAABQj
```
* __Response body:__
```json
{
  "data": {
    "id": "5326bd16-7608-4cde-8245-204e77dda598",
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
* __Path:__ /api/addresses/5326bd16-7608-4cde-8245-204e77dda598
* __Request headers:__
```
accept: application/json
authorization: Bearer cWO2-VvunQBtUqt2CMEY9GXcHhzRBKblHkOdEIQOJ_k=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjNrcMmfJmIAABEB
```
* __Response body:__
```json
{
  "data": {
    "id": "5326bd16-7608-4cde-8245-204e77dda598",
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
* __Path:__ /api/addresses/95defd09-5f1c-4749-92f9-ddb53c62c472
* __Request headers:__
```
accept: application/json
authorization: Bearer dflY1fCcvjfFb-45VweliiHegu2OSFjFDvqBh6WH9uE=
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
x-request-id: FwedvjIpIyJ3Ud8AAA_B
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/f982fabb-ec0f-4afa-ab88-ed813734448d
* __Request headers:__
```
accept: application/json
authorization: Bearer aYtdr4Dxc5mvHgaDU25w3E_14ngq7SZfFt8MI3Iyu8Y=
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
x-request-id: FwedvjBu1GjzYLIAABCk
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
* __Path:__ /api/addresses/6c2659ac-1b65-4b08-8bb1-0203c0ae0619
* __Request headers:__
```
accept: application/json
authorization: Bearer N3afcZ9TsLJNWEMQ3s374HX5aiZX7Q376FuCNj6iESw=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjRSVTgjMeEAABFB
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/6c2659ac-1b65-4b08-8bb1-0203c0ae0619
* __Request headers:__
```
accept: application/json
authorization: Bearer N3afcZ9TsLJNWEMQ3s374HX5aiZX7Q376FuCNj6iESw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjR4TR8jMeEAABFh
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/da923ba1-f604-4ab0-9d4c-807b6ede9785
* __Request headers:__
```
accept: application/json
authorization: Bearer Dpu8KVqo8fobbI_IVyhrEPymMZNpe56IqZmCR6Muapw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvhbaID-hQM8AAAZE
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
authorization: Bearer z3uLtmL6diLe_MX1sFkr9Y6XoO9msZcttkdtEwQRBIE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjH0EMatIPwAABKi
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "fc4f2f3e-a54c-4c37-844f-b7906a5289d7",
      "license_plate": "license--576460752303419487",
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
authorization: Bearer EDn_eVltJmVe358-6WOfm4aMntj1dtbdKgOdA6nH7xE=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303419517",
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
x-request-id: Fwedvi-o0cgn0hYAAA-j
location: /api/cars/13d11b0c-44cd-4ccb-8d3c-6148c48f46ca
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "13d11b0c-44cd-4ccb-8d3c-6148c48f46ca",
    "license_plate": "license--576460752303419517",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/13d11b0c-44cd-4ccb-8d3c-6148c48f46ca
* __Request headers:__
```
accept: application/json
authorization: Bearer EDn_eVltJmVe358-6WOfm4aMntj1dtbdKgOdA6nH7xE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvi_masMn0hYAAA_j
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "13d11b0c-44cd-4ccb-8d3c-6148c48f46ca",
    "license_plate": "license--576460752303419517",
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
authorization: Bearer n21vyTjq8K3A-2mbWoNW_tjao77ihhJDXf17BdoAXxs=
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
x-request-id: Fwedvi83Gq1gDfUAAA7k
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
* __Path:__ /api/cars/2fcafcb2-be38-43b3-ac32-87b4d3025d2e
* __Request headers:__
```
accept: application/json
authorization: Bearer uvoc5YvTwjSF7PYhjDLdAHzWUfDsmMly3of6dy7M8g0=
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
x-request-id: Fwedvi4cxiQwvMEAAAzh
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "2fcafcb2-be38-43b3-ac32-87b4d3025d2e",
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
  "email": "user-576460752303420252@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvivFjXYH9NYAAAxD
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
  "email": "user-576460752303421567@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvihAXNK97YMAAArC
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
x-request-id: FwedviRKroHtbNYAAAji
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
* __Path:__ /api/confirm/4fkjeNKVfYkxzpHEa9pem2OMXKwg-1QdcZd40qXBGPg
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
x-request-id: Fwedviw3GSvLMqUAAA1C
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
* __Path:__ /api/confirm/4fkjeNKVfYkxzpHEa9pem2OMXKwg-1QdcZd40qXBGPg
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
x-request-id: FwedvixtsBDLMqUAAAuh
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
x-request-id: FwedvhbaTaSf-kEAAAZk
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
authorization: Bearer VLreNA4maI7gjsAQ3f2XfijhoyZHO7NInI3P7636NG0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvib_Ky7YtFcAAAmi
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
* __Path:__ /api/customers/5ff55cfb-ed55-44a4-96e9-e0cc1e79d9ad
* __Request headers:__
```
accept: application/json
authorization: Bearer L1SCQbP5QJLJnH-Wr5u-DI9plpJDFEgZkuh7qujCzYA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvigU-4D4rVQAAAtD
```
* __Response body:__
```json
{
  "data": {
    "id": "5ff55cfb-ed55-44a4-96e9-e0cc1e79d9ad"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/09e91458-fd47-44e7-bd1c-34082541c4a6
* __Request headers:__
```
accept: application/json
authorization: Bearer L1SCQbP5QJLJnH-Wr5u-DI9plpJDFEgZkuh7qujCzYA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvihb09P4rVQAAAuj
```
* __Response body:__
```json
{
  "data": {
    "id": "09e91458-fd47-44e7-bd1c-34082541c4a6"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d1892b8f-97d0-43bb-87cc-708eb7710e1c
* __Request headers:__
```
accept: application/json
authorization: Bearer 2EVXI8iI0RiBS6YfIe5nhLE1hRPGnsTKlonFkRWLwbw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvhbctUh3HFIAAAfj
```
* __Response body:__
```json
{
  "data": {
    "id": "d1892b8f-97d0-43bb-87cc-708eb7710e1c"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/7b5e3165-8ee8-4e66-85be-8c57fbcafabe
* __Request headers:__
```
accept: application/json
authorization: Bearer 2EVXI8iI0RiBS6YfIe5nhLE1hRPGnsTKlonFkRWLwbw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedviZUF_p3HFIAAAgh
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
authorization: Bearer yfZthY2q5pBY0K5IUbiy_4ApvK18mONzLLS9v81TjGU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjDdMJIKi44AABEj
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "76673896-7196-4099-ba36-645001a07656"
    },
    {
      "id": "ef3ae87b-f11c-459a-9082-af2e24d775e3"
    },
    {
      "id": "9ded4059-68e1-4efc-855a-dd62e956dfaa"
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
authorization: Bearer 82Em78vzIfsLhQsF3QIqo3wGdzuHBKK1yQtrzolO7bo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvipLddbKtjsAAAvi
```
* __Response body:__
```json
{
  "data": [
    {
      "id": "674642b2-0d22-4893-abc0-2fc06012a09f"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/5834deab-c42e-4adb-9c1d-96380b620d4d
* __Request headers:__
```
accept: application/json
authorization: Bearer TPHDTPNK8pXo1H_ONmylpRr-hkVaINqf8d3x8yMsfIc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedviio6-icisgAAAwD
```
* __Response body:__
```json
{
  "data": {
    "id": "5834deab-c42e-4adb-9c1d-96380b620d4d"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/ad94359d-2206-4d00-a878-27a9743ffab0
* __Request headers:__
```
accept: application/json
authorization: Bearer TPHDTPNK8pXo1H_ONmylpRr-hkVaINqf8d3x8yMsfIc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvijNBoucisgAAAlk
```
* __Response body:__
```json
{
  "data": {
    "id": "ad94359d-2206-4d00-a878-27a9743ffab0"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/77c80417-c9b8-4991-b573-433e53c37b44
* __Request headers:__
```
accept: application/json
authorization: Bearer nJDsOQ6p_9V-rpMYBbcwzgd97RiE8CdkC4CPLA7ea5U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvidkQYLtr94AAAoC
```
* __Response body:__
```json
{
  "data": {
    "id": "77c80417-c9b8-4991-b573-433e53c37b44"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/222a6725-ebe1-4d37-9a22-ed9d7da6a8fa
* __Request headers:__
```
accept: application/json
authorization: Bearer nJDsOQ6p_9V-rpMYBbcwzgd97RiE8CdkC4CPLA7ea5U=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvieenJbtr94AAAoi
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
authorization: Bearer LwnprQEha6Zc97e4fs_YFMJV_m9S40mibw52KHOA1k4=
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
x-request-id: FwedviuakgyOp9cAAAyi
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
authorization: Bearer ycuY8S8gKKC1ThhWjUlRbkFq2696KK98Io9sYf_-1ts=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303421534"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvhb0MpK1_LcAAAfC
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
    "email": "user-576460752303419582@example.com",
    "name": "user-576460752303419550",
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
x-request-id: Fwedvi0cpFsx3qEAAA-i
```
* __Response body:__
```json
{
  "data": {
    "id": "0d0b32d8-559d-4f1e-88dc-f6b463f4332e",
    "token": "QdlN2H5CZtyYccKWFoE2kWyXMsOw4IldE22jBeTz-AY="
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
x-request-id: Fwedvix5PnBeX7cAAA1E
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
    "email": "user-576460752303420220@example.com",
    "license": "driver-license-abc",
    "name": "user-576460752303420188",
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
x-request-id: FwedviucDypWJhIAAA0k
```
* __Response body:__
```json
{
  "data": {
    "id": "3ec8c503-7d51-4a89-9bcb-d30719fcfaf4",
    "token": "_VC7AgDlrW7j5JZ_N88u45OEpXLjMYXgG0999U-GGqE="
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
    "email": "user-576460752303420799@example.com",
    "name": "user-576460752303420767",
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
x-request-id: Fwedvim6b4UIx18AAArh
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
    "email": "user-576460752303420157@example.com",
    "name": "user-576460752303420125",
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
x-request-id: FwedviyVT0OLpVYAAA1j
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
x-request-id: FwedvhvmshVVXHsAAAWB
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
  "email": "user-576460752303420382@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvisjn4jxk3AAAAuk
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
x-request-id: FwedviW2acZdcxUAAAkC
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
* __Path:__ /api/reset_password/KzmMQa9Cvl8dBeqnypQnPjdyYmKSlBkkxjHcgSOAAbg
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
x-request-id: FwedviTTb_z1B-YAAAdk
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
* __Path:__ /api/reset_password/slbo5foa8UTwJopFvm4-eMHTn1gJXhKyZlSy02RdOig
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
x-request-id: FwedvivC9p26gSsAAAuB
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
x-request-id: Fwedvh6xsu8GmfwAAAhC
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
authorization: Bearer eSTkP_m6EEPRiF0ntmvoTJbvoj6iKTG_PRw_VD1wMcc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjQil1T2rcQAABTC
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "16111fd1-bd6f-49f3-81fe-29f8d7935bd0",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "ec6d68f4-4bc5-4b1a-889b-47192e0fc486",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "c8650527-6858-437c-a1b3-8f7e605dc199",
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
authorization: Bearer XQKyxpMUanDXA95mDr6_cMXM52F2H7DlPIiR3ivpDfI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvi8-LAuScvcAAA8E
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "9da20a23-77dd-455f-b308-a5b7607375d3",
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
authorization: Bearer Zqv66tI1QKhP3M0d3Awk1FlslMlLhymO43cLCzIIyoA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjYcMRA467UAABOE
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "f2281a05-1e67-483e-893a-0f0ce5a7acfa",
      "start_time": null
    },
    {
      "customer_rating": null,
      "driver_rating": null,
      "end_time": null,
      "id": "31615367-a4e1-4199-9c26-6a7d4cfb7865",
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
authorization: Bearer yS6ODGX3rWHo--IP95i9rv28LYBBwi-ZSykY8obwF5I=
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
x-request-id: FwedvjHIk6og084AABLD
location: /api/rides/aeed92ff-e69e-4cfd-abdf-c7fd7ffd5050
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "aeed92ff-e69e-4cfd-abdf-c7fd7ffd5050",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### create ride renders ride when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rides/aeed92ff-e69e-4cfd-abdf-c7fd7ffd5050
* __Request headers:__
```
accept: application/json
authorization: Bearer yS6ODGX3rWHo--IP95i9rv28LYBBwi-ZSykY8obwF5I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjIKowUg084AABEE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "aeed92ff-e69e-4cfd-abdf-c7fd7ffd5050",
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
authorization: Bearer nX7oZi6ruFOCKWNiDGIF_c5WR6-Z_QktDCcbAhB-HT8=
content-type: multipart/mixed; boundary=plug_conn_test
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjFGek4zugIAAA7h
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
* __Path:__ /api/rides/2283c646-e1a7-45cd-87f7-effac8c8a480
* __Request headers:__
```
accept: application/json
authorization: Bearer A6xgi0P_tg6YQcYh2Y1-mXTIx2yjY7eYYzNjo1dPFSo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjBxzgy6Em8AABGC
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "2283c646-e1a7-45cd-87f7-effac8c8a480",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/1eadc6be-a2d5-40ba-b267-e98d5830fde4
* __Request headers:__
```
accept: application/json
authorization: Bearer A6xgi0P_tg6YQcYh2Y1-mXTIx2yjY7eYYzNjo1dPFSo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjCeOk-6Em8AABGi
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "1eadc6be-a2d5-40ba-b267-e98d5830fde4",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/6eb66527-dce8-4bd9-935a-53e64d06bfbe
* __Request headers:__
```
accept: application/json
authorization: Bearer ybTWR43tNyIncI3vlcV1uIOYzVGVJAVMWBIMi29uj-U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjMYGqwTVvgAABDh
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "6eb66527-dce8-4bd9-935a-53e64d06bfbe",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/254c9352-d00c-47d6-9b95-1bc84686868a
* __Request headers:__
```
accept: application/json
authorization: Bearer jPVeLYbn21lObVbvq110s9HASDvTvOvZ9UVpNPHSswU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvi272uMrlbMAAA3E
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "driver_rating": null,
    "end_time": null,
    "id": "254c9352-d00c-47d6-9b95-1bc84686868a",
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
  "email": "user-576460752303420895@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvikxi5WdQBYAAApE
```
* __Response body:__
```json
{
  "data": {
    "token": "vwcfB9IDkNuq4aKYXBvigxFBL8Kqm_Lle-iXiK73uFg="
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
  "email": "user-576460752303421116@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvijRxhNDkFoAAAmE
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
authorization: Bearer 4Y4KMQgHJhwJzPgpvXjcG3INVcYz5dHAoO4D-qQ80GY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvinLefsHXvsAAAsB
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
x-request-id: Fwedviilihn4aakAAAkE
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
authorization: Bearer DoPca_hhJn6JxR65oofbk-Kz-QAvQsVoiO2DTDsPzMQ=
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
x-request-id: Fwedvi24q1_HMfMAAAzB
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "hlUiYzGYEDh6NNRiPp2vWt5VYWUTlimstF75NDeWYQY="
  }
}
```

#### PUT /settings (change password) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
authorization: Bearer m0kdRV7qLxmcu8IdvZmfQiH9sczEj9JNbm3mI0gMiZw=
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
x-request-id: FwedvjDRLnQPCyIAABED
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
authorization: Bearer CN5XEuNsvAYLgdWOVtZp7KI_bAlVg-ubwH8WHI8LR1Y=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303420317@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvivaJU62PpAAAAyD
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
authorization: Bearer fkQPBbV0wA4nj_xAtTUb7LHlMb-sPYwd0jlZD3Y_orY=
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
x-request-id: FwedvjFwRtsTRZEAABID
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
authorization: Bearer Dev7IHGm1IvYi1AOVOYfb9s5gvrtFA4CjfdW8a2yXb0=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303419677"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvi9WQhTrfvsAAA8D
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
authorization: Bearer IaW8k-oGqJwWcjAIkYapRrjF1K59XAIxKSJPEWw2RC4=
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
x-request-id: Fwedvi7wQLNLOM8AAA6D
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
* __Path:__ /api/confirm_email/swPeP_W8fReFqvxaV1z6X5cF5-lMyjNl7fVyjwvNrxQ
* __Request headers:__
```
authorization: Bearer savtfUPRIK-x41SwSpaU-dKUgF8sGgZvocpJZ-pkANY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedviymkS2JozoAAA6i
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
authorization: Bearer E_s0-zMkSLC35u0HNejyX6QYturLbqW7Ykhn0itDMcs=
accept: application/json
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FwedvjAW14XTBZEAAA_k
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
authorization: Bearer gAeuNizxz4LDu1CaYqBUFQYoQZSljP3PhW_QOHcTX_U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fwedvjkpinu3hk0AABRE
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "b716518b-89f2-4bf6-a43a-9d8e5a211f6a"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/08e0e56f-1003-4d7e-9565-6a141a2f9cba
* __Request headers:__
```
accept: application/json
authorization: Bearer d-U6_D8jb_a3pI_UpgmJazvc3T6J9zkY_aNxYTxmfSg=
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
x-request-id: Fwedvjie2bT9mCAAABPh
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "08e0e56f-1003-4d7e-9565-6a141a2f9cba"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/08e0e56f-1003-4d7e-9565-6a141a2f9cba
* __Request headers:__
```
accept: application/json
authorization: Bearer d-U6_D8jb_a3pI_UpgmJazvc3T6J9zkY_aNxYTxmfSg=
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
x-request-id: FwedvjjEhjr9mCAAABQB
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "08e0e56f-1003-4d7e-9565-6a141a2f9cba"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/87a922b5-dca0-42a0-918b-eb22715c5647
* __Request headers:__
```
accept: application/json
authorization: Bearer avj7nCXS6Ite_WiyfA7Ov_ZEu4OXBsBdyF6V6lqJRRM=
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
x-request-id: FwedvjgzQzi4mrwAABNh
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

