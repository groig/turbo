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
authorization: Bearer 1_YYmNncq2tt-fMViWe-m14xzJukXllQnN65dBYUSnI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cK8JAc6wCZsAAAnD
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
authorization: Bearer j3-U7LdTfrFm10JgUX-U3ypw01YLE4sJMM0xupstu7I=
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
x-request-id: Fv66cK5jX4Ihu58AAArh
```
* __Response body:__
```json
{
  "id": "bf64d137-0ca4-4d2e-8af6-b3492caa8492",
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
* __Path:__ /api/addresses/bf64d137-0ca4-4d2e-8af6-b3492caa8492
* __Request headers:__
```
accept: application/json
authorization: Bearer j3-U7LdTfrFm10JgUX-U3ypw01YLE4sJMM0xupstu7I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cK6yIlEhu58AAAmj
```
* __Response body:__
```json
{
  "id": "bf64d137-0ca4-4d2e-8af6-b3492caa8492",
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
* __Path:__ /api/addresses/0eef4565-9f20-476c-8c75-b34b8c6b7da4
* __Request headers:__
```
accept: application/json
authorization: Bearer gzpkDcCU7UfukP4C3j6xWwhm3DkPqooVMZM3zC8vBaU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cK3T-7UIhWcAAAqh
```
* __Response body:__
```json
{
  "id": "0eef4565-9f20-476c-8c75-b34b8c6b7da4",
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
  "name": "address-576460752303419934"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/0eef4565-9f20-476c-8c75-b34b8c6b7da4
* __Request headers:__
```
accept: application/json
authorization: Bearer QECZKepR-kPJK6xfOoV4TmdRjdcRKzK6EudwMiFBJzg=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cK4KOCUIhWcAAArB
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
authorization: Bearer SygVb72VtL1VVFq3L9bEDIavAWzZRr_2LZmxcYjWTuk=
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
x-request-id: Fv66cItiaRYDZVAAAAUC
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
* __Path:__ /api/addresses/582a39fb-b0f8-47aa-abdb-548784632c07
* __Request headers:__
```
accept: application/json
authorization: Bearer XS_hJV_SAMxncjfGUt2FpfytOlwAm4vgM4aP-5tddYs=
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
x-request-id: Fv66cKT_9OI9xvYAAAfj
```
* __Response body:__
```json
{
  "id": "582a39fb-b0f8-47aa-abdb-548784632c07",
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
* __Path:__ /api/addresses/582a39fb-b0f8-47aa-abdb-548784632c07
* __Request headers:__
```
accept: application/json
authorization: Bearer XS_hJV_SAMxncjfGUt2FpfytOlwAm4vgM4aP-5tddYs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKkSzT89xvYAAAnE
```
* __Response body:__
```json
{
  "id": "582a39fb-b0f8-47aa-abdb-548784632c07",
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
* __Path:__ /api/addresses/8b1a589b-adcf-40e6-a87e-fe82f74f9878
* __Request headers:__
```
accept: application/json
authorization: Bearer PZlRTRGEBiqC635FwVvkrO3qg9Q4qiIwO7SrhAc9brY=
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
x-request-id: Fv66cKrZ5oaIuPAAAA1C
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/b5401acd-0e71-40bc-a684-1b4cd1f25386
* __Request headers:__
```
accept: application/json
authorization: Bearer FsWLtQWcFBYzSNiI9sbwdO73ByDIx3KuTHH8Ru8-WGI=
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
x-request-id: Fv66cKnp6LQzqsQAAApE
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
* __Path:__ /api/addresses/1d60a522-8d02-4c2a-bc46-3955256fb0ad
* __Request headers:__
```
accept: application/json
authorization: Bearer QWTYF9ShLPa4A3AmjU-CHyvcu0TA71Y7VMNFqcAh9aE=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cK_Ab3GrWowAAA7i
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/1d60a522-8d02-4c2a-bc46-3955256fb0ad
* __Request headers:__
```
accept: application/json
authorization: Bearer QWTYF9ShLPa4A3AmjU-CHyvcu0TA71Y7VMNFqcAh9aE=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cLABNZerWowAAA8C
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/60e000ac-7622-48c3-9dc6-70e98e6fddf2
* __Request headers:__
```
accept: application/json
authorization: Bearer B35V2jpTyY38mgah-gZkpdivgAGrU2-KcCyh36JEeEg=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKwSYupFB2wAAA2i
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
    "email": "user-576460752303422172@example.com",
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
x-request-id: Fv66cJAW1RYRgoQAAAVk
```
* __Response body:__
```json
{
  "id": "cbba10ac-dd1b-4acd-9ba5-114daae09bb3",
  "token": "32ZiSVFNDqxPizuNi_Q-0XnmvHFxncP7kaxWq7yOyg0="
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
x-request-id: Fv66cKCaAv9u7w4AAAfC
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
    "email": "user-576460752303421791@example.com",
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
x-request-id: Fv66cKPwkbaZbjIAAAbh
```
* __Response body:__
```json
{
  "id": "80c52202-6bfb-4ad6-8edb-dda2f715febc",
  "token": "zmeXCcJyr8-xepNb6Gq653UA4-X5HSTDNT8cStO75pA="
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
    "email": "user-576460752303421564@example.com",
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
x-request-id: Fv66cKN9Zn2vl8cAAAfE
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
    "email": "user-576460752303421631@example.com",
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
x-request-id: Fv66cKVgVVKaX5UAAAeB
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
x-request-id: Fv66cKVRO9gyo0UAAAch
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
  "email": "user-576460752303421471@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKa0rGDmRcsAAAjE
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
  "email": "user-576460752303420542@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKhamAWMZpAAAAui
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
x-request-id: Fv66cKe23iIy9sIAAAkk
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
* __Path:__ /api/auth/confirm/7zsitIhrDjE0D7Xlr_2MkfQ1B89IIrPp4B3rhXLBuAM

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKjz3GnkbB8AAAxi
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
* __Path:__ /api/auth/confirm/7zsitIhrDjE0D7Xlr_2MkfQ1B89IIrPp4B3rhXLBuAM

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKkshfHkbB8AAAyi
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
x-request-id: Fv66cKiTNsNgLDMAAAwi
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
  "email": "user-576460752303421279@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKjnP1Ay2PQAAAkB
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
x-request-id: Fv66cKqCSgd-8I0AAAnB
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
* __Path:__ /api/auth/reset_password/hmF69ZJcYbpn_9X32ZfMZLoJVL6jvKANzCiipuhucok
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
x-request-id: Fv66cKnp9W-cisgAAAlh
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
* __Path:__ /api/auth/reset_password/7jmuFtVd1Y82lmrm1s6wfwqomIIsfv4pRWWvT1I3RzI
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
x-request-id: Fv66cKs2vfVf3TcAAArk
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
x-request-id: Fv66cKrObIE7ABoAAAlD
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
  "email": "user-576460752303422175@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cJ17CE7-Lr0AAAZk
```
* __Response body:__
```json
{
  "token": "k1AwjYvViuQelLYqL38ZIJeWsVdSe5S6a1K5NYiGz24="
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
  "email": "user-576460752303422239@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cJrxfiFbQdkAAAUB
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
authorization: Bearer JSkgpepzr-U2lHDcG55cF0pGnuE62I3rjPh9wtiuLtA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cJ-0DbcC7rwAAAYD
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
x-request-id: Fv66cJ8nZkf035QAAAWD
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
authorization: Bearer iRLcK5FcHL-85_dfXzVk3UMfI4RppptR_RdiMsoRwjw=
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
x-request-id: Fv66cKcWXRltFTQAAAtC
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "jfLqTUuzwA7YHnOGskxsETD31ky8O3Zq-N7QUzMbY_A="
}
```

#### PUT /auth/settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer l1jOCwzhXza8ssNbSL9og-ezVgVhhU-rhf7uoHYEr1U=
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
x-request-id: Fv66cKB6vNFxon0AAAei
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
authorization: Bearer 26mgjlMgx3Cn8ImIyGM9B9l_1flK5-XMpuIB6zIJBvI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303420990@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKP1AjhM2RIAAAni
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
authorization: Bearer hXa9H0BEugHjzT_Yn0OzpPxAbazO-oEWa62TIYIMtgo=
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
x-request-id: Fv66cKZFr3XBaNsAAArC
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
* __Path:__ /api/auth/confirm_email/OD2aDE5y0Q_lXdvSr9By1hUAKf7gT7xiwW4dhc0vXuE
* __Request headers:__
```
authorization: Bearer NqxEQW4T3js4UDGrs3Xz39ukLWzTN5QtgibIBle5gkY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKVbfovHqVIAAApi
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
authorization: Bearer mq8So3eSgLNSIjdh0_zGTEAGGNCzPOv7fnHQcCRkjBU=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cKgQJU5w4psAAAmE
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
authorization: Bearer 0_Gs1VbHini5txUQSQnm07A1v-EytHsZtU5n32ROyN4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cLMJKecs71MAAAoj
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "ad3f2de5-d6cf-4181-a2cf-9149bfd6f32b"
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallets
* __Request headers:__
```
accept: application/json
authorization: Bearer KBIdRxzHhA7AA7VOnJ1WJ0Rzwcu50mr3jEuGFugzwms=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash",
  "wallet": "2a22e3bd-12a2-4bc5-8609-056b8c3543d8"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cLP7h3mU5VQAAA9i
```
* __Response body:__
```json
{
  "credit": 42,
  "id": "2a22e3bd-12a2-4bc5-8609-056b8c3543d8"
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallets
* __Request headers:__
```
accept: application/json
authorization: Bearer byN6bV3gRd2clLWfGi5a49oaq9yeXs0SOi50-8xVjvs=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash",
  "wallet": "c076d537-55d9-4600-9494-c6e78d8e9568"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv66cLOCJd0_8EwAAAxE
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

