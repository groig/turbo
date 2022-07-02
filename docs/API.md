# API Documentation

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
    "email": "user-576460752303422652@example.com",
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
x-request-id: Fv3Q3L64XGF2HioAAAOE
```
* __Response body:__
```json
{
  "id": "f5116dbd-300c-4f06-8f63-6fd59eb5e5bb",
  "token": "ORMTTLyCePFYgfkEh1tz1KenD4jZry1IQuf2D3i3Nxw="
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
x-request-id: Fv3Q3NO-5fs3LY4AAAXk
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "should be at least 8 character(s)",
      "field": "password"
    },
    {
      "detail": "must have the @ sign and no spaces",
      "field": "email"
    }
  ]
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
    "email": "user-576460752303419582@example.com",
    "license": "driver-license-abc",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NPhd5fduOkAAA-C
```
* __Response body:__
```json
{
  "id": "b99c8fcb-915a-4d6e-bd20-74d51768b970",
  "token": "pqLIHldD8Am3Sg1qj66Ba0VjNr7yx64iVKrVAhm-nAc="
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
    "email": "user-576460752303419519@example.com",
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
x-request-id: Fv3Q3NN5ZRz38zsAAA_B
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "can't be blank",
      "field": "license"
    }
  ]
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
    "email": "user-576460752303422076@example.com",
    "password": "hello world!"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NMu5exNHS8AAAXE
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
x-request-id: Fv3Q3NPONr-5b_QAABAB
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "should be at least 8 character(s)",
      "field": "password"
    },
    {
      "detail": "must have the @ sign and no spaces",
      "field": "email"
    }
  ]
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
  "email": "user-576460752303419230@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NbC2UFZJ20AABDB
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
  "email": "user-576460752303421404@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NeQE_dKS7QAABEi
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
x-request-id: Fv3Q3NZJa4HtbNYAAAdE
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
* __Path:__ /api/auth/confirm/-aYQB5jlfiGundd3siUyOZ34rCX7pg4YrAbGhyLndvQ

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NLaMIk3NIAAAAbj
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
* __Path:__ /api/auth/confirm/-aYQB5jlfiGundd3siUyOZ34rCX7pg4YrAbGhyLndvQ

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NXSo9M3NIAAABAi
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
x-request-id: Fv3Q3Nc0G7yPGjUAAAij
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
  "email": "user-576460752303419198@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NbARBoy9sIAABDi
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
x-request-id: Fv3Q3Nd6LPVqkcQAABEC
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
* __Path:__ /api/auth/reset_password/D0kGJ5XtH0k_ByvziXnNJZbyaOKK8ByTSnzFwBTcfdU
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
x-request-id: Fv3Q3NXM6CcArLoAAAbE
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
* __Path:__ /api/auth/reset_password/qQlS_Ai80n6AezPz74xnMQcXAR33iYepQCpjruA-tYQ
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
x-request-id: Fv3Q3NLRq86V8KcAAA8C
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "should be at least 8 character(s)",
      "field": "password"
    },
    {
      "detail": "does not match password",
      "field": "password_confirmation"
    }
  ]
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
x-request-id: Fv3Q3NclCII2plMAAAfE
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
  "email": "user-576460752303422140@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NE5cyPMDlYAAA7B
```
* __Response body:__
```json
{
  "token": "_b4YPi0kbOlmWNZ0yWL1FgvdCUmSQOXttQxmZwVteKI="
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
  "email": "user-576460752303422332@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NCKMC-V6XgAAA5h
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
authorization: Bearer LhWyplWuIlIhkt9X-krimJ4U0eHnHETX12_3EKCeHPc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3M7dA_TLc90AAA2h
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
x-request-id: Fv3Q3NDwZaHISfcAAA7C
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
authorization: Bearer DekaMWMw99D5PSWzKwkq3_Sg0VNzfn4HDccuIK_Il60=
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
x-request-id: Fv3Q3NHYf2zOkysAAA8B
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "KBc1bGRK4gNgXHmJpkJga16-wov45Mt1tuWeW4jKEtA="
}
```

#### PUT /auth/settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer K6yc7PE9Le-3qK8ORGB1oz752gJhyjkMl7Nw9gEXfZU=
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
x-request-id: Fv3Q3NMrZwPboFEAAA8i
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "is not valid",
      "field": "current_password"
    },
    {
      "detail": "should be at least 8 character(s)",
      "field": "password"
    },
    {
      "detail": "does not match password",
      "field": "password_confirmation"
    }
  ]
}
```

#### PUT /auth/settings (change email form) updates the user email

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer PfQNM6_7E3f-stQdLHOvmKJ13yrhA-fgAF8omRBEWg4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303421692@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NY1W2ZtFTQAAAck
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
authorization: Bearer IIHCtsLICb09I1Wc5Dg3mQJ48-hSMjOWdQjbrfbmQOA=
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
x-request-id: Fv3Q3NdUwOr0FAIAAAgE
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "is not valid",
      "field": "current_password"
    },
    {
      "detail": "must have the @ sign and no spaces",
      "field": "email"
    }
  ]
}
```

### <a id=turboweb-usersettingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/auth/confirm_email/ZEndZv8E1wdqLlX-NAcHFXCcXZ5LnCECvkUphpJgAhw
* __Request headers:__
```
authorization: Bearer vibhJbd6gczrN3P0hq6chra2JezoiYvZJsFIAJWTZrI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NQXrC2cx38AAAeD
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
authorization: Bearer hJjKElq6Vzcos9EDeLEXqKQoFIP3KskzIlVFSQuK-pU=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Q3NOZaGb_MToAAA_h
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

