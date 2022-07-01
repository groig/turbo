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
    "email": "user-576460752303419007@example.com",
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
x-request-id: Fv3Icf_i4pGsj3oAABHB
```
* __Response body:__
```json
{
  "id": "c15ee435-8d86-45fc-9420-1810e6639d2b",
  "token": "MRnn1E1GNdT0rfaGPgEX2NORcbL0uVPg3eqhINKJEjg="
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
x-request-id: Fv3IchPacC6ho78AAAij
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
    "email": "user-576460752303418175@example.com",
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
x-request-id: Fv3IchI5OtnISfcAABUB
```
* __Response body:__
```json
{
  "id": "7576fa38-d676-4ed3-8dd6-ce62aae729fa",
  "token": "_9JQ3vjQtnsAr1JGR4TuJZsOS7dcbLGzCGIM9_cLRbU="
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
    "email": "user-576460752303420798@example.com",
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
x-request-id: Fv3IchONzmazsgkAAArC
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
    "email": "user-576460752303421725@example.com",
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
x-request-id: Fv3IchKdsjKCKyAAAAcj
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
x-request-id: Fv3IchIPT5T6_fEAABSB
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
  "email": "user-576460752303418079@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchKIhkggi1YAAAnC
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
  "email": "user-576460752303421342@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Icg-maVt5fWgAABPB
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
x-request-id: Fv3IchI_LXiUH24AAAmi
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
* __Path:__ /api/auth/confirm/jsYJw26y4ik0FxTuG3Rxepnk305R0YiqjHM8J_eGteE

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchGhGPuO-SMAAAZj
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
* __Path:__ /api/auth/confirm/jsYJw26y4ik0FxTuG3Rxepnk305R0YiqjHM8J_eGteE

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchHj9luO-SMAAAbD
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
x-request-id: Fv3IcgVaQ7bhF4sAAAOk
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
  "email": "user-576460752303420605@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchemugorNeMAABcB
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
x-request-id: Fv3IchYO4eaWt_cAABaB
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
* __Path:__ /api/auth/reset_password/G3EEMOq1_X0D6VJofpFmfinv63WhneC4FOET_WjHXBM
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
x-request-id: Fv3IchcDplEwWW0AAAyi
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
* __Path:__ /api/auth/reset_password/GAKg98juQ93wPRjXTiNm3tru2R4oypXjBjiepoJYW9c
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
x-request-id: Fv3IchaR3RxNmf4AAAZE
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
x-request-id: Fv3IchSUuACfUnEAAAmD
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
  "email": "user-576460752303420893@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchWR9f5dcxUAAApD
```
* __Response body:__
```json
{
  "token": "yfgJBw9Cs99UXQ5AA4c-ssq6uK78tRsIwX04asgjwh8="
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
  "email": "user-576460752303420701@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Ichal2Jbtr94AAAsD
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
authorization: Bearer PUAqlYrVhOG3vHpfABH2SwOIXxmyFopCt3L5pUR8nts=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchYn2rz2ksQAABah
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
x-request-id: Fv3IchSGZIGdntgAAAVE
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
authorization: Bearer 650vrZXwOIqHL7nSuCOyCCX0x67C8qjiCsCvbilZoiU=
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
x-request-id: Fv3Ichg99IoIqoUAAAak
```
* __Response body:__
```json
{
  "message": "Password updated successfully.",
  "token": "lH8dBGMfkLlNEynst9srNZ4WrpJ-uxLwz-w96oZntOE="
}
```

#### PUT /auth/settings (change password form) does not update password on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/auth/settings
* __Request headers:__
```
authorization: Bearer UyzDTXhK07Sl2KslXHo_XSXnJbhEgX_6FIDIKsOTbMA=
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
x-request-id: Fv3IchMnnAMJ8OUAAASk
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
authorization: Bearer dX8mSUfSTz6lJnsoqahMNJgEJ1hqp4ZCTxRckBneFmQ=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303417567@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3Iche0Dp34rVQAABdB
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
authorization: Bearer YR5DuEzHqi1PI63HuXfEmDsxHYQGH_OzQze9aLMxbK8=
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
x-request-id: Fv3IchVOIzb0FAIAAAXE
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
* __Path:__ /api/auth/confirm_email/SKcco53Bd44VyA_7oLI9c424zIe67T0D0XL_NqeQlcc
* __Request headers:__
```
authorization: Bearer YF5ioiQjZn9ODdjpxJm7jf-o_Q4RKMtFyGR0zNbPB3g=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchZPf_rFyWgAAAYk
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
authorization: Bearer XGvu7Z6N5IszlCqmasWj7YiCtaHYXX6Ff2EFD40F1iY=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fv3IchWuVgmbpKIAAAqD
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

