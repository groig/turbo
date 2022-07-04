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
  * [TurboWeb.RegistrationController](#turboweb-registrationcontroller)
    * [create](#turboweb-registrationcontroller-create)
  * [TurboWeb.UserConfirmationController](#turboweb-userconfirmationcontroller)
    * [create](#turboweb-userconfirmationcontroller-create)
    * [update](#turboweb-userconfirmationcontroller-update)
  * [TurboWeb.UserResetPasswordController](#turboweb-userresetpasswordcontroller)
    * [create](#turboweb-userresetpasswordcontroller-create)
    * [update](#turboweb-userresetpasswordcontroller-update)
  * [TurboWeb.UserSessionController](#turboweb-usersessioncontroller)
    * [create](#turboweb-usersessioncontroller-create)
    * [delete](#turboweb-usersessioncontroller-delete)
  * [TurboWeb.UserSettingsController](#turboweb-usersettingscontroller)
    * [update](#turboweb-usersettingscontroller-update)
    * [confirm_email](#turboweb-usersettingscontroller-confirm_email)
  * [TurboWeb.WalletController](#turboweb-walletcontroller)
    * [show](#turboweb-walletcontroller-show)

## TurboWeb.AddressController
### <a id=turboweb-addresscontroller-index></a>index
#### index lists all addresses for a customer

##### Request
* __Method:__ GET
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer gYcABzTDpc00ahi7p30Ke6ktjF78rUED2cgxNsRlkNI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIEBq5j-Lr0AAAQC
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
authorization: Bearer sKKLb7bgZDEGsjj-uTbTitWFaB79W9jsQabAdxQiCag=
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
x-request-id: Fv64fIym1Soy5N8AAAfi
```
* __Response body:__
```json
{
  "id": "cb3b3f2c-f081-4833-8653-224b97229b9a",
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
* __Path:__ /api/addresses/cb3b3f2c-f081-4833-8653-224b97229b9a
* __Request headers:__
```
accept: application/json
authorization: Bearer sKKLb7bgZDEGsjj-uTbTitWFaB79W9jsQabAdxQiCag=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIzSE68y5N8AAAuE
```
* __Response body:__
```json
{
  "id": "cb3b3f2c-f081-4833-8653-224b97229b9a",
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
* __Path:__ /api/addresses/92335b48-ebc4-465e-be5f-6126477a6954
* __Request headers:__
```
accept: application/json
authorization: Bearer lugBM2uii789ep4IsWlxBLjweBTdEi0Q0GCSchwixiI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIp9QZivFmUAAArk
```
* __Response body:__
```json
{
  "id": "92335b48-ebc4-465e-be5f-6126477a6954",
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
  "name": "address-576460752303420764"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/92335b48-ebc4-465e-be5f-6126477a6954
* __Request headers:__
```
accept: application/json
authorization: Bearer Ic1oQDMcORyv1G_A8x6oqHVBO4U0xH2B0KQfgJxViUU=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIqtVyWvFmUAAAsk
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
authorization: Bearer -kNLrnyugS6q3aKMoNg5irekEx3jf6GxDn-73U0YOSY=
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
x-request-id: Fv64fIxNhZJDkFoAAAfC
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
* __Path:__ /api/addresses/7b2fb665-25b6-4f3f-9a9f-3fcc497b9501
* __Request headers:__
```
accept: application/json
authorization: Bearer LaullKUA3fbUwTYqdQXRf7oNDPjV4Ixv9QrZFOCrz2A=
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
x-request-id: Fv64fIIdhHNudXwAAAbj
```
* __Response body:__
```json
{
  "id": "7b2fb665-25b6-4f3f-9a9f-3fcc497b9501",
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
* __Path:__ /api/addresses/7b2fb665-25b6-4f3f-9a9f-3fcc497b9501
* __Request headers:__
```
accept: application/json
authorization: Bearer LaullKUA3fbUwTYqdQXRf7oNDPjV4Ixv9QrZFOCrz2A=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIfBsn9udXwAAAmE
```
* __Response body:__
```json
{
  "id": "7b2fb665-25b6-4f3f-9a9f-3fcc497b9501",
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
* __Path:__ /api/addresses/71f7b171-acbf-4877-8d79-3e43d9ee9abe
* __Request headers:__
```
accept: application/json
authorization: Bearer z4P2suylQ1gngV72aTWvgY4nw3HEPWI0pNCubp93WX4=
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
x-request-id: Fv64fIkt-VykJR8AAAai
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/eebf029a-e29f-4dbb-9d95-08568797f8f1
* __Request headers:__
```
accept: application/json
authorization: Bearer bTgIYSYApz65hTjOMRvOxJ7Zu6PHtfBEPWFBEGXyEDE=
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
x-request-id: Fv64fIvbz23oKsIAAAei
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
* __Path:__ /api/addresses/21ce41fa-7993-43f5-9b21-248367beef62
* __Request headers:__
```
accept: application/json
authorization: Bearer FnutsAxwIxJRkY36E8PGJPcOVxFqIAPeISlPzjjeejw=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fI2wVN5FB2wAAAqj
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/21ce41fa-7993-43f5-9b21-248367beef62
* __Request headers:__
```
accept: application/json
authorization: Bearer FnutsAxwIxJRkY36E8PGJPcOVxFqIAPeISlPzjjeejw=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fI4KsudFB2wAAAgC
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/d3336546-87fb-4a92-a06f-f88920de82c7
* __Request headers:__
```
accept: application/json
authorization: Bearer -hcKxIS72l8CGJfnyqFJD056Hrd12v9N2zMPPZT-luU=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fHJnTZmY1xAAAAOj
```
* __Response body:__
```json
"Not Found"
```

## TurboWeb.RegistrationController
### <a id=turboweb-registrationcontroller-create></a>create
#### POST /auth/register customer creates customer and logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer": {
    "email": "user-576460752303421436@example.com",
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
x-request-id: Fv64fIWduABM2RIAAAhE
```
* __Response body:__
```json
{
  "id": "854643a2-f4d5-4d15-86e3-9bc78b83c99f",
  "token": "C7E_yGPRURRzEr5SOIlyH82EVILnSLDQP6iF5ReoAqU="
}
```

#### POST /auth/register customer render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
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
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIMGt0N_lSYAAAbE
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

#### POST /auth/register driver creates driver and logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303421215@example.com",
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
x-request-id: Fv64fIRKNeTJoe4AAAkh
```
* __Response body:__
```json
{
  "id": "6168f1f3-a34d-4036-8017-45a591dd045b",
  "token": "AMfUUlIdyqQOLrQYl1PIROAP5LpvUqzi-7KNF8NwJdg="
}
```

#### POST /auth/register driver render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver": {
    "email": "user-576460752303421119@example.com",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIVR48tzHbgAAAmB
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

#### POST /auth/register admin creates admin

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "admin": {
    "email": "user-576460752303420831@example.com",
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
x-request-id: Fv64fIZpA9r38zsAAAqh
```
* __Response body:__
```json
{
  "message": "Admin user created successfully "
}
```

#### POST /auth/register admin render errors for invalid data

##### Request
* __Method:__ POST
* __Path:__ /api/auth/register
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
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fHJn47A3F50AAAPD
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

## TurboWeb.UserConfirmationController
### <a id=turboweb-userconfirmationcontroller-create></a>create
#### POST /auth/confirm sends a new confirmation token

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421854@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIktZY31B-YAAAwh
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

#### POST /auth/confirm does not send confirmation token if User is confirmed

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421726@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIpQaxUWDlkAAArE
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

#### POST /auth/confirm does not send confirmation token if email is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm
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
x-request-id: Fv64fIrMjenkbB8AAA0B
```
* __Response body:__
```json
{
  "message": "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."
}
```

### <a id=turboweb-userconfirmationcontroller-update></a>update
#### POST /auth/confirm/:token confirms the given token once

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm/v8bbSv1U8cIX4F7l--wpuoVedgM0drIfvVTqBUdhJkQ

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIsi81RtytkAAAtk
```
* __Response body:__
```json
{
  "message": "User confirmed successfully."
}
```

#### POST /auth/confirm/:token confirms the given token once

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm/v8bbSv1U8cIX4F7l--wpuoVedgM0drIfvVTqBUdhJkQ

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIuNnjltytkAAA1h
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

#### POST /auth/confirm/:token does not confirm email with invalid token

##### Request
* __Method:__ POST
* __Path:__ /api/auth/confirm/oops

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIbZ825Y_RUAAAjj
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

## TurboWeb.UserResetPasswordController
### <a id=turboweb-userresetpasswordcontroller-create></a>create
#### POST /auth/reset_password sends a new reset password token

##### Request
* __Method:__ POST
* __Path:__ /api/auth/reset_password
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303420511@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIjpBYCus5AAAAaC
```
* __Response body:__
```json
{
  "message": "If your email is in our system, you will receive instructions to reset your password shortly."
}
```

#### POST /auth/reset_password does not send reset password token if email is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/auth/reset_password
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
x-request-id: Fv64fIloqyc2plMAAAmD
```
* __Response body:__
```json
{
  "message": "If your email is in our system, you will receive instructions to reset your password shortly."
}
```

### <a id=turboweb-userresetpasswordcontroller-update></a>update
#### PUT /auth/reset_password/:token resets password once

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/reset_password/fZD1Z7SdBBDh8AAMj04to_kF6zPbRZVKhotMgq9-fYM
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
x-request-id: Fv64fIm-AuVxBNAAAAqE
```
* __Response body:__
```json
{
  "message": "Password reset successfully."
}
```

#### PUT /auth/reset_password/:token does not reset password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/reset_password/nP4q6E5kFjXIAOuoOqsjxBTWc_Gzr4LjfamloT-lFO0
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
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIrAHkz6RW8AAAtE
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

#### PUT /auth/reset_password/:token does not reset password with invalid token

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/reset_password/oops

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIbop6bduOkAAAkD
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

## TurboWeb.UserSessionController
### <a id=turboweb-usersessioncontroller-create></a>create
#### POST /auth/log_in logs the user in

##### Request
* __Method:__ POST
* __Path:__ /api/auth/log_in
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303421949@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fH9dOlP2nzgAAAOC
```
* __Response body:__
```json
{
  "token": "1ofjhSUFEnYbiGveY_WGizKuTuc_v2bOAur_FSxOpTA="
}
```

#### POST /auth/log_in emits error message with invalid credentials

##### Request
* __Method:__ POST
* __Path:__ /api/auth/log_in
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "email": "user-576460752303422430@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIEogIxi0PgAAAaj
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

### <a id=turboweb-usersessioncontroller-delete></a>delete
#### DELETE /auth/log_out logs the user out

##### Request
* __Method:__ DELETE
* __Path:__ /api/auth/log_out
* __Request headers:__
```
authorization: Bearer ixEeDqdkmYpIIseJcJq2QQp6VnyCRradfKiT4sf0z7M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIGEBMA9_1wAAAXk
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

#### DELETE /auth/log_out succeeds even if the user is not logged in

##### Request
* __Method:__ DELETE
* __Path:__ /api/auth/log_out

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fHvOvHXRLpsAAAUj
```
* __Response body:__
```json
{
  "message": "Logged out successfully"
}
```

## TurboWeb.UserSettingsController
### <a id=turboweb-usersettingscontroller-update></a>update
#### PUT /auth/settings (change password form) updates the user password and resets tokens

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer kP8ZfC9GlTrIcgHT47Gm7nJ-qoHyLj7eh79VpbSUvTo=
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
x-request-id: Fv64fIepOOAB7ycAAAlk
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "G52hcl6wnhdDYRXMMjgbHARXMVgmbcJGH-muEuqvkhQ="
}
```

#### PUT /auth/settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer YIWUSnodM-_OUONeuldJR4rsx5skOpMqGnIMBBWE0UY=
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
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIseAQGjhYoAAA0h
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

#### PUT /auth/settings (change email form) updates the user email

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer ZlPxI-dj71lE-1Oc5w2s1m4645uOAPMbmYSGulJtZog=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303421343@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIQNF0ijQ4cAAAiB
```
* __Response body:__
```json
{
  "message": "A code to confirm your email change has been sent to the new address."
}
```

#### PUT /auth/settings (change email form) does not update email on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer aELPWCOGLKF2sLZrXlZg1RG2uIAHV_EAcdEz786oD5g=
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
* __Status__: 400
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIc41KdsscoAAAYi
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

### <a id=turboweb-usersettingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/auth/confirm_email/bA9dkPS6Q-0skt0Q_FRk6-HSPkMSaDTsnaOcNPTofjg
* __Request headers:__
```
authorization: Bearer QzJ_7kp4lATjsRmyZeRr5OoiTJdUZeZrY-YHZoYhRZM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIk1_Btotk4AAAbC
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
* __Path:__ /api/auth/confirm_email/oops
* __Request headers:__
```
authorization: Bearer xKVWnIXgq8IM1MVB2-Sx1aUg2uJRux8Rafu2oWa9Vl0=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fIvtVjS5mCoAAA2h
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
* __Path:__ /api/wallets
* __Request headers:__
```
accept: application/json
authorization: Bearer q1d9qx3cam3QBLgiquor9asMAJwRz3P-L5gYWpjVftU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv64fJSClgKXfqsAAAni
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "962a2289-375d-4993-9200-eebba47f892a"
}
```

