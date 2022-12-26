# API Documentation

  * [TurboWeb.RidesChannel](#turboweb-rideschannel)
    * [creating a ride request broadcasts the event to the rides channel](#turboweb-rideschannel-creating-a-ride-request-broadcasts-the-event-to-the-rides-channel)
    * [driver can send chat messages to ride topic](#turboweb-rideschannel-driver-can-send-chat-messages-to-ride-topic)
    * [driver can send  location messages to ride topic](#turboweb-rideschannel-driver-can-send-location-messages-to-ride-topic)
    * [customer can send chat messages to ride topic](#turboweb-rideschannel-customer-can-send-chat-messages-to-ride-topic)
    * [customer can send location messages to ride topic](#turboweb-rideschannel-customer-can-send-location-messages-to-ride-topic)
    * [customer gets a notification when the driver is nearby](#turboweb-rideschannel-customer-gets-a-notification-when-the-driver-is-nearby)
    * [driver gets a notification when the customer is nearby](#turboweb-rideschannel-driver-gets-a-notification-when-the-customer-is-nearby)
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
    * [status](#turboweb-drivercontroller-status)
    * [current_car](#turboweb-drivercontroller-current_car)
  * [TurboWeb.PushCodeController](#turboweb-pushcodecontroller)
    * [create](#turboweb-pushcodecontroller-create)
  * [TurboWeb.RateConfigurationController](#turboweb-rateconfigurationcontroller)
    * [update](#turboweb-rateconfigurationcontroller-update)
    * [show](#turboweb-rateconfigurationcontroller-show)
    * [update](#turboweb-rateconfigurationcontroller-update)
  * [TurboWeb.RateController](#turboweb-ratecontroller)
    * [index](#turboweb-ratecontroller-index)
    * [create_time_rate](#turboweb-ratecontroller-create_time_rate)
    * [show](#turboweb-ratecontroller-show)
    * [create_time_rate](#turboweb-ratecontroller-create_time_rate)
    * [create_area_rate](#turboweb-ratecontroller-create_area_rate)
    * [show](#turboweb-ratecontroller-show)
    * [create_area_rate](#turboweb-ratecontroller-create_area_rate)
    * [update_time_rate](#turboweb-ratecontroller-update_time_rate)
    * [show](#turboweb-ratecontroller-show)
    * [update_time_rate](#turboweb-ratecontroller-update_time_rate)
    * [update_area_rate](#turboweb-ratecontroller-update_area_rate)
    * [show](#turboweb-ratecontroller-show)
    * [update_area_rate](#turboweb-ratecontroller-update_area_rate)
    * [calculate](#turboweb-ratecontroller-calculate)
  * [TurboWeb.RegistrationController](#turboweb-registrationcontroller)
    * [create](#turboweb-registrationcontroller-create)
  * [TurboWeb.ResetPasswordController](#turboweb-resetpasswordcontroller)
    * [create](#turboweb-resetpasswordcontroller-create)
    * [update](#turboweb-resetpasswordcontroller-update)
  * [TurboWeb.RideController](#turboweb-ridecontroller)
    * [index](#turboweb-ridecontroller-index)
    * [show](#turboweb-ridecontroller-show)
    * [update](#turboweb-ridecontroller-update)
  * [TurboWeb.RideRequestController](#turboweb-riderequestcontroller)
    * [create](#turboweb-riderequestcontroller-create)
    * [accept](#turboweb-riderequestcontroller-accept)
  * [TurboWeb.RideReservationController](#turboweb-ridereservationcontroller)
    * [index](#turboweb-ridereservationcontroller-index)
    * [create](#turboweb-ridereservationcontroller-create)
    * [show](#turboweb-ridereservationcontroller-show)
    * [create](#turboweb-ridereservationcontroller-create)
    * [update](#turboweb-ridereservationcontroller-update)
    * [show](#turboweb-ridereservationcontroller-show)
    * [update](#turboweb-ridereservationcontroller-update)
    * [delete](#turboweb-ridereservationcontroller-delete)
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

## TurboWeb.RidesChannel
### <a id=turboweb-rideschannel-creating-a-ride-request-broadcasts-the-event-to-the-rides-channel></a>creating a ride request broadcasts the event to the rides channel
#### Message
* __Topic:__ rides:lobby
* __Event:__ request:created
* __Body:__
```json
{
  "end_location": {
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
  "id": "c5696224-6134-4828-a185-6c844af6972d",
  "start_location": {
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
  "type": "familiar"
}
```
### <a id=turboweb-rideschannel-driver-can-send-chat-messages-to-ride-topic></a>driver can send chat messages to ride topic
#### Message
* __Topic:__ rides:89984580-b07b-4a86-b5ae-9520777ee338
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:89984580-b07b-4a86-b5ae-9520777ee338
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Reply
* __Status:__ ok
* __Body:__
```json
{
  "message": "hello there"
}
```
### <a id=turboweb-rideschannel-driver-can-send-location-messages-to-ride-topic></a>driver can send  location messages to ride topic
#### Message
* __Topic:__ rides:4b9d6082-9bb9-4c80-880d-380119b7c35b
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:4b9d6082-9bb9-4c80-880d-380119b7c35b
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Reply
* __Status:__ ok
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
### <a id=turboweb-rideschannel-customer-can-send-chat-messages-to-ride-topic></a>customer can send chat messages to ride topic
#### Message
* __Topic:__ rides:a633d0c6-6ef0-4628-bd37-e74a9ac2b3b5
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:a633d0c6-6ef0-4628-bd37-e74a9ac2b3b5
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Reply
* __Status:__ ok
* __Body:__
```json
{
  "message": "hello there"
}
```
### <a id=turboweb-rideschannel-customer-can-send-location-messages-to-ride-topic></a>customer can send location messages to ride topic
#### Message
* __Topic:__ rides:c60a7791-8079-4e15-8cbd-ae302f035b40
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:c60a7791-8079-4e15-8cbd-ae302f035b40
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Reply
* __Status:__ ok
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
### <a id=turboweb-rideschannel-customer-gets-a-notification-when-the-driver-is-nearby></a>customer gets a notification when the driver is nearby
#### Message
* __Topic:__ rides:8425ab75-2c1f-4523-ae6d-501ba4c3d4b0
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": {
    "coordinates": [
      -82.39758338420903,
      23.140209916284533
    ],
    "type": "Point"
  }
}
```
#### Message
* __Topic:__ rides:8425ab75-2c1f-4523-ae6d-501ba4c3d4b0
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:8425ab75-2c1f-4523-ae6d-501ba4c3d4b0
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": {
    "coordinates": [
      -82.39758338420903,
      23.140209916284533
    ],
    "type": "Point"
  }
}
```
### <a id=turboweb-rideschannel-driver-gets-a-notification-when-the-customer-is-nearby></a>driver gets a notification when the customer is nearby
#### Message
* __Topic:__ rides:0c8698a1-d65a-4092-a882-21204e4baf04
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": {
    "coordinates": [
      -82.39689017625378,
      23.14074368077616
    ],
    "type": "Point"
  }
}
```
#### Message
* __Topic:__ rides:0c8698a1-d65a-4092-a882-21204e4baf04
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:0c8698a1-d65a-4092-a882-21204e4baf04
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": {
    "coordinates": [
      -82.39758338420903,
      23.140209916284533
    ],
    "type": "Point"
  }
}
```
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
authorization: Bearer lxrbdeh1_hsq0Iwbi_cOA2vFjEAD3sionYWLHZ-lSII=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACfMpHRGMqYAABxB
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
authorization: Bearer 6QscVuSZT-ZB94m0Ay2Czdcw8Yp3bxk2aWrSDbSeaCI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "location": {
    "coordinates": [
      -82.398,
      23.137
    ],
    "type": "Point"
  },
  "name": "some address",
  "reverse_geocoding": "some string address"
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAChhbmWFC8gAAByh
```
* __Response body:__
```json
{
  "data": {
    "id": "dbde819e-4667-4cf7-b4d8-c0e311ce85db",
    "location": {
      "coordinates": [
        -82.398,
        23.137
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
* __Path:__ /api/addresses/dbde819e-4667-4cf7-b4d8-c0e311ce85db
* __Request headers:__
```
accept: application/json
authorization: Bearer 6QscVuSZT-ZB94m0Ay2Czdcw8Yp3bxk2aWrSDbSeaCI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACi7aOCFC8gAABzB
```
* __Response body:__
```json
{
  "data": {
    "id": "dbde819e-4667-4cf7-b4d8-c0e311ce85db",
    "location": {
      "coordinates": [
        -82.398,
        23.137
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
* __Path:__ /api/addresses/6c8f5b34-2b30-4da1-b2a5-bba7654ecb47
* __Request headers:__
```
accept: application/json
authorization: Bearer QvQn4C0MugtAWLPDBsw0_tzzYCjcdFaWVmNhH6cWT-g=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACcdJ7GvRCUAABmj
```
* __Response body:__
```json
{
  "data": {
    "id": "6c8f5b34-2b30-4da1-b2a5-bba7654ecb47",
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
    "name": "address-576460752303416543"
  }
}
```

### <a id=turboweb-addresscontroller-create></a>create
#### create address renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/addresses
* __Request headers:__
```
accept: application/json
authorization: Bearer eFSv4auGlvI2aVXJxsIi1s3vLezxMyQ09FPB5n-MhYw=
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
x-request-id: FzQwACIbE3SGT3MAABXD
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
* __Path:__ /api/addresses/8f7e49cc-f54a-4ea9-9d57-fbc84720c3f9
* __Request headers:__
```
accept: application/json
authorization: Bearer bRFxkTJRWgG0YNkSCuJAzyVkUWoX7iD1KDe-bQLazl8=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "address": {
    "location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "name": "New Name",
    "reverse_geocoding": "a new string address"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACsgUuL4-AYAABwE
```
* __Response body:__
```json
{
  "data": {
    "id": "8f7e49cc-f54a-4ea9-9d57-fbc84720c3f9",
    "location": {
      "coordinates": [
        -82.398,
        23.137
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
* __Path:__ /api/addresses/8f7e49cc-f54a-4ea9-9d57-fbc84720c3f9
* __Request headers:__
```
accept: application/json
authorization: Bearer bRFxkTJRWgG0YNkSCuJAzyVkUWoX7iD1KDe-bQLazl8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACupivz4-AYAAB9B
```
* __Response body:__
```json
{
  "data": {
    "id": "8f7e49cc-f54a-4ea9-9d57-fbc84720c3f9",
    "location": {
      "coordinates": [
        -82.398,
        23.137
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
#### update address renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/addresses/54ec4a52-5096-4ba3-838b-1ee497650f95
* __Request headers:__
```
accept: application/json
authorization: Bearer kDsrvahEoNPmRnt-4npt0qx-LUh64YtkiIenRI43gXg=
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
x-request-id: FzQwACCVt0HpQcoAABFi
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
* __Path:__ /api/addresses/38423831-0f7e-4dfe-b6af-e3697e81ab63
* __Request headers:__
```
accept: application/json
authorization: Bearer 5ozCncm0dFirTFikDkO2rPYvBBwYztmEdB0fqMKx0Tg=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACmnufB3qQgAABqE
```
* __Response body:__
```json

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
authorization: Bearer zRMQf_EaCjJVXeFXWvuBYw7oNWwb_NJ7Lzi0uh7QFVs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACBBP5JzIDUAABVD
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "48d5537b-f6a6-4955-a302-8cfe871cc6ec",
      "license_plate": "license--576460752303418077",
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
authorization: Bearer WlYb1zZ-MhZiLFeN1cnU2aNxIxwyBGiwIDABPSIoMX0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303417564",
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
x-request-id: FzQwACda6ql5uE0AABdE
location: /api/cars/9898e496-156d-4dde-8e9d-b18af5c97f5a
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "9898e496-156d-4dde-8e9d-b18af5c97f5a",
    "license_plate": "license--576460752303417564",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/9898e496-156d-4dde-8e9d-b18af5c97f5a
* __Request headers:__
```
accept: application/json
authorization: Bearer WlYb1zZ-MhZiLFeN1cnU2aNxIxwyBGiwIDABPSIoMX0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACegJ355uE0AABpj
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "9898e496-156d-4dde-8e9d-b18af5c97f5a",
    "license_plate": "license--576460752303417564",
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
authorization: Bearer LpBhjtNghFPA-nvr-1-d2iJ26Juf-4S6p832vjKShd4=
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
x-request-id: FzQwAAL-WExXM8wAABHh
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
* __Path:__ /api/cars/a1e81813-5a24-4bf5-9bf7-1fca85bbb8ba
* __Request headers:__
```
accept: application/json
authorization: Bearer k6jg52cvYZCgtiggpgkq94XkYiz1TInboLliUHt7G2c=
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
x-request-id: FzQwAB4eq3RXJmMAABCD
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "a1e81813-5a24-4bf5-9bf7-1fca85bbb8ba",
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
* __Path:__ /api/cars/b859e5c3-bbe3-45ca-8b88-d2055f6de807
* __Request headers:__
```
accept: application/json
authorization: Bearer 42WMXobY0Vr8eKyS77qPxmRqfPDEyWda2U0DlvPjKM0=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACUiDS30lccAABgj
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
  "email": "user-576460752303419518@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABzmFjPzcsMAABSk
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
  "email": "user-576460752303421149@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAAMUqLtf3TcAABJB
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
x-request-id: FzQwABXvoM3rfvsAABHE
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
* __Path:__ /api/confirm/bXS3z0Sj3tg4gDoU0qfMC0HUdifgieqtReZrVBBawao
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
x-request-id: FzQwABc5CCDXU6wAAA6i
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
* __Path:__ /api/confirm/bXS3z0Sj3tg4gDoU0qfMC0HUdifgieqtReZrVBBawao
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
x-request-id: FzQwABeHDSjXU6wAABOk
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
x-request-id: FzQwABZeIxTtvbMAABbB
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
authorization: Bearer VmDLWdqTKLQlYOciDF3YD_827v8_1rkjjrJUGRapu0I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAAL_CIXKGrYAABIh
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
* __Path:__ /api/customers/8e45e2ea-9d87-476f-8d87-22acf8c41344
* __Request headers:__
```
accept: application/json
authorization: Bearer tZyXgXxjqAECYQ4_cDoKDMVXqrnRU7zNFoLKaHRaC6I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABpNM5MPCyIAAAzj
```
* __Response body:__
```json
{
  "data": {
    "id": "8e45e2ea-9d87-476f-8d87-22acf8c41344"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/9f890a20-6004-438d-9827-358555f322e9
* __Request headers:__
```
accept: application/json
authorization: Bearer tZyXgXxjqAECYQ4_cDoKDMVXqrnRU7zNFoLKaHRaC6I=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABqLEdEPCyIAAA1j
```
* __Response body:__
```json
{
  "data": {
    "id": "9f890a20-6004-438d-9827-358555f322e9"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d4e7ed52-9b58-4511-b435-048bc27d79b7
* __Request headers:__
```
accept: application/json
authorization: Bearer tecLAHO9rNWWjpIDFcsV6Gz85dgRcyn0Efgrf9aCLKk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABjYm-nzYLIAAA7C
```
* __Response body:__
```json
{
  "data": {
    "id": "d4e7ed52-9b58-4511-b435-048bc27d79b7"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/531fcae0-e72c-40c8-97b3-0d7f383aad1c
* __Request headers:__
```
accept: application/json
authorization: Bearer tecLAHO9rNWWjpIDFcsV6Gz85dgRcyn0Efgrf9aCLKk=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABkj3PDzYLIAAA7i
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
authorization: Bearer ESmnQa2ZQ_496FH_kpWPAUbV3oSvImSL0oJX1mzh99k=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACsOMwzB-ogAAB5D
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303416285@example.com",
      "id": "c8c3681d-90df-4f3b-ada8-3f6e71225df9",
      "name": "user-576460752303416317",
      "phone": "7236"
    },
    {
      "credit": 0,
      "email": "user-576460752303416476@example.com",
      "id": "a93aa357-d2c0-4462-a044-c8f2277a298b",
      "name": "user-576460752303416508",
      "phone": "7045"
    },
    {
      "credit": 0,
      "email": "user-576460752303415901@example.com",
      "id": "1aa6991f-fc08-4648-9f8f-4219f369347e",
      "name": "user-576460752303415933",
      "phone": "7620"
    }
  ]
}
```

#### index list only id, location and car_type when user is customer

##### Request
* __Method:__ GET
* __Path:__ /api/drivers
* __Request headers:__
```
accept: application/json
authorization: Bearer me35p_T6X3HSy0EUXx3tufieLcnRz_ilH0m3Tpa9HEI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACBmDl5UTbgAABDC
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "59db9df2-54bf-471a-a1c9-3bfaeabc2b7b",
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
authorization: Bearer k0AttaP_wZ2pks9HkfdebhCkXctEPZMVzauYcMajuCo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADCQRjF5itgAACQB
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303415804@example.com",
      "id": "955c8ac3-bce5-4503-b00a-9cf95bcdabbd",
      "name": "user-576460752303415836",
      "phone": "7717"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/d6ff21d0-f62f-4fad-a3c2-fd4c93847e82
* __Request headers:__
```
accept: application/json
authorization: Bearer CawsbYF6g0HXwNLKA1e99PpM8M52lddJFE8FqZpqCrQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADGn8OVjcDAAACVh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303417790@example.com",
    "id": "d6ff21d0-f62f-4fad-a3c2-fd4c93847e82",
    "name": "user-576460752303417822",
    "phone": "5731"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/89bc845f-51be-44bc-be61-ebfdd5e5e4fc
* __Request headers:__
```
accept: application/json
authorization: Bearer CawsbYF6g0HXwNLKA1e99PpM8M52lddJFE8FqZpqCrQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADH5eWhjcDAAACWB
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303414143@example.com",
    "id": "89bc845f-51be-44bc-be61-ebfdd5e5e4fc",
    "name": "user-576460752303414175",
    "phone": "9378"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/bbb83b00-7c9d-4c08-91fa-d22fad61013c
* __Request headers:__
```
accept: application/json
authorization: Bearer tWAWexctfET3CEqUuZrP3YSXxwkH81mouoS26muFJIA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACy6TiqoHoQAAB_D
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303415327@example.com",
    "id": "bbb83b00-7c9d-4c08-91fa-d22fad61013c",
    "name": "user-576460752303415359",
    "phone": "8194"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/ae3f78bc-a357-42cd-8acf-31f1771649a8
* __Request headers:__
```
accept: application/json
authorization: Bearer tWAWexctfET3CEqUuZrP3YSXxwkH81mouoS26muFJIA=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAC1HX3moHoQAACHh
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
authorization: Bearer HNb7yWJB08AXGNGtQaxCxiNTyjv5w0TlLsXby1Ome4U=
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
x-request-id: FzQwAChQPPO-0ZwAABkk
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
authorization: Bearer Doh9o8brr4kdjeyuulyHJAqOb2b5p3nFysE09b3gwWk=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303417310"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADQJFi5KPT0AABhC
```
* __Response body:__
```json
{
  "message": "Driver license updated successfully"
}
```

### <a id=turboweb-drivercontroller-status></a>status
#### updates drivers status

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/status
* __Request headers:__
```
accept: application/json
authorization: Bearer hjadUHxu_9jxNFCMgocX0aHjeXbLV_WzGjUXHs3g1-Y=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "status": "available"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAAyUN9wMpr4AABCE
```
* __Response body:__
```json
{
  "message": "Driver status updated successfully"
}
```

#### updates drivers status

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/status
* __Request headers:__
```
accept: application/json
authorization: Bearer hjadUHxu_9jxNFCMgocX0aHjeXbLV_WzGjUXHs3g1-Y=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "status": "unavailable"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABl3RywMpr4AAAxD
```
* __Response body:__
```json
{
  "message": "Driver status updated successfully"
}
```

#### updates drivers status

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/status
* __Request headers:__
```
accept: application/json
authorization: Bearer hjadUHxu_9jxNFCMgocX0aHjeXbLV_WzGjUXHs3g1-Y=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "status": "on_ride"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABm7rj8Mpr4AAAzD
```
* __Response body:__
```json
{
  "message": "Driver status updated successfully"
}
```

#### cant change driver status if there is no current car

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/status
* __Request headers:__
```
accept: application/json
authorization: Bearer tsBArOGAZBujWHTVe6jr4BL7q1mUQz3BEgDv0vYPYi4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "status": "available"
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACegwDGTHqkAABwh
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "The driver must select a car first"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-current_car></a>current_car
#### updates drivers current car

##### Request
* __Method:__ PUT
* __Path:__ /api/drivers/current_car
* __Request headers:__
```
accept: application/json
authorization: Bearer M_71SRTYaB8q3RJ4G1RL-1HY4FULxt0zp56enCzFZqk=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "e047844d-e099-4344-84f3-985cc82e56b1"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADMxjdQ_WsIAABgC
```
* __Response body:__
```json
{
  "message": "Current car updated successfully"
}
```

## TurboWeb.PushCodeController
### <a id=turboweb-pushcodecontroller-create></a>create
#### create push_code renders push_code when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/notifications/push_codes
* __Request headers:__
```
authorization: Bearer Zsu_i6vbfPYXY4-RO9VfRSQAz98vHWA3kV7uZOZh6Hs=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "push_code": {
    "code": "some code"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFSy-K_7rTkAADkB
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "05925325-893a-485a-afd6-074357188ec1"
  }
}
```

## TurboWeb.RateConfigurationController
### <a id=turboweb-rateconfigurationcontroller-update></a>update
#### update rate_configuration renders rate_configuration when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer Qjf1Jfnb5IzE6alyy05EAiHF-BKukpB-b1XfqxsDD68=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate_configuration": {
    "min_rate": 43
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFQq1Ri8M-gAACcC
```
* __Response body:__
```json
{
  "data": {
    "id": "b6b043cb-ead8-4da5-98cc-19adbfdc4bf2",
    "min_rate": 43
  }
}
```

### <a id=turboweb-rateconfigurationcontroller-show></a>show
#### update rate_configuration renders rate_configuration when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer Qjf1Jfnb5IzE6alyy05EAiHF-BKukpB-b1XfqxsDD68=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFREV-K8M-gAACci
```
* __Response body:__
```json
{
  "data": {
    "id": "b6b043cb-ead8-4da5-98cc-19adbfdc4bf2",
    "min_rate": 43
  }
}
```

### <a id=turboweb-rateconfigurationcontroller-update></a>update
#### update rate_configuration renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates_configuration
* __Request headers:__
```
authorization: Bearer HfqJqMPBZF6f6Zi5AbAcby7_BSJwyg7dFu15tNetQk4=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate_configuration": {
    "min_rate": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFPvWFpFcNwAADgB
```
* __Response body:__
```json
{
  "errors": {
    "min_rate": [
      "can't be blank"
    ]
  }
}
```

## TurboWeb.RateController
### <a id=turboweb-ratecontroller-index></a>index
#### index lists all rates

##### Request
* __Method:__ GET
* __Path:__ /api/rates
* __Request headers:__
```
authorization: Bearer K4Rn-AyTseQAolzQDFGwZlSAVORtR0PksVIIelNwJJo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE6ftmAkKYcAADQB
```
* __Response body:__
```json
{
  "data": []
}
```

#### index lists all rates

##### Request
* __Method:__ GET
* __Path:__ /api/rates
* __Request headers:__
```
authorization: Bearer K4Rn-AyTseQAolzQDFGwZlSAVORtR0PksVIIelNwJJo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE6_688kKYcAADRB
```
* __Response body:__
```json
{
  "data": [
    {
      "area": null,
      "description": "some description",
      "end": "21:34:00",
      "fixed_rate_comfort": null,
      "fixed_rate_familiar": null,
      "fixed_rate_standard": null,
      "id": "7e703ef0-464e-4cb8-aeb5-2137266a5315",
      "name": "some name",
      "rate_per_km_comfort": 42,
      "rate_per_km_familiar": 42,
      "rate_per_km_standard": 42,
      "start": "20:34:00",
      "type": "time"
    }
  ]
}
```

### <a id=turboweb-ratecontroller-create_time_rate></a>create_time_rate
#### create time rate renders rate when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_time_rate
* __Request headers:__
```
authorization: Bearer KfV3rhLntdpaQD5PzR7w_9Ufc7G_XJic3dnbBYZqopk=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "description": "some description",
    "end": "21:34:00",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE2_x5DV79MAADOB
location: /api/rates/d0f9be01-3c17-492c-8439-50855ef0c80a
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "d0f9be01-3c17-492c-8439-50855ef0c80a",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### create time rate renders rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/d0f9be01-3c17-492c-8439-50855ef0c80a
* __Request headers:__
```
authorization: Bearer KfV3rhLntdpaQD5PzR7w_9Ufc7G_XJic3dnbBYZqopk=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE3akXzV79MAAC3j
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "d0f9be01-3c17-492c-8439-50855ef0c80a",
    "name": "some name",
    "rate_per_km_comfort": 43,
    "rate_per_km_familiar": 44,
    "rate_per_km_standard": 42,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-create_time_rate></a>create_time_rate
#### create time rate renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_time_rate
* __Request headers:__
```
authorization: Bearer Vk1SP7NkBetbYdvXiXd809CkwNiKNWuV9727h3AohdA=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE74C8TpNAIAACNC
```
* __Response body:__
```json
{
  "errors": {
    "end": [
      "End time can't be lower than start time"
    ],
    "name": [
      "can't be blank"
    ],
    "rate_per_km_comfort": [
      "can't be blank"
    ],
    "rate_per_km_familiar": [
      "can't be blank"
    ],
    "rate_per_km_standard": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-create_area_rate></a>create_area_rate
#### create area rate renders rate when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_area_rate
* __Request headers:__
```
authorization: Bearer Exx6HOeFM3oxorNTr8fGlM8ITpdInZHwtUmSBDPjCfA=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some description",
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "name": "some name"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEwceJAQbJQAADJh
location: /api/rates/4a2f74a7-a7cf-4dd9-bd04-a2a19756c6b8
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some description",
    "end": null,
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "id": "4a2f74a7-a7cf-4dd9-bd04-a2a19756c6b8",
    "name": "some name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### create area rate renders rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/4a2f74a7-a7cf-4dd9-bd04-a2a19756c6b8
* __Request headers:__
```
authorization: Bearer Exx6HOeFM3oxorNTr8fGlM8ITpdInZHwtUmSBDPjCfA=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAExSBBIQbJQAADKB
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            100.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            100.0,
            0.0
          ]
        ]
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Polygon"
    },
    "description": "some description",
    "end": null,
    "fixed_rate_comfort": 43,
    "fixed_rate_familiar": 44,
    "fixed_rate_standard": 42,
    "id": "4a2f74a7-a7cf-4dd9-bd04-a2a19756c6b8",
    "name": "some name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-create_area_rate></a>create_area_rate
#### create area rate renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rates/create_area_rate
* __Request headers:__
```
authorization: Bearer 8yUypadYlyH7IGD7TZ7q7Q9NMuQmHBINePu0t7D7QjU=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE9zcqGHABAAAC6D
```
* __Response body:__
```json
{
  "errors": {
    "area": [
      "can't be blank"
    ],
    "fixed_rate_comfort": [
      "can't be blank"
    ],
    "fixed_rate_familiar": [
      "can't be blank"
    ],
    "fixed_rate_standard": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-update_time_rate></a>update_time_rate
#### update time rate renders time rate when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_time_rate/5c506f16-4a84-4997-bcf2-fe5dd50ed5de
* __Request headers:__
```
authorization: Bearer iTDrF4eWxzFAn6NLehXjmmcHloE26UQLZX3IvbNt5sc=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "description": "some updated description",
    "end": "21:34:00",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE-vQLduxgoAACQi
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "5c506f16-4a84-4997-bcf2-fe5dd50ed5de",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### update time rate renders time rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/5c506f16-4a84-4997-bcf2-fe5dd50ed5de
* __Request headers:__
```
authorization: Bearer iTDrF4eWxzFAn6NLehXjmmcHloE26UQLZX3IvbNt5sc=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE_NNcNuxgoAACRC
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_comfort": null,
    "fixed_rate_familiar": null,
    "fixed_rate_standard": null,
    "id": "5c506f16-4a84-4997-bcf2-fe5dd50ed5de",
    "name": "some updated name",
    "rate_per_km_comfort": 44,
    "rate_per_km_familiar": 45,
    "rate_per_km_standard": 43,
    "start": "20:34:00",
    "type": "time"
  }
}
```

### <a id=turboweb-ratecontroller-update_time_rate></a>update_time_rate
#### update time rate renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_time_rate/3381f8a5-1b76-48d9-9ef3-8055cad46692
* __Request headers:__
```
authorization: Bearer MVK3Cx4r3vDcv_NL-gt29BO9iuUW_eXjBdA8bq6qYQ8=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE83HovcBM8AAC5j
```
* __Response body:__
```json
{
  "errors": {
    "end": [
      "End time can't be lower than start time"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-update_area_rate></a>update_area_rate
#### update area rate renders area rate when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_area_rate/b4c399d8-25b0-4083-96ce-73345a148e54
* __Request headers:__
```
authorization: Bearer JoGBgwNlUOrp8nsnkySaONYGAVyHQ2AcAqZ44v5Gdq0=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some updated description",
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "name": "some updated name"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE1guQQX9DQAADMB
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "type": "Polygon"
    },
    "description": "some updated description",
    "end": null,
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "id": "b4c399d8-25b0-4083-96ce-73345a148e54",
    "name": "some updated name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-show></a>show
#### update area rate renders area rate when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/rates/b4c399d8-25b0-4083-96ce-73345a148e54
* __Request headers:__
```
authorization: Bearer JoGBgwNlUOrp8nsnkySaONYGAVyHQ2AcAqZ44v5Gdq0=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE2Ec14X9DQAAC3D
```
* __Response body:__
```json
{
  "data": {
    "area": {
      "coordinates": [
        [
          [
            101.0,
            0.0
          ],
          [
            101.0,
            0.0
          ],
          [
            101.0,
            1.0
          ],
          [
            100.0,
            1.0
          ],
          [
            101.0,
            0.0
          ]
        ]
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Polygon"
    },
    "description": "some updated description",
    "end": null,
    "fixed_rate_comfort": 44,
    "fixed_rate_familiar": 45,
    "fixed_rate_standard": 43,
    "id": "b4c399d8-25b0-4083-96ce-73345a148e54",
    "name": "some updated name",
    "rate_per_km_comfort": null,
    "rate_per_km_familiar": null,
    "rate_per_km_standard": null,
    "start": null,
    "type": "area"
  }
}
```

### <a id=turboweb-ratecontroller-update_area_rate></a>update_area_rate
#### update area rate renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/rates/update_area_rate/edb905b4-dec7-453b-8f63-eee95c913e35
* __Request headers:__
```
authorization: Bearer Qu6bqLYyKk5rqScCorb9R-OnBelFufNtOOj8PDL-tjc=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "rate": {
    "area": null,
    "description": null,
    "end": "20:00:00",
    "name": null,
    "rate_per_km": null,
    "start": "21:00:00"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFChQG9Z2PwAACTC
```
* __Response body:__
```json
{
  "errors": {
    "area": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ratecontroller-calculate></a>calculate
#### rate calculation get_rate_for_ride/4 returns the correct rate by distance

##### Request
* __Method:__ POST
* __Path:__ /api/rates/calculate
* __Request headers:__
```
authorization: Bearer o_34dZ9E0i9-6kODheHox1VJl2t6M8FPzBU95QW9zz0=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "car_type": "standard",
  "destination": {
    "coordinates": [
      -82.4,
      23.129
    ],
    "type": "Point"
  },
  "distance": 1,
  "start_time": "09:25:00"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEzTMJ72fxsAAC1D
```
* __Response body:__
```json
{
  "data": {
    "price": 250
  }
}
```

#### rate calculation get_rate_for_ride/4 when the ride starts at the rate edge

##### Request
* __Method:__ POST
* __Path:__ /api/rates/calculate
* __Request headers:__
```
authorization: Bearer KtcCLVRgC_16hNU7U2fZdAEGRhYOiTlk-noRfplNdek=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "car_type": "standard",
  "destination": {
    "coordinates": [
      -82.4,
      23.129
    ],
    "type": "Point"
  },
  "distance": 1,
  "start_time": "08:00:00"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAFBE2N13_MoAAC8D
```
* __Response body:__
```json
{
  "data": {
    "price": 250
  }
}
```

#### rate calculation get_rate_for_ride/4 returns the correct rate by destination area

##### Request
* __Method:__ POST
* __Path:__ /api/rates/calculate
* __Request headers:__
```
authorization: Bearer zfGRb6q_8u7RKbvN1R5RGSzh1ECgYA8FwbgUP8S3q3Q=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "car_type": "standard",
  "destination": {
    "coordinates": [
      -82.398,
      23.137
    ],
    "type": "Point"
  },
  "distance": 1,
  "start_time": "09:25:00"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAE426kGyqccAACLC
```
* __Response body:__
```json
{
  "data": {
    "price": 10
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
    "email": "user-576460752303419773@example.com",
    "name": "user-576460752303419741",
    "password": "hello world!",
    "phone": "3812"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAB1CBmjxDYQAAA8D
```
* __Response body:__
```json
{
  "data": {
    "id": "23a2aec0-65bb-46ed-b8c2-3555e4f15a2e",
    "token": "T2RwOdfvIVTtg_WkSeHIvAQZXAeSrZzU0vkzWp1IzUs="
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
x-request-id: FzQwAB6O-duWUsgAABhB
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
    "email": "user-576460752303420029@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303419997",
    "password": "hello world!",
    "phone": "3556"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABwp1jOmR3gAAA4D
```
* __Response body:__
```json
{
  "data": {
    "id": "939abed2-99ff-4c12-9a22-24e1b3021da0",
    "token": "VnE956Zcm6W8befeIZsCtZDWgzwJ61I-U8Ktb9N858Y="
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
    "email": "user-576460752303418172@example.com",
    "name": "user-576460752303418140",
    "password": "hello world!",
    "phone": "5413"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwABz7_QGmzx4AABVE
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
    "email": "user-576460752303419197@example.com",
    "name": "user-576460752303419165",
    "password": "hello world!",
    "phone": "4388"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAB42i-XJPC0AABFD
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
x-request-id: FzQwAB4jWn38Pa0AABCj
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
  "email": "user-576460752303417980@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAB2A-Ev6uEoAAA9j
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
x-request-id: FzQwABPm2DBpa9gAABGE
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
* __Path:__ /api/reset_password/Ju798ACWq0le5S8SVNGPVw_pnWlxKwlOmbXp3ENoP1w
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
x-request-id: FzQwABat7jKTFmwAABLE
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
* __Path:__ /api/reset_password/yRafAEwgKKbJ7oojplxEBM3u6D38Qpbw7aH8hkljNWI
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
x-request-id: FzQwABgEwiuQtfUAABPk
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
x-request-id: FzQwABez7h5wUnsAABPE
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
authorization: Bearer ruPYE5E2FeSvNSlFAyKrJVMDscBfjdobSkdFXzvNVxU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACoRyf-xT_kAABzD
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "e988ef31-dee6-4e59-b4f9-b9f576a41001",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "20cb6b69-c4b4-428e-af15-7df895666daf",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "f5fa5f97-ef65-479d-8ea6-fd23ce4af46b",
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
authorization: Bearer ysW73TRf6F7vWifp7p2xAlg-BZUDyOfNHOnMj1DXeWo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADbGSMyFLGsAACdE
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "c8b7b354-952b-4665-bd9a-ba962ea4a937",
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
authorization: Bearer RqBI3qGY6U0B3Jcvh1HMoQ0gSY-x00BglwR7n-mY_Gs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADna1rwYHOIAABkC
```
* __Response body:__
```json
{
  "data": [
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "3d0f426c-6795-49ac-bcfd-7901c2458402",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "96ffb9d1-b71c-47aa-a08f-481327589536",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/0b2ebaeb-14f8-4974-ab2e-ca0994d6e2dd
* __Request headers:__
```
accept: application/json
authorization: Bearer p9LWqBf6ZmSaQPs-R_E9nR7-xYBuHO8WxkKYTS8wNSA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADSgXJVLV-AAACLj
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "0b2ebaeb-14f8-4974-ab2e-ca0994d6e2dd",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/9e98073e-1d49-4741-8b01-1dcd41dab53a
* __Request headers:__
```
accept: application/json
authorization: Bearer p9LWqBf6ZmSaQPs-R_E9nR7-xYBuHO8WxkKYTS8wNSA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADS_M_FLV-AAACah
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "9e98073e-1d49-4741-8b01-1dcd41dab53a",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/81576dbb-1f0d-4213-891a-72f5089de79a
* __Request headers:__
```
accept: application/json
authorization: Bearer rrup7IVr-HugI340qUiPZt7J-TVmEg-mJ2MdsnYNQTw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADCxGbY2XiQAACEE
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "81576dbb-1f0d-4213-891a-72f5089de79a",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/bbf8c27a-109d-4e71-9a51-878c2885eec9
* __Request headers:__
```
accept: application/json
authorization: Bearer JWorRqJzoA4remuOqPX63htkAnxEoRHYH-ud5wrCG-s=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAD07wXWQI1UAABqi
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "bbf8c27a-109d-4e71-9a51-878c2885eec9",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/6f307cf9-1481-4831-8331-e3349651d476
* __Request headers:__
```
accept: application/json
authorization: Bearer 0TaULmCCOd3QHM7cUk0FXmm7cAVOA5pbPezAHvyKIOo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver_route": {
    "coordinates": [
      [
        20,
        60
      ],
      [
        56,
        24
      ],
      [
        52.0,
        81
      ]
    ],
    "type": "LineString"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAB86IHCPuKQAABkB
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": {
      "coordinates": [
        [
          20,
          60
        ],
        [
          56,
          24
        ],
        [
          52.0,
          81
        ]
      ],
      "type": "LineString"
    },
    "end_time": null,
    "id": "6f307cf9-1481-4831-8331-e3349651d476",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/0e580124-3866-4d19-84a6-5c47c5086e59
* __Request headers:__
```
accept: application/json
authorization: Bearer 4aXE_Bd9ocvmBxTtkAGeZc1mJqD32jSabrmpJcsBYd8=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer_route": {
    "coordinates": [
      [
        20,
        60
      ],
      [
        56,
        24
      ],
      [
        52.0,
        81
      ]
    ],
    "type": "LineString"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACwkDQ0l594AACDh
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": {
      "coordinates": [
        [
          20,
          60
        ],
        [
          56,
          24
        ],
        [
          52.0,
          81
        ]
      ],
      "type": "LineString"
    },
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "0e580124-3866-4d19-84a6-5c47c5086e59",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/0bdf9961-3aee-4b79-a800-5befc366ab7b
* __Request headers:__
```
accept: application/json
authorization: Bearer -wTdm3SryJlrWSoCVnt06-WVxt4-kBk7jxTnkHWQ_W0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "driver_rating": 5
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADr3XZNMEfQAAChh
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": null,
    "customer_route": null,
    "driver_rating": 5,
    "driver_route": null,
    "end_time": null,
    "id": "0bdf9961-3aee-4b79-a800-5befc366ab7b",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/bfc5d724-79e6-475d-9e77-a18406755d03
* __Request headers:__
```
accept: application/json
authorization: Bearer DBjXgJ2JMAslhVZttAZvV0AEj8_uGkztNsh7tu05noc=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "customer_rating": 3
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADKCVMI72U8AABeC
```
* __Response body:__
```json
{
  "data": {
    "customer_rating": 3,
    "customer_route": null,
    "driver_rating": null,
    "driver_route": null,
    "end_time": null,
    "id": "bfc5d724-79e6-475d-9e77-a18406755d03",
    "start_time": null
  }
}
```

## TurboWeb.RideRequestController
### <a id=turboweb-riderequestcontroller-create></a>create
#### create ride_request renders ride_request when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/rides/request
* __Request headers:__
```
accept: application/json
authorization: Bearer Qq68POIgSfixbY_GUsVZU-BfQlCGjdF8XiXyaV2HU9Q=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_request": {
    "end_location": {
      "coordinates": [
        30.2,
        20.3
      ],
      "type": "Point"
    },
    "ride_request_id": "e9fb82a5-274d-4495-b3eb-87d0a74fba88",
    "start_location": {
      "coordinates": [
        30.2,
        20.3
      ],
      "type": "Point"
    }
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAElEheIIU2IAADFh
```
* __Response body:__
```json
{
  "data": {
    "id": "77b0c6e9-280a-4bc8-abc3-62be7b01a794",
    "start_location": {
      "coordinates": [
        30.2,
        20.3
      ],
      "type": "Point"
    }
  }
}
```

#### create ride_request renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/rides/request
* __Request headers:__
```
accept: application/json
authorization: Bearer DgfXAxSC4pFJGwG_D_Pfrlsf2-T3XheZ_dMQU68swYo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_request": {
    "end_location": null,
    "start_location": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEmw_pM31PUAADGB
```
* __Response body:__
```json
{
  "errors": {
    "end_location": [
      "can't be blank"
    ],
    "start_location": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-riderequestcontroller-accept></a>accept
#### accept ride_request renders ride_request when accepting proccess is successfull

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/accept/3a287002-8cf3-4057-b9d7-6b8d76361866
* __Request headers:__
```
accept: application/json
authorization: Bearer CKieb-SPd34nzhwGJR8nYaWoLxF5Q62gUcnaaJ3US6s=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEr7jfSpFMsAACHi
```
* __Response body:__
```json
{
  "data": {
    "id": "3a287002-8cf3-4057-b9d7-6b8d76361866",
    "start_location": {
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
}
```

#### accept ride_request cant accept an already accepted ride request

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/accept/06869692-6284-40d2-9e35-c9befb65090f
* __Request headers:__
```
accept: application/json
authorization: Bearer Vp2qRx5lRZNA359iW-DJr0eY_hQRzSVhn7Na03yQXg8=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEonPX4-558AACBC
```
* __Response body:__
```json
{
  "data": {
    "id": "06869692-6284-40d2-9e35-c9befb65090f",
    "start_location": {
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
}
```

#### accept ride_request cant accept an already accepted ride request

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/accept/06869692-6284-40d2-9e35-c9befb65090f
* __Request headers:__
```
accept: application/json
authorization: Bearer Vp2qRx5lRZNA359iW-DJr0eY_hQRzSVhn7Na03yQXg8=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEp6hgU-558AACBi
```
* __Response body:__
```json
{
  "errors": {
    "accepted": [
      "This ride request was accepted already"
    ]
  }
}
```

## TurboWeb.RideReservationController
### <a id=turboweb-ridereservationcontroller-index></a>index
#### index lists all reservations

##### Request
* __Method:__ GET
* __Path:__ /api/reservations
* __Request headers:__
```
authorization: Bearer 1wMGSMg0SOVpt52PPw8rpKNV4NuXdzDwPtPi-f4hpFk=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEbszkD3-UUAACsj
```
* __Response body:__
```json
{
  "data": []
}
```

### <a id=turboweb-ridereservationcontroller-create></a>create
#### create ride_reservation renders ride_reservation when data is valid

##### Request
* __Method:__ POST
* __Path:__ /api/reservations
* __Request headers:__
```
authorization: Bearer aO4-Ssyv-rqZNEfKRyuh3fDw7TUyvfnQRLmFF0ZImWM=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_reservation": {
    "baggage": true,
    "car_type": "standard",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "identity_card": "some identity_card",
    "name": "some name",
    "passenger_amount": 42,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    }
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEiWt3as0ZQAACvj
location: /api/reservations/b7588fe1-df8f-47c9-91e9-33f5294b5639
```
* __Response body:__
```json
{
  "data": {
    "baggage": true,
    "car_type": "standard",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "id": "b7588fe1-df8f-47c9-91e9-33f5294b5639",
    "identity_card": "some identity_card",
    "name": "some name",
    "passenger_amount": 42,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    }
  }
}
```

### <a id=turboweb-ridereservationcontroller-show></a>show
#### create ride_reservation renders ride_reservation when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/reservations/b7588fe1-df8f-47c9-91e9-33f5294b5639
* __Request headers:__
```
authorization: Bearer aO4-Ssyv-rqZNEfKRyuh3fDw7TUyvfnQRLmFF0ZImWM=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEiy7C-s0ZQAACwD
```
* __Response body:__
```json
{
  "data": {
    "baggage": true,
    "car_type": "standard",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Point"
    },
    "id": "b7588fe1-df8f-47c9-91e9-33f5294b5639",
    "identity_card": "some identity_card",
    "name": "some name",
    "passenger_amount": 42,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
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
}
```

### <a id=turboweb-ridereservationcontroller-create></a>create
#### create ride_reservation renders errors when data is invalid

##### Request
* __Method:__ POST
* __Path:__ /api/reservations
* __Request headers:__
```
authorization: Bearer t8kTk6l__PWSmE12y2kZU5hjTaqbXlTve6Qh60jlVFc=
accept: application/json
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_reservation": {
    "baggage": null,
    "car_type": null,
    "end_location": null,
    "identity_card": null,
    "name": null,
    "passenger_amount": null,
    "start_location": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEXpm_vyZ5UAAC8B
```
* __Response body:__
```json
{
  "errors": {
    "baggage": [
      "can't be blank"
    ],
    "car_type": [
      "can't be blank"
    ],
    "end_location": [
      "can't be blank"
    ],
    "identity_card": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ],
    "passenger_amount": [
      "can't be blank"
    ],
    "start_location": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ridereservationcontroller-update></a>update
#### update ride_reservation renders ride_reservation when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/reservations/35cc2117-7cfe-4e07-9e8e-73482ff2f7b0
* __Request headers:__
```
accept: application/json
authorization: Bearer 6tdpemmvnuHmq--3q6DERY1nsd1dNKmRUY79M2Bz3aM=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_reservation": {
    "baggage": false,
    "car_type": "comfort",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "identity_card": "some updated identity_card",
    "name": "some updated name",
    "passenger_amount": 43,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    }
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEZicYZCSqUAAC_h
```
* __Response body:__
```json
{
  "data": {
    "baggage": false,
    "car_type": "comfort",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "id": "35cc2117-7cfe-4e07-9e8e-73482ff2f7b0",
    "identity_card": "some updated identity_card",
    "name": "some updated name",
    "passenger_amount": 43,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    }
  }
}
```

### <a id=turboweb-ridereservationcontroller-show></a>show
#### update ride_reservation renders ride_reservation when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/reservations/35cc2117-7cfe-4e07-9e8e-73482ff2f7b0
* __Request headers:__
```
accept: application/json
authorization: Bearer 6tdpemmvnuHmq--3q6DERY1nsd1dNKmRUY79M2Bz3aM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEad0BlCSqUAADAh
```
* __Response body:__
```json
{
  "data": {
    "baggage": false,
    "car_type": "comfort",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "crs": {
        "properties": {
          "name": "EPSG:4326"
        },
        "type": "name"
      },
      "type": "Point"
    },
    "id": "35cc2117-7cfe-4e07-9e8e-73482ff2f7b0",
    "identity_card": "some updated identity_card",
    "name": "some updated name",
    "passenger_amount": 43,
    "start_location": {
      "coordinates": [
        -82.398,
        23.137
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
}
```

### <a id=turboweb-ridereservationcontroller-update></a>update
#### update ride_reservation renders errors when data is invalid

##### Request
* __Method:__ PUT
* __Path:__ /api/reservations/5b2ffafa-87ff-41f8-b737-0337043d9502
* __Request headers:__
```
accept: application/json
authorization: Bearer i4qPEINsaZVbLiGXlmn-WNnAcRqrHUPkcD4kYOdJ0PM=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_reservation": {
    "baggage": null,
    "car_type": null,
    "end_location": null,
    "identity_card": null,
    "name": null,
    "passenger_amount": null,
    "start_location": null
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEgwt3uTB24AADDB
```
* __Response body:__
```json
{
  "errors": {
    "baggage": [
      "can't be blank"
    ],
    "car_type": [
      "can't be blank"
    ],
    "end_location": [
      "can't be blank"
    ],
    "identity_card": [
      "can't be blank"
    ],
    "name": [
      "can't be blank"
    ],
    "passenger_amount": [
      "can't be blank"
    ],
    "start_location": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ridereservationcontroller-delete></a>delete
#### delete ride_reservation deletes chosen ride_reservation

##### Request
* __Method:__ DELETE
* __Path:__ /api/reservations/e20625eb-5d6c-4895-9b34-6abe600d5cb3
* __Request headers:__
```
accept: application/json
authorization: Bearer h-UF7mnx2r7MOkOEAERwSMv8sih6u_ntYBL7SYOXif0=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEdtt9pJLn4AADCh
```
* __Response body:__
```json

```

## TurboWeb.AuthController
### <a id=turboweb-authcontroller-create></a>create
#### POST /log_in logs the user in with email

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
  "email_or_phone": "user-576460752303418142@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACyZp6afjzYAACEB
```
* __Response body:__
```json
{
  "data": {
    "token": "XTFqyjdeIa70P8tHpDfQhYezPo0neWv-mOcDgiGVC0E="
  }
}
```

#### POST /log_in logs the user in with phone

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
  "email_or_phone": "8069",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAC_FzUCgjLUAACBE
```
* __Response body:__
```json
{
  "data": {
    "token": "RdM0HlTC0MPuSkvgy0ppLFAyMetN4qXMAiTelRnP4mI="
  }
}
```

#### POST /log_in emits error message with invalid credentials with email

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
  "email_or_phone": "user-576460752303415677@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACuiWMa211kAAB8B
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "Invalid email, phone or password."
    }
  ]
}
```

#### POST /log_in emits error message with invalid credentials with phone

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
  "email_or_phone": "8290",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwACwCJfGNhOwAACDB
```
* __Response body:__
```json
{
  "errors": [
    {
      "detail": "Invalid email, phone or password."
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
authorization: Bearer 9ja1wOUwD4ocf6WGZwFzR7aKZCBJRKnjWcCqnnWbWnQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAC6dREBOQckAACBj
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
x-request-id: FzQwAC2DzYvb8f8AACBD
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
authorization: Bearer GnccARo5Qii0JCCRoxn6wKsNe889rHoWtMR9K2ZIJJQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAD9ETwG_YHIAABtC
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303416574@example.com",
      "id": "0ff12337-aa16-48f6-ba4d-542c311ba54e",
      "name": "user-576460752303416606",
      "phone": "6947"
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
authorization: Bearer GfbvRTTukNUBvAcZyNFRLvQHbuD-dabXmMFDQ3SjHuI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADnnv4njvIAAACch
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "0c5b16fe-756f-4033-b63e-dd96c9c8deb3",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303413535@example.com",
      "id": "10b2f966-b277-461d-ab0e-f9c5955c242b",
      "name": "user-576460752303413567",
      "phone": "9986"
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
authorization: Bearer YDPYoelAmLyq2y31FLT1gQ26ahxUO4LNTXFQCIiHnwQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEB1a5_qUBIAABxC
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "fd5d34d9-94f0-4c4f-9896-28b85f97b9d3",
      "license": "licence-576460752303416318"
    },
    "user": {
      "email": "user-576460752303412703@example.com",
      "id": "48d82b11-c695-4f31-ba55-dd143c8b603f",
      "name": "user-576460752303412735",
      "phone": "10818"
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
authorization: Bearer pbiKhXIe9BXqJ58cIoGVXqnYcYHaYw77nN8FbsO16bQ=
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
x-request-id: FzQwAD99r5Yg8X0AAClD
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "U4WdxnLr82EcRJQGwqywVNoAE4YvltD284jEZnaPyaM="
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
authorization: Bearer juoWw2MfYQEjUnoasI-9snLBnxWSbYROlZEDitPOnXQ=
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
x-request-id: FzQwAECvGINhVWoAACrB
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
authorization: Bearer zzo_oTgSZ8xGH6kvDDTOYvOGdaPW-hnmkcXc-tUA8BY=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303413149@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAD16V1BP5PQAACiD
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
authorization: Bearer TPMvZP38qujI-T6JYds8f1HfAtjV2jjkdTObTnJG4_4=
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
x-request-id: FzQwAEFqMenSD70AAB1C
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

#### PUT /settings (update addresses) updates the customer home address

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer TA9xHtokYTgEJmZdCQt2dgIK0mrntcA0FLW-QPMs_bY=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_home_location",
  "home_location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  },
  "home_location_reverse_geocoding": "home address string"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEHA3XwG5mQAACoj
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": {
        "coordinates": [
          30.2,
          20.3
        ],
        "type": "Point"
      },
      "home_location_reverse_geocoding": "home address string",
      "id": "e7bf2d6a-a15f-4635-8d8e-e7cb6b0155df",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303412765@example.com",
      "id": "71c6a37d-6b39-4337-9c13-8a762cbe894a",
      "name": "user-576460752303412797",
      "phone": "10756"
    }
  }
}
```

#### PUT /settings (update addresses) updates the customer work address

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer MshXYuowFpra4x6Ep2RKaAkdmACjM_eKvEn_TD1xzWI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_work_location",
  "work_location": {
    "coordinates": [
      30.2,
      20.3
    ],
    "type": "Point"
  },
  "work_location_reverse_geocoding": "work address string"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEEVRhiMcyUAABzC
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "0ffd4969-1bdc-482e-a9aa-18204fb9d864",
      "work_location": {
        "coordinates": [
          30.2,
          20.3
        ],
        "type": "Point"
      },
      "work_location_reverse_geocoding": "work address string"
    },
    "user": {
      "email": "user-576460752303416190@example.com",
      "id": "39c437c2-c959-441b-a756-237de6dc62f5",
      "name": "user-576460752303416222",
      "phone": "7331"
    }
  }
}
```

#### PUT /settings (update profile) updates the user profile

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer FrS1KWWFY3TjTncfdVQ6fJ64Xe0n5yZJnaufjXSHpAc=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303412989",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAD76rT-mnCwAACkj
```
* __Response body:__
```json
{
  "message": "Profile updated successfully"
}
```

#### PUT /settings (update profile) does not update profile on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer 7XNNUm6ukKKjwom7q7oF8wuwDyElz67Qcr-rHm3F4SE=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "",
  "phone": ""
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEJIfLAcC-sAACvh
```
* __Response body:__
```json
{
  "errors": {
    "name": [
      "can't be blank"
    ],
    "phone": [
      "can't be blank"
    ]
  }
}
```

#### PUT /settings (update picture) updates the user picture

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer ZTgOU1vBi4jiNvUl65sxwP3Ysel0K9nZ6XjeTwUGSo0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_picture",
  "picture": {
    "content_type": null,
    "filename": "pic.png",
    "path": "test/support/fixtures/pic.png"
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwADo9s-NM3C8AACfh
```
* __Response body:__
```json
{
  "message": "Picture updated successfully"
}
```

### <a id=turboweb-settingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/l-aTg6oaPv84XJ6zOPIA0ZPiV04wjnq_Rxk6-chDS6w
* __Request headers:__
```
accept: application/json
authorization: Bearer 7FIJAjtYyYV1Gha1IHPOWISJlLH91atFu9XI-9gIz2A=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAD4uLZDk2UUAACsk
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
authorization: Bearer DKTLeXRJug14VKyAMdNokpPKr9C_Ol2Oe7PF73wjMTU=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEIIjm2RVCUAACth
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
authorization: Bearer gEHpKY7K4syCHfSQetsRDDYsVCtLRx5QY-Jdk-nkGB4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzQwAEKcAaIAeg4AACyh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "2eb31b21-662f-4c9e-89e4-ddf45e4b67cf"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/9bfc6e5f-0581-4ecd-8b34-03235332f22f
* __Request headers:__
```
accept: application/json
authorization: Bearer ABpqhE862pHBkjvbxN9smHuWgzxDKu4oIEb3duI-5b0=
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
x-request-id: FzQwAEMpyJnmVJEAAC3B
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "9bfc6e5f-0581-4ecd-8b34-03235332f22f"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/9bfc6e5f-0581-4ecd-8b34-03235332f22f
* __Request headers:__
```
accept: application/json
authorization: Bearer ABpqhE862pHBkjvbxN9smHuWgzxDKu4oIEb3duI-5b0=
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
x-request-id: FzQwAENRCirmVJEAAC3h
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "9bfc6e5f-0581-4ecd-8b34-03235332f22f"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/2f320268-37cb-4635-8d9a-1bac5433c888
* __Request headers:__
```
accept: application/json
authorization: Bearer pyv7D0kMg_PGbMNarTyciIh1AzhAFplU2BTyIaj4YBA=
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
x-request-id: FzQwAEPXYajF-rUAACpD
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

