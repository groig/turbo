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
  "id": "74a4e937-c561-4c3a-8409-3462059493fb",
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
* __Topic:__ rides:d0da7adb-bae6-401d-8d5b-05bef4acef9f
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:d0da7adb-bae6-401d-8d5b-05bef4acef9f
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
* __Topic:__ rides:71f8cbfc-b2d0-4686-a281-bd05c3fde480
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:71f8cbfc-b2d0-4686-a281-bd05c3fde480
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
* __Topic:__ rides:a2e55f96-b660-4452-92e3-679c170debfc
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:a2e55f96-b660-4452-92e3-679c170debfc
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
* __Topic:__ rides:c22adfac-9ea1-494b-a74e-e80ea8a68268
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:c22adfac-9ea1-494b-a74e-e80ea8a68268
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
* __Topic:__ rides:b54f38e0-0d25-486d-8a58-1622acf9c7b2
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
* __Topic:__ rides:b54f38e0-0d25-486d-8a58-1622acf9c7b2
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:b54f38e0-0d25-486d-8a58-1622acf9c7b2
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
* __Topic:__ rides:0bad30d0-d919-4d71-9629-25a503a0cfbb
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
* __Topic:__ rides:0bad30d0-d919-4d71-9629-25a503a0cfbb
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:0bad30d0-d919-4d71-9629-25a503a0cfbb
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
authorization: Bearer Rsppmc07pJZAAR8CzheAYTwvmGRyireXEwQiVLhPLeo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVkm8ZCgjLUAACeD
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
authorization: Bearer 8SUY5MpXHegEYZJhJRmmZQHQsTrLSm9Ws38jUTQzgUo=
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
x-request-id: FzB6BVpqMXLUV1oAABKE
```
* __Response body:__
```json
{
  "data": {
    "id": "68f0d24b-d12f-464e-a876-2e1871af7df9",
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
* __Path:__ /api/addresses/68f0d24b-d12f-464e-a876-2e1871af7df9
* __Request headers:__
```
accept: application/json
authorization: Bearer 8SUY5MpXHegEYZJhJRmmZQHQsTrLSm9Ws38jUTQzgUo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVqIhcfUV1oAABME
```
* __Response body:__
```json
{
  "data": {
    "id": "68f0d24b-d12f-464e-a876-2e1871af7df9",
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
* __Path:__ /api/addresses/568c154d-1670-4360-b5af-a3e7666c79fc
* __Request headers:__
```
accept: application/json
authorization: Bearer 13Gtpz6i7sT0v8ihsZsV5tT_W30fhu3S02m4C9LJkZ4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BSbD2QtY_RUAAAvh
```
* __Response body:__
```json
{
  "data": {
    "id": "568c154d-1670-4360-b5af-a3e7666c79fc",
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
    "name": "address-576460752303420542"
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
authorization: Bearer bEe00IziCilKZfKxodjBy-zN679i_QPNmTCvHETWnf8=
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
x-request-id: FzB6BVm7lE5kM2MAAChD
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
* __Path:__ /api/addresses/b7757469-6770-4e7b-9979-a589435dc0fa
* __Request headers:__
```
accept: application/json
authorization: Bearer w_svhhIqdW8B_p4UJRyn1y6MSJ-A9AicCQXnejeFC-M=
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
x-request-id: FzB6BVhN6edoQTEAACbj
```
* __Response body:__
```json
{
  "data": {
    "id": "b7757469-6770-4e7b-9979-a589435dc0fa",
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
* __Path:__ /api/addresses/b7757469-6770-4e7b-9979-a589435dc0fa
* __Request headers:__
```
accept: application/json
authorization: Bearer w_svhhIqdW8B_p4UJRyn1y6MSJ-A9AicCQXnejeFC-M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVh7HaloQTEAACcD
```
* __Response body:__
```json
{
  "data": {
    "id": "b7757469-6770-4e7b-9979-a589435dc0fa",
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
* __Path:__ /api/addresses/bb2c5dd1-3459-4bb8-85ef-51608655fdd4
* __Request headers:__
```
accept: application/json
authorization: Bearer lpCOJioMhLBnr51c28HqEveA-oCIbcfHRp3ujnuod_g=
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
x-request-id: FzB6BVTRJKi-1LQAABth
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
* __Path:__ /api/addresses/68513230-5100-41e2-b39e-4d7a5c0cba0a
* __Request headers:__
```
accept: application/json
authorization: Bearer KF4HTDBuUKMtU0x6LXcN6WlosEOeoFtrxkEkzsFc9yY=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVKxsvSV1-QAABih
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
authorization: Bearer 3MJuP6aH74YlbQHVRkBo-avDeujxrWIxHKA4VzdWetY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVOEeHVsv5kAABmB
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "964a6c24-8800-4982-b859-1df5194d90e9",
      "license_plate": "license--576460752303416991",
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
authorization: Bearer 0JmomnaNRvxB_0nlRfVBcXSZjtaSReliEVB189XzD38=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303416190",
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
x-request-id: FzB6BVEs91vs4wAAAByi
location: /api/cars/7aae6b0f-7197-4236-b8c1-1f6116ce8fbb
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "7aae6b0f-7197-4236-b8c1-1f6116ce8fbb",
    "license_plate": "license--576460752303416190",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/7aae6b0f-7197-4236-b8c1-1f6116ce8fbb
* __Request headers:__
```
accept: application/json
authorization: Bearer 0JmomnaNRvxB_0nlRfVBcXSZjtaSReliEVB189XzD38=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVHKWNLs4wAAABcB
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "7aae6b0f-7197-4236-b8c1-1f6116ce8fbb",
    "license_plate": "license--576460752303416190",
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
authorization: Bearer D3rswlZNkcH2HPtAHZJOal6AK-7lplJVnXWRvk1Chjo=
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
x-request-id: FzB6BUifg_Qsnw8AABVi
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
* __Path:__ /api/cars/3a3f421f-cbad-4aae-a0ea-a4d39a65d320
* __Request headers:__
```
accept: application/json
authorization: Bearer Q1260XK28wE5y3jGHgMfwVHqhNEPYv-W7f9-nXjTaeA=
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
x-request-id: FzB6BUYyo7N2hioAABRi
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "3a3f421f-cbad-4aae-a0ea-a4d39a65d320",
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
* __Path:__ /api/cars/183809e3-85f1-42db-8da7-83e097847dd1
* __Request headers:__
```
accept: application/json
authorization: Bearer _TaoxwqmFKQsvPBxsXGRq-daqvAYTvPeGO0Gz4DRd58=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUqNamTIhpAAABgC
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
  "email": "user-576460752303418141@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUAvRUsHsB4AAAxh
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
  "email": "user-576460752303420380@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BT916rVCLd4AAA0E
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
x-request-id: FzB6BT8RaHWmY28AABNj
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
* __Path:__ /api/confirm/NXsOZw66Sj06Rq9213BD2s4rmsCqRgm5FSr1G7kxKWw
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
x-request-id: FzB6BSdIQjMl06MAAA7i
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
* __Path:__ /api/confirm/NXsOZw66Sj06Rq9213BD2s4rmsCqRgm5FSr1G7kxKWw
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
x-request-id: FzB6BT7Gc1El06MAABLj
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
x-request-id: FzB6BT-1TV3hBDQAABPj
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
authorization: Bearer 9m2d4b4VJDnsrZ9Q2nSZJ4eb3qwzvsRWi7iLvV_26M8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUFhA_YJ5-UAAAzh
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
* __Path:__ /api/customers/e70776d9-d925-443a-a9ec-3efc65e018a6
* __Request headers:__
```
accept: application/json
authorization: Bearer XE4_JcpyQvcbnIk2jzrrGd2qArIx8hNUar8UQyMOFaw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BSdUiXlCHzMAAA8C
```
* __Response body:__
```json
{
  "data": {
    "id": "e70776d9-d925-443a-a9ec-3efc65e018a6"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/2176af73-8a7d-43e1-833e-dcc2f46b7f32
* __Request headers:__
```
accept: application/json
authorization: Bearer XE4_JcpyQvcbnIk2jzrrGd2qArIx8hNUar8UQyMOFaw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUDd5e5CHzMAABJi
```
* __Response body:__
```json
{
  "data": {
    "id": "2176af73-8a7d-43e1-833e-dcc2f46b7f32"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/d68d9ba1-8f82-4a3c-b014-b689439cc47b
* __Request headers:__
```
accept: application/json
authorization: Bearer 9sPsBSlAmtFSOeZ3GSzpENq7oyzXJlehLMbvn9sK5IY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUL3QaFLOM8AABej
```
* __Response body:__
```json
{
  "data": {
    "id": "d68d9ba1-8f82-4a3c-b014-b689439cc47b"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/2b97c41a-ce03-40fc-8f50-d885a2ea5994
* __Request headers:__
```
accept: application/json
authorization: Bearer 9sPsBSlAmtFSOeZ3GSzpENq7oyzXJlehLMbvn9sK5IY=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUMehXdLOM8AABgj
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
authorization: Bearer jKSEPgI5WIy3FW1TFVLGMmWEZR9s9cJDsHRwRUgmscI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUNrKQ3X0QYAABhD
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303417757@example.com",
      "id": "97981684-bf07-4866-8b64-cf8c1cdb8ed9",
      "name": "user-576460752303417789",
      "phone": "5764"
    },
    {
      "credit": 0,
      "email": "user-576460752303419935@example.com",
      "id": "cbec9885-8f08-4bb6-b2e2-590d52026ca6",
      "name": "user-576460752303419967",
      "phone": "3586"
    },
    {
      "credit": 0,
      "email": "user-576460752303419839@example.com",
      "id": "36f55b25-8cba-4092-b086-8dad89ce7244",
      "name": "user-576460752303419871",
      "phone": "3682"
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
authorization: Bearer 6rEhcyMVMAKzdpy910v3JssuyKk-FgSBVhc5phrBdwI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVZ2wP6pvJEAACMj
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "f5974cb8-238a-463a-bf3e-613dca41e522",
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
authorization: Bearer oxxxzV__6vLwHSTky1cez37Bz8OdyVD-Opf0lXHivGw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVSSJdT9mCAAAB_C
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303417407@example.com",
      "id": "ac8322d9-f846-467a-9ca3-037b338e1e44",
      "name": "user-576460752303417439",
      "phone": "6114"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/bbf35372-e13d-43dc-8641-58dcb820cf5c
* __Request headers:__
```
accept: application/json
authorization: Bearer wdxdEGUSd86PMFGAz85fvoM_wt_v1q364LnqeVVTMuw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVg8pObmSgcAACCh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303413789@example.com",
    "id": "bbf35372-e13d-43dc-8641-58dcb820cf5c",
    "name": "user-576460752303413821",
    "phone": "9732"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/c2d890df-3780-4e37-ba9a-54a6a0fd1ae1
* __Request headers:__
```
accept: application/json
authorization: Bearer wdxdEGUSd86PMFGAz85fvoM_wt_v1q364LnqeVVTMuw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVhqnijmSgcAACEh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303413661@example.com",
    "id": "c2d890df-3780-4e37-ba9a-54a6a0fd1ae1",
    "name": "user-576460752303413693",
    "phone": "9860"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/814adebc-48f8-419a-9bd1-1a69f8069d0c
* __Request headers:__
```
accept: application/json
authorization: Bearer BJNMEHpCDVHSFFhtf7wbB1DiiQoTD9GUgz7PgCG-p2Q=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BTRvcRLKS6cAAA_C
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303419357@example.com",
    "id": "814adebc-48f8-419a-9bd1-1a69f8069d0c",
    "name": "user-576460752303419389",
    "phone": "4164"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/64d4a94b-c9a0-4dbb-b6bf-cd9ebf1936ff
* __Request headers:__
```
accept: application/json
authorization: Bearer BJNMEHpCDVHSFFhtf7wbB1DiiQoTD9GUgz7PgCG-p2Q=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUFlhbbKS6cAAA0k
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
authorization: Bearer wWgO9A0RHei464uhpfomqOmkeTGRPVH0iGeq6ppSmOc=
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
x-request-id: FzB6BVcZTcXqv5sAAB5B
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
authorization: Bearer fX09KzoDbRLr7V5r2oeP-ATFyih3ZaEatpF-QYvpK8E=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303417759"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVFTpZOipDcAABaB
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
authorization: Bearer iwDtMVFT9Xcj15PAT-yUx64zZn-Yrufzuoivfa_Fy-c=
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
x-request-id: FzB6BUcxrp2_YRMAABrj
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
authorization: Bearer iwDtMVFT9Xcj15PAT-yUx64zZn-Yrufzuoivfa_Fy-c=
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
x-request-id: FzB6BUeMf52_YRMAABsj
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
authorization: Bearer iwDtMVFT9Xcj15PAT-yUx64zZn-Yrufzuoivfa_Fy-c=
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
x-request-id: FzB6BUhY3Zy_YRMAABMB
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
authorization: Bearer 9nAcQcug1tEdxlKn15odGtso_LS2AeSUdgAX-JMRiIg=
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
x-request-id: FzB6BUWElvwdCZ8AABmj
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
authorization: Bearer thLgt6f8QJnCZvaXOmjLJ0GB86oiaXGUtEe-lPwesrs=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "6004d710-e74b-49d9-8349-5482d9c9df20"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUSeoo7FDCwAABCB
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
authorization: Bearer lw9ear5v8xXX-nWbsbtSOYZEYWoDPWNrMx20OPtbhpA=
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
x-request-id: FzB6BXBwYEREqyEAADoh
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "317646c5-b9f6-42f4-8880-4ffae60c2ce0"
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
authorization: Bearer 0o9oc4LP2BzJ7Vjnxle759ZEBXIUAixiSVpdtcgg1zQ=
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
x-request-id: FzB6BW_X2hbpgh8AAC_D
```
* __Response body:__
```json
{
  "data": {
    "id": "83559aac-5498-4d47-b778-c814df631d89",
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
authorization: Bearer 0o9oc4LP2BzJ7Vjnxle759ZEBXIUAixiSVpdtcgg1zQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BW_xd-bpgh8AADkh
```
* __Response body:__
```json
{
  "data": {
    "id": "83559aac-5498-4d47-b778-c814df631d89",
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
authorization: Bearer G5RLnbiaUrlxlPW8DqujfnsL-LaQThEop9npdgOMUvM=
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
x-request-id: FzB6BXAyZDAcLlwAADmh
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
authorization: Bearer 2bK0olObdQ04aXdbSkuRVze1pIG4ir79_iNpRs7uv28=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWfBtJ-z1aMAADAh
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
authorization: Bearer 2bK0olObdQ04aXdbSkuRVze1pIG4ir79_iNpRs7uv28=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWf_P-6z1aMAADBh
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
      "id": "c7c4d8cc-3b74-442d-9813-da7f86a85753",
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
authorization: Bearer JVxXIMP6y6n2ZAZEizENqAXrsfn7ErH1j2ww6d9q5l8=
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
x-request-id: FzB6BWsL4dVPABUAADSh
location: /api/rates/3beb6669-c676-4d5f-99a7-bf27e0e995ff
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
    "id": "3beb6669-c676-4d5f-99a7-bf27e0e995ff",
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
* __Path:__ /api/rates/3beb6669-c676-4d5f-99a7-bf27e0e995ff
* __Request headers:__
```
authorization: Bearer JVxXIMP6y6n2ZAZEizENqAXrsfn7ErH1j2ww6d9q5l8=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWsj1FBPABUAADTB
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
    "id": "3beb6669-c676-4d5f-99a7-bf27e0e995ff",
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
authorization: Bearer YNXtq16yXe4h3Yn9740eQQMgyx5pvJ3Ce5z54_OWgbE=
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
x-request-id: FzB6BWiMxk7DVVsAADGB
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
authorization: Bearer mP4CJ8US1YCspNw1bFqqXR765P7cvWUJBR7lA4jwDNE=
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
x-request-id: FzB6BWtulX5NPWQAADVB
location: /api/rates/6fe28a61-2119-4c5a-b59c-0f806faf7bb5
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
    "id": "6fe28a61-2119-4c5a-b59c-0f806faf7bb5",
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
* __Path:__ /api/rates/6fe28a61-2119-4c5a-b59c-0f806faf7bb5
* __Request headers:__
```
authorization: Bearer mP4CJ8US1YCspNw1bFqqXR765P7cvWUJBR7lA4jwDNE=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWud5uNNPWQAADVh
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
    "id": "6fe28a61-2119-4c5a-b59c-0f806faf7bb5",
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
authorization: Bearer C7MgPsgV-5goTl6ou23Y8zwVZ3g-9v95zJXjgb2pY7c=
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
x-request-id: FzB6BWrSeB129hIAADQh
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
* __Path:__ /api/rates/update_time_rate/7ec86f61-545f-413d-928d-ef13c0f428fe
* __Request headers:__
```
authorization: Bearer dUwOmH0THye4538NOfrl0W7BNo9SILeeTnrhv2fr6R0=
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
x-request-id: FzB6BWxN_p5fiwMAADaB
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
    "id": "7ec86f61-545f-413d-928d-ef13c0f428fe",
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
* __Path:__ /api/rates/7ec86f61-545f-413d-928d-ef13c0f428fe
* __Request headers:__
```
authorization: Bearer dUwOmH0THye4538NOfrl0W7BNo9SILeeTnrhv2fr6R0=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWx7bCBfiwMAADah
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
    "id": "7ec86f61-545f-413d-928d-ef13c0f428fe",
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
* __Path:__ /api/rates/update_time_rate/20273f9b-ac6d-49dd-9ffd-4a658ab950d0
* __Request headers:__
```
authorization: Bearer allK7VLQrsd4StphFT5g2i3-j_IUU2dRD0vVCLQHsaA=
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
x-request-id: FzB6BWhH0htkp4IAADDh
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
* __Path:__ /api/rates/update_area_rate/a052a7bc-5dee-4726-919f-bd26561119a0
* __Request headers:__
```
authorization: Bearer dUhw_flo3Pn9wjdvMd-NMlDZTLo4MnLFeNS_Vj0ssKg=
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
x-request-id: FzB6BWvlyhcidvwAADXh
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
    "id": "a052a7bc-5dee-4726-919f-bd26561119a0",
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
* __Path:__ /api/rates/a052a7bc-5dee-4726-919f-bd26561119a0
* __Request headers:__
```
authorization: Bearer dUhw_flo3Pn9wjdvMd-NMlDZTLo4MnLFeNS_Vj0ssKg=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWwCkP0idvwAADYB
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
    "id": "a052a7bc-5dee-4726-919f-bd26561119a0",
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
* __Path:__ /api/rates/update_area_rate/1488d173-2d1c-413d-8611-cb1af2a64426
* __Request headers:__
```
authorization: Bearer DoCf0JJujEt2MgZTq6q6qk7Rh2Koa8i7vb1xaT4iKFo=
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
x-request-id: FzB6BWqTf6YtKUsAADOh
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
authorization: Bearer 8YLupi5OIAduZvmlavAQPuEaWXDdffmXyLXvNBth9y4=
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
x-request-id: FzB6BWln6tpb82YAADIB
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
authorization: Bearer 01MRehTbZggaGFc7EODTyzp4BoaSs87VZLbSfbnZzWI=
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
x-request-id: FzB6BWjo3oIoK_8AAB-E
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
authorization: Bearer kmbGnp0OQxKb8MYEqGbmL8eMjV18whMV5URbpcVpqDM=
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
x-request-id: FzB6BWpC22kJd8sAADMh
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
    "email": "user-576460752303416093@example.com",
    "name": "user-576460752303416061",
    "password": "hello world!",
    "phone": "7492"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUnykouVeuQAAB1j
```
* __Response body:__
```json
{
  "data": {
    "id": "0fde6cff-b938-4d63-a2bf-23f88becb449",
    "token": "DRe4bbp8ZEsxZ4uBCNP9_QoUoXE_FhfrLmp9HtUZ9sA="
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
x-request-id: FzB6BUm_FWGr2koAABcC
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
    "email": "user-576460752303418783@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303418751",
    "password": "hello world!",
    "phone": "4802"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUhG0NDQ5agAABLh
```
* __Response body:__
```json
{
  "data": {
    "id": "57770a7c-452f-4dca-87b7-06d5b197b476",
    "token": "D8Xa3bUUkGlmyo7clDC5FxR5pUPE7pv0ubPbni3tBsQ="
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
    "email": "user-576460752303418365@example.com",
    "name": "user-576460752303418333",
    "password": "hello world!",
    "phone": "5220"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BT--y5HYSn4AABSD
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
    "email": "user-576460752303420316@example.com",
    "name": "user-576460752303420284",
    "password": "hello world!",
    "phone": "3269"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BT9qApYVUukAAAzk
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
x-request-id: FzB6BUl-mWEEdQ0AABbi
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
  "email": "user-576460752303418943@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUeqa453Ud8AABJB
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
x-request-id: FzB6BUZghaF5o30AABSC
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
* __Path:__ /api/reset_password/ySoRP0BaOpmk5yYO9wDD79t01cqjF9HCPnCjD-5KAf0
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
x-request-id: FzB6BUXBJxLFVTYAABOi
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
* __Path:__ /api/reset_password/HdRyIf4CalZjITkTSKUdEJaVVkCtb_6TblrK9F3nh1w
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
x-request-id: FzB6BT6BcnBAf58AABKj
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
x-request-id: FzB6BUbToc8Z55gAAA6k
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
authorization: Bearer L2FR0gGU_QXCQmyyjpo_DYuGuR09KR6ONQuvOINzc-U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV1WSgG-W7UAACPC
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
      "id": "9e94d875-3c47-46ce-b1aa-8f687deb0b29",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "44e112c4-3ed1-461b-a7dd-10721851769b",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "d1389b57-69d3-46c0-b082-5b2f3a4daae9",
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
authorization: Bearer 2cnhIwhToNpWsqAEnpCdzXE4QpAXu_fS_7XFotJXqLs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVrkvwE75KUAACQh
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
      "id": "28fd7321-e7ca-40bd-aa3c-f28ef2621a2a",
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
authorization: Bearer TQWhPl_fNRVAmRmEl8fWzhhV6hmN2hCVdK6rgghcCUk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWJF-rGWlkYAABrE
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
      "id": "050c3faf-ccd3-4424-89a1-fd5e8dfe024e",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "3749f78f-4e13-4673-b18b-1e861cb1d2f8",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/025931ab-274a-4f7d-8caa-2b028fcf8b72
* __Request headers:__
```
accept: application/json
authorization: Bearer w1fplSzDvOggI9zgijiTzrVTDsPfHcOv8IJDNl4A-LE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUsOXlNrZNAAAB8D
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
    "id": "025931ab-274a-4f7d-8caa-2b028fcf8b72",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/75da1810-97e3-4e40-ac1c-2caa45809594
* __Request headers:__
```
accept: application/json
authorization: Bearer w1fplSzDvOggI9zgijiTzrVTDsPfHcOv8IJDNl4A-LE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BUtl5y9rZNAAABii
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
    "id": "75da1810-97e3-4e40-ac1c-2caa45809594",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/b7bf2695-8634-4ba6-a231-a2490df4917f
* __Request headers:__
```
accept: application/json
authorization: Bearer tfzqYzcFz5SVVYYb49hqiDPUpvzHdeRSa_6GNIF_FCw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV9OImfRuYcAAChB
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
    "id": "b7bf2695-8634-4ba6-a231-a2490df4917f",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/cfd62f99-941f-41ba-9864-b6bf905a3787
* __Request headers:__
```
accept: application/json
authorization: Bearer CIg_t_9gd8n1XI9ChE4n22UUb9ztRrsUDWAzeP-GS5g=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVfm6QYnhiAAACYj
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
    "id": "cfd62f99-941f-41ba-9864-b6bf905a3787",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/d4ba078b-9fb2-4b82-984d-54695052c37b
* __Request headers:__
```
accept: application/json
authorization: Bearer yX7lVO_OLgYP-Hzzh8x_HyqBX2b7CSgZdwzg6JzpB5E=
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
x-request-id: FzB6BVKuW_nPaF8AAB1C
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
    "id": "d4ba078b-9fb2-4b82-984d-54695052c37b",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/c93b80b7-6ea6-419f-9c8b-79d7bf0e4314
* __Request headers:__
```
accept: application/json
authorization: Bearer xIh5ueMHmDcSVEYdK7B0nVnk2iuAY5D-NuLD-sG3v3g=
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
x-request-id: FzB6BU6gyFCUojkAABPB
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
    "id": "c93b80b7-6ea6-419f-9c8b-79d7bf0e4314",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/3518cd6a-2f73-4268-8da4-cb96645a7cb1
* __Request headers:__
```
accept: application/json
authorization: Bearer uZuQnb3Q_Dwr0P--NcZAZ3DGtc8UAAoPwk1JL2wWhgw=
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
x-request-id: FzB6BU0mGDmGT3MAABoC
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
    "id": "3518cd6a-2f73-4268-8da4-cb96645a7cb1",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/97c45544-678e-4044-9378-c49abc469d2c
* __Request headers:__
```
accept: application/json
authorization: Bearer Vo7cxqWKWsKuoHPPUvHGDAPSHd-S7OzGkkU1gH6QX9s=
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
x-request-id: FzB6BVVxvRlpw9QAACHi
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
    "id": "97c45544-678e-4044-9378-c49abc469d2c",
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
authorization: Bearer RLrktxQwiCfWjGpj85Er5Q4DDyD66quLtitd37VdEIQ=
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
    "ride_request_id": "ecf57c3a-6d53-4681-a95f-9f8dae7cea4e",
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
x-request-id: FzB6BWa03LYG5mQAAC7h
```
* __Response body:__
```json
{
  "data": {
    "id": "ec06db7e-41bd-4766-b258-2cdeabd4dd1f",
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
authorization: Bearer 4lPqdiwUua3FaR_qdAMkwFKZ0Beoq45WUMt1BDWg7_g=
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
x-request-id: FzB6BWY8J-_c1FcAAC5B
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
* __Path:__ /api/rides/accept/bd577731-5e79-48f9-84a7-3590e92eee52
* __Request headers:__
```
accept: application/json
authorization: Bearer T0ay_fl6_ZSSoQRQIpwBjRea2M-33OGiqfp9B5VZ4I0=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWXaA2tJSrMAAC3B
```
* __Response body:__
```json
{
  "data": {
    "id": "bd577731-5e79-48f9-84a7-3590e92eee52",
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
* __Path:__ /api/rides/accept/3f5efd78-8995-4f7f-8c43-70cbd3ce020c
* __Request headers:__
```
accept: application/json
authorization: Bearer 1BgGz6azPZVXcnrGZIAKjsdXldnBaQVoKH-GDA8cfLc=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWdCJ2KRVCUAAB8E
```
* __Response body:__
```json
{
  "data": {
    "id": "3f5efd78-8995-4f7f-8c43-70cbd3ce020c",
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
* __Path:__ /api/rides/accept/3f5efd78-8995-4f7f-8c43-70cbd3ce020c
* __Request headers:__
```
accept: application/json
authorization: Bearer 1BgGz6azPZVXcnrGZIAKjsdXldnBaQVoKH-GDA8cfLc=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWd_kyiRVCUAAC-h
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
  "email": "user-576460752303416574@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BU4VN5wCHCMAACBj
```
* __Response body:__
```json
{
  "data": {
    "token": "UP1R858VuW_Z6d-qLW5SPjMTz6dkPd1ydUzFTCeu66Y="
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
  "email": "user-576460752303416766@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BU2y5yQEuvIAABNB
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
authorization: Bearer FNLFPpyh-83ndqrZCGvBcbQjgNcL57lhDQksI-Sru4k=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BU1CzZw467UAAB_j
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
x-request-id: FzB6BU6wjz5a0MUAABPh
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
authorization: Bearer PKFbuvhfPCfQVSvizI5IMakj9uXpcoX3AlXiDFChsCk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV3ollwlHG4AABak
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303413311@example.com",
      "id": "1c8b4f53-9b7b-43f7-9c26-eca0cefe2038",
      "name": "user-576460752303413343",
      "phone": "10210"
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
authorization: Bearer pX9ZWXPXhnZe_tfZDNFdzMIfqhk31rKLTQal1j2SVIQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVpNiYwgjXcAACkj
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "f14d7978-3467-4f4d-953f-8d4669e88f65",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303413117@example.com",
      "id": "c1904dc4-3086-4efe-85e4-16501c84e94a",
      "name": "user-576460752303413149",
      "phone": "10404"
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
authorization: Bearer AxkgihBoclx3xHt3LipetXkpPRjOOV94oI336PIIh00=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV9MmAT-epsAABfk
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "d5919d1c-bc94-4ece-a8be-2d1e3e4b14a4",
      "license": "licence-576460752303414014"
    },
    "user": {
      "email": "user-576460752303414078@example.com",
      "id": "d16e10da-5d2d-4c22-a4a6-986dc11066eb",
      "name": "user-576460752303414110",
      "phone": "9443"
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
authorization: Bearer JHFSdv5oZflgOI9kIFgPwmP6XrfTJ1X_twZtH-pK5Hc=
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
x-request-id: FzB6BVsrjzHRDQQAABQE
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "nqFKspu2qlWqIQc3S7hMGONw6b7SQXn1Os5sjCPLfOs="
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
authorization: Bearer tIn1iRYC_m6QlgcJO7h_XKQqF73en9H8JLkz2SXe-HM=
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
x-request-id: FzB6BV-uweWH2fMAACjB
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
authorization: Bearer Di4LOyLxDLjrllTAdEerdlvMSbxbIPJTMOCaMPCLmP0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303412253@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV6Yq_qF_pkAACwD
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
authorization: Bearer uPAcMSIwKDzVVvQH2fnQ9uH2jU6bup2lE3bOUr_ojag=
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
x-request-id: FzB6BWDojICmnCwAACZi
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
authorization: Bearer qWA7dV0qy5pPTqRgGiTpEo13Ux0GPHy3--m-qlRmOm0=
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
x-request-id: FzB6BVq6yhNbkbIAABNk
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
      "id": "24e81aff-640a-4bb2-beb5-f995016f6db4",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303414399@example.com",
      "id": "ad78da57-5956-4e4c-8ae3-83dad3c06de3",
      "name": "user-576460752303414431",
      "phone": "9122"
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
authorization: Bearer piU-PLqzve2LA6BdkDWfj8pwo3Qq4PKzv53qbVTKvjM=
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
x-request-id: FzB6BWB8-nxt1jMAACmB
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "c5c29b2d-b88b-4c80-a3fa-61a44a52f24b",
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
      "email": "user-576460752303413822@example.com",
      "id": "63f7c7e2-04ed-4f5b-97b7-74c18416285e",
      "name": "user-576460752303413854",
      "phone": "9699"
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
authorization: Bearer QV1htV3P6IHPRRzY2EqRlUFCHyJQHm2VQweqZNyl250=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303413247",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BV4-_61tN0oAACgh
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
authorization: Bearer N_EA-EkUUUSPhRf2v1pray65WkUKqoqkk7sWO-8nZvc=
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
x-request-id: FzB6BV0Q6I-FLGsAACdh
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

### <a id=turboweb-settingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/c2ukiQOfs4oIwIiFIzEKsoM444-35I3MJ3kFfoUC6Gg
* __Request headers:__
```
accept: application/json
authorization: Bearer gENYsQxJ2GdiZ1TY6DaOl9KZhWOmJGgFuDpop3NFxb8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVx6qgGwbCAAABXE
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
authorization: Bearer e1_AjN3wvx1lgiz6eZHF9sC2ZRN0aKQoUk3STUZniqo=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BVwBZSJKPT0AACXh
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
authorization: Bearer N6JV6fZ-p-8hhvIC5Q56QzGmU14A-Enug1eYUVbOyr0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzB6BWT7uGZa_5MAAB1k
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "099ba1fd-98ac-42dd-9142-2ac40def83c4"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/89346f53-a222-490f-a031-e2b533e2d42b
* __Request headers:__
```
accept: application/json
authorization: Bearer LCOisyzGdopK0e-NOp4ablhjoxlyHrpAiQaXcJLc7iQ=
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
x-request-id: FzB6BWRfYAU4BXgAAByk
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "89346f53-a222-490f-a031-e2b533e2d42b"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/89346f53-a222-490f-a031-e2b533e2d42b
* __Request headers:__
```
accept: application/json
authorization: Bearer LCOisyzGdopK0e-NOp4ablhjoxlyHrpAiQaXcJLc7iQ=
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
x-request-id: FzB6BWSOHsw4BXgAACxB
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "89346f53-a222-490f-a031-e2b533e2d42b"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/1b51841d-d089-4b8d-babb-c0068a2cbd3b
* __Request headers:__
```
accept: application/json
authorization: Bearer lcB3SJQ1C43PS2SPKEeTPBYWYNVHZP0ULrsJ-I2qyrU=
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
x-request-id: FzB6BWVWRiytaRgAAB4k
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

