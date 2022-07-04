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
authorization: Bearer CgXbv04aFwB6hxUzMc9IDGV7R7OX4bZ0OskC73Vtygs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qs0yUAzr2psAAAri
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
authorization: Bearer umySvXaFywkdZOHai8XAGMSOGvH17P1hwrNkwHPGwGw=
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
x-request-id: Fv6_Qsyd5fGjhYoAAA0h
```
* __Response body:__
```json
{
  "id": "7a55d8a4-d8e5-4523-87dc-18fcbca65f57",
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
* __Path:__ /api/addresses/7a55d8a4-d8e5-4523-87dc-18fcbca65f57
* __Request headers:__
```
accept: application/json
authorization: Bearer umySvXaFywkdZOHai8XAGMSOGvH17P1hwrNkwHPGwGw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qsy98oCjhYoAAA1B
```
* __Response body:__
```json
{
  "id": "7a55d8a4-d8e5-4523-87dc-18fcbca65f57",
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
* __Path:__ /api/addresses/6c62c13d-b748-4eff-9f5a-3722168f1545
* __Request headers:__
```
accept: application/json
authorization: Bearer 8M_i6TkqDA6ksQ6X6-xeL89YVakmGDqXJGbcV3lm6D8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QswJI7drdSYAAAzB
```
* __Response body:__
```json
{
  "id": "6c62c13d-b748-4eff-9f5a-3722168f1545",
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
  "name": "address-576460752303420830"
}
```

#### create address only the owner can see an address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/6c62c13d-b748-4eff-9f5a-3722168f1545
* __Request headers:__
```
accept: application/json
authorization: Bearer cSXDySpRaGPQRoRK9tEGwWmo3KQ-EPy53M2Hm9CVSDI=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qswn2hVrdSYAAAjD
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
authorization: Bearer tkn6aTRyaz9RkdWYT_Gj0OCQ9EYk0sZ715C-hghnjxw=
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
x-request-id: Fv6_Qs84msL4UwIAAAxi
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
* __Path:__ /api/addresses/caee3e5d-e099-43cf-8675-0878de4f34c5
* __Request headers:__
```
accept: application/json
authorization: Bearer uE9TbPJtURMJD-CVuXz1HdPcWVzjleHwhYP68d-hEws=
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
x-request-id: Fv6_Qsb0xZ_pE5oAAAhE
```
* __Response body:__
```json
{
  "id": "caee3e5d-e099-43cf-8675-0878de4f34c5",
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
* __Path:__ /api/addresses/caee3e5d-e099-43cf-8675-0878de4f34c5
* __Request headers:__
```
accept: application/json
authorization: Bearer uE9TbPJtURMJD-CVuXz1HdPcWVzjleHwhYP68d-hEws=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qsqh4BDpE5oAAApC
```
* __Response body:__
```json
{
  "id": "caee3e5d-e099-43cf-8675-0878de4f34c5",
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
* __Path:__ /api/addresses/66f988af-b975-472e-838e-285d2c83e408
* __Request headers:__
```
accept: application/json
authorization: Bearer cKDCkkWyGvdPX0Uaix-7zALEcBpiVisrsCzhmFklWaY=
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
x-request-id: Fv6_Qs7lm2PKtjsAAAkD
```
* __Response body:__
```json
"Not Found"
```

#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/29e8e0c7-493a-4b52-913e-eda2e130438c
* __Request headers:__
```
accept: application/json
authorization: Bearer MON0AmtlxIYPW82Heuu0pFqGQBFMZNVaCw8DLYsxKN0=
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
x-request-id: Fv6_QsJlVcCncGAAAATk
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
* __Path:__ /api/addresses/92723cdc-aa27-4c5d-9647-8fcb79422515
* __Request headers:__
```
accept: application/json
authorization: Bearer gRw78FqBq_4bpjrYBcok9KlEfvfW-jMBhT2r_8vtT1Q=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qs3T55Lfy3gAAAti
```
* __Response body:__
```json

```

### <a id=turboweb-addresscontroller-show></a>show
#### delete address deletes chosen address

##### Request
* __Method:__ GET
* __Path:__ /api/addresses/92723cdc-aa27-4c5d-9647-8fcb79422515
* __Request headers:__
```
accept: application/json
authorization: Bearer gRw78FqBq_4bpjrYBcok9KlEfvfW-jMBhT2r_8vtT1Q=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qs4BbS_fy3gAAA2B
```
* __Response body:__
```json
"Not Found"
```

### <a id=turboweb-addresscontroller-delete></a>delete
#### delete address only owner can delete address

##### Request
* __Method:__ DELETE
* __Path:__ /api/addresses/b30f769f-cb0e-4307-9dc8-a00c712a6a56
* __Request headers:__
```
accept: application/json
authorization: Bearer FIPcXbnrGxYB-kTJAOgQJH8qDSG49zSX-Xh55k5Wqps=
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QrFQkJdaYc4AAAah
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
    "email": "user-576460752303421150@example.com",
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
x-request-id: Fv6_QsikTQKj-tMAAAli
```
* __Response body:__
```json
{
  "id": "0164e145-2780-4104-ab81-6e75fe0c2751",
  "token": "McM3XkOxuHMsf4U8wenOo23DSAbLLk4R0jYgxb6zDiM="
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
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QsQV6K98R2MAAAWE
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
    "email": "user-576460752303421725@example.com",
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
x-request-id: Fv6_QsdyZjEJ8OUAAAcj
```
* __Response body:__
```json
{
  "id": "9d76e019-6bf7-420b-b76f-45871abffc3b",
  "token": "Kb4jjZWCBQMDJK8_CI4fsth2tzaNNcnId3dEhCSmeQk="
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
    "email": "user-576460752303422172@example.com",
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
x-request-id: Fv6_QsPW6HXVzCkAAAVk
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
    "email": "user-576460752303421342@example.com",
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
x-request-id: Fv6_QsbYHohjUbEAAAii
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
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QrFnsVDS7GkAAAME
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
  "email": "user-576460752303421437@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QsjjQ7EntXgAAArB
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
  "email": "user-576460752303421341@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QsndfC2r5BUAAAvB
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
x-request-id: Fv6_QsiLxGvJz30AAAfD
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
* __Path:__ /api/auth/confirm/rZD-JnRnHYuyFl8qSOA8GrelM8b-nL6Nzf3dDr_wbdI

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QslIc9keEMYAAAsh
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
* __Path:__ /api/auth/confirm/rZD-JnRnHYuyFl8qSOA8GrelM8b-nL6Nzf3dDr_wbdI

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QsmIRdgeEMYAAAth
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
x-request-id: Fv6_QschtX980lcAAApB
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
  "email": "user-576460752303421246@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QseeBZOZbjIAAAik
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
x-request-id: Fv6_Qsip02XiIAUAAAfj
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
* __Path:__ /api/auth/reset_password/j9e-HPTvuGhWcEAynpQOyaeJdeH1OQSJzkDpaCI9hN8
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
x-request-id: Fv6_QsU751VcmAwAAAaE
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
* __Path:__ /api/auth/reset_password/qA619f8zCxtWCIH_-HiB3zH5VBu0g2BKA3hQvZleh9Q
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
x-request-id: Fv6_Qsgv7S-zsgkAAAjk
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
x-request-id: Fv6_QsPMctlrGQQAAAUE
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
  "email": "user-576460752303420511@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QsnfvtIy9sIAAAnC
```
* __Response body:__
```json
{
  "token": "kGZZbAEGth1Z4LwpsYL2h94Smt8Ymn2DRJPXrD337r8="
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
  "email": "user-576460752303421022@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QskZqdD0rE8AAArh
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
authorization: Bearer HmbTK6mJpMUYG1TGPr4s1bFh0gGNdno-FY-UwNdhFP0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_Qsl4t-SkJR8AAAtB
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
x-request-id: Fv6_QsgAB2wyo0UAAAdj
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
authorization: Bearer oackoKFEQCQe1hHPMdgsv2QaUr-AUU57F4wJLAjxdOs=
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
x-request-id: Fv6_QssBGAXtr94AAAyB
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "TcEJhftmr2Mzs17ArFizX4Q7wGcVzXVxXMnXcTn7fKA="
}
```

#### PUT /auth/settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer jPeR88jjQzXdzY0V3XOal0lHda9MHY5n6IQ9BbRkHXA=
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
x-request-id: Fv6_Qsy8iKOr6o4AAAqi
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
authorization: Bearer 5UAGCDienIPiCDYREe0gm5bz-8bbioGPp37T5l6sVaI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303420415@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QspCmaTrZScAAAwh
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
authorization: Bearer zQW0pNn-pDmsbqptX03sbUSohxzyHn78mt0VCd7d4E0=
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
x-request-id: Fv6_Qsxo5vMaJsEAAAoE
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
* __Path:__ /api/auth/confirm_email/5sqino2JfArY6aaM4eh7wM87REwI5_pSMQBH632arEo
* __Request headers:__
```
authorization: Bearer M-WKpeH-YwbmceTwlgpUtTUahFg0C3FY2EAO4vVSR3w=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QscgDSOE6pwAAAhk
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
authorization: Bearer 86hftghGBcKj-AuESYlhFgvb529AC35LlTjfRF4Prxc=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QswYU_KPeT4AAAnk
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
authorization: Bearer LrREXb7NoKcKhbrHdMwck1I-P19JmlpR6d1Ykk4e6sY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QtV-shsFlc0AAA5i
```
* __Response body:__
```json
{
  "credit": 0,
  "id": "cdbe2d44-dd5e-4a19-881b-b6dd144a6a1a"
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
authorization: Bearer eWDVrhAeDwNEyalU-0yeOiSadMT3zQIohgmm2Y-_CV0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash",
  "wallet": "d1c09ebc-5da4-4a0c-9684-e2854b0915d9"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QtXzYgwJH5oAAAtE
```
* __Response body:__
```json
{
  "credit": 42,
  "id": "d1c09ebc-5da4-4a0c-9684-e2854b0915d9"
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallets
* __Request headers:__
```
accept: application/json
authorization: Bearer M0UKG5_KqcGesrSAxk_85OuGtggOd425Jq7RzwzGTD4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "amount": 42,
  "type": "cash",
  "wallet": "c8042e15-0adb-482e-a752-ec121baae8ad"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv6_QtUVWbTQJIQAAA4i
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

