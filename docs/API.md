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
  "id": "a4843960-0e7c-4b5d-9331-c9d8569691fb",
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
* __Topic:__ rides:cf991022-fb2c-4717-9ef1-9bbf1a72a300
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:cf991022-fb2c-4717-9ef1-9bbf1a72a300
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
* __Topic:__ rides:f365aecf-be13-44c1-8003-fabf3d7c299c
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:f365aecf-be13-44c1-8003-fabf3d7c299c
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
* __Topic:__ rides:ec94ffc2-4ff3-4280-8048-b512577f6b82
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:ec94ffc2-4ff3-4280-8048-b512577f6b82
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
* __Topic:__ rides:2d76f15a-942f-4806-808b-b19578ebdf4d
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:2d76f15a-942f-4806-808b-b19578ebdf4d
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
* __Topic:__ rides:7baa4d2d-b011-41c3-b9e5-4260dfda94b0
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
* __Topic:__ rides:7baa4d2d-b011-41c3-b9e5-4260dfda94b0
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:7baa4d2d-b011-41c3-b9e5-4260dfda94b0
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
* __Topic:__ rides:6db0bc40-5a54-4b7f-a20a-4803f1c7ee09
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
* __Topic:__ rides:6db0bc40-5a54-4b7f-a20a-4803f1c7ee09
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:6db0bc40-5a54-4b7f-a20a-4803f1c7ee09
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
authorization: Bearer T5mFfa4k9BP-Vj5Cu_SuCJ7BzSEzaSv58-9wpcjFkf8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0bmba1aHj0AABmk
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
authorization: Bearer Wqafx26i8YFr8IxXJ-xzUamywFbkpYdlfbwSmJEnUcg=
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
x-request-id: FzIQVzwov_LyQ-MAABOE
```
* __Response body:__
```json
{
  "data": {
    "id": "8422f965-ac09-41a9-937f-0d0965bd8e7e",
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
* __Path:__ /api/addresses/8422f965-ac09-41a9-937f-0d0965bd8e7e
* __Request headers:__
```
accept: application/json
authorization: Bearer Wqafx26i8YFr8IxXJ-xzUamywFbkpYdlfbwSmJEnUcg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVz29rY_yQ-MAABsh
```
* __Response body:__
```json
{
  "data": {
    "id": "8422f965-ac09-41a9-937f-0d0965bd8e7e",
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
* __Path:__ /api/addresses/2942f408-1d90-486c-82b7-0ff6f31d1347
* __Request headers:__
```
accept: application/json
authorization: Bearer wPt2LecFSfxR83a33WSsP1C6ii4g5LdZODGQ7STiqh8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0XXiri-1icAAChi
```
* __Response body:__
```json
{
  "data": {
    "id": "2942f408-1d90-486c-82b7-0ff6f31d1347",
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
    "name": "address-576460752303413502"
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
authorization: Bearer bcgsU4fQZuXMyohPgJWA0kb00ElYs2HmGpDsCZIG6RA=
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
x-request-id: FzIQVz5-CH6wO2kAABXE
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
* __Path:__ /api/addresses/965c07ec-3727-4db0-a622-cf415c4386f2
* __Request headers:__
```
accept: application/json
authorization: Bearer lhQmY4Uqmt8ECmh2iV9BWi2D3DGE_JqwmynxHhPpYb8=
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
x-request-id: FzIQV0KgkFE-cd4AAB6h
```
* __Response body:__
```json
{
  "data": {
    "id": "965c07ec-3727-4db0-a622-cf415c4386f2",
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
* __Path:__ /api/addresses/965c07ec-3727-4db0-a622-cf415c4386f2
* __Request headers:__
```
accept: application/json
authorization: Bearer lhQmY4Uqmt8ECmh2iV9BWi2D3DGE_JqwmynxHhPpYb8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0LcLzA-cd4AABlE
```
* __Response body:__
```json
{
  "data": {
    "id": "965c07ec-3727-4db0-a622-cf415c4386f2",
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
* __Path:__ /api/addresses/a9f62d9b-0b79-49db-8c09-4811feb76638
* __Request headers:__
```
accept: application/json
authorization: Bearer 25df5nxm4nP67YE-wMHB0MS7gBkvEd-VVTQ8xBVTR6A=
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
x-request-id: FzIQVxitsfo2zqsAAAjD
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
* __Path:__ /api/addresses/8f9b6624-797e-401e-9bfe-af30144a0990
* __Request headers:__
```
accept: application/json
authorization: Bearer 6ORaduP31LBjRZJ4MUale13OkGVVvG9-ASLm1HDJh4I=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzTZV_nxDYQAABdh
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
authorization: Bearer 3yEErYi2kl-8bX89VXTPHPUK5573AHpzxBwNcfZ-eQM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzhKqLIi0SUAAB5C
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "c8c844ef-d54a-42ac-8ece-35c92c1a808f",
      "license_plate": "license--576460752303415838",
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
authorization: Bearer NAeIwEQahDxR_8e_o8qOQxKWDoak84OgTN7hJlZ17Uw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303418300",
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
x-request-id: FzIQVz2WPcBKm-UAABRk
location: /api/cars/9eae7c71-ce3a-42ab-84c5-0128d5486eb8
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "9eae7c71-ce3a-42ab-84c5-0128d5486eb8",
    "license_plate": "license--576460752303418300",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/9eae7c71-ce3a-42ab-84c5-0128d5486eb8
* __Request headers:__
```
accept: application/json
authorization: Bearer NAeIwEQahDxR_8e_o8qOQxKWDoak84OgTN7hJlZ17Uw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVz3MsBtKm-UAABSE
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "9eae7c71-ce3a-42ab-84c5-0128d5486eb8",
    "license_plate": "license--576460752303418300",
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
authorization: Bearer GyVVim5HnBKeMkIWnYtm9YID81ngPt_Y0JvLGVor4mY=
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
x-request-id: FzIQVzy7FvrqWLcAABrh
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
* __Path:__ /api/cars/229a08b0-7bf6-4b08-8371-aa167799172f
* __Request headers:__
```
accept: application/json
authorization: Bearer rJwtDKkIhA7FT84o_RzoUxr5HGRj1r2tVszT6UaQxLE=
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
x-request-id: FzIQVxiue3srNeMAAAjj
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "229a08b0-7bf6-4b08-8371-aa167799172f",
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
* __Path:__ /api/cars/7046c810-efe0-4263-aa77-74c5c9ed806b
* __Request headers:__
```
accept: application/json
authorization: Bearer ZKqVFV_jIN050m1Cys5juHsevchYL0zHlR3et1KAZcI=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzvGw2I1gZoAABNk
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
  "email": "user-576460752303420189@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzNfjCgujeMAAA0j
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
  "email": "user-576460752303420637@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVy2Ahh9NvVwAAAvD
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
x-request-id: FzIQVxmYO8QxC48AAA-B
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
* __Path:__ /api/confirm/10iu2wbC5Omz4Y7IT0LsB7pH79xUCa6QD4XbdHlpPcA
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
x-request-id: FzIQVywQpX4HsB4AAA1E
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
* __Path:__ /api/confirm/10iu2wbC5Omz4Y7IT0LsB7pH79xUCa6QD4XbdHlpPcA
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
x-request-id: FzIQVyx9lKQHsB4AAAoD
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
x-request-id: FzIQVyzVGdtvhE0AAAqD
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
authorization: Bearer 17uvI0BjaB2dlQroVqhV03xx5Jvnp9jqd24lWjR308Y=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVxn5mNMizPQAAAmk
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
* __Path:__ /api/customers/3d00e083-8fa7-40ca-b2fd-c81999e56897
* __Request headers:__
```
accept: application/json
authorization: Bearer YVlzqcjGbqqe-7bbZzhmqJzJNLxYTCsry6-6kCAc9wk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzDDeYYHqN8AAA8E
```
* __Response body:__
```json
{
  "data": {
    "id": "3d00e083-8fa7-40ca-b2fd-c81999e56897"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/233bbd69-fa2b-43cd-8d29-313989d68d13
* __Request headers:__
```
accept: application/json
authorization: Bearer YVlzqcjGbqqe-7bbZzhmqJzJNLxYTCsry6-6kCAc9wk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzEOWFkHqN8AAAyj
```
* __Response body:__
```json
{
  "data": {
    "id": "233bbd69-fa2b-43cd-8d29-313989d68d13"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/62522f19-ce4f-4a90-ba0f-153cc4e52a30
* __Request headers:__
```
accept: application/json
authorization: Bearer 70fh9l5Gzw3MGDh3TnkO0EoAwCFzkmS2kqarSEri_7Y=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzHbC6e5zl0AABgC
```
* __Response body:__
```json
{
  "data": {
    "id": "62522f19-ce4f-4a90-ba0f-153cc4e52a30"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/158a031c-81d0-4e2c-bac4-10addb10a8e9
* __Request headers:__
```
accept: application/json
authorization: Bearer 70fh9l5Gzw3MGDh3TnkO0EoAwCFzkmS2kqarSEri_7Y=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzILBDm5zl0AABhi
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
authorization: Bearer _MgmI-ROUgXdHbAAXcgX8-PMt8vvYw3IUKQb7aBB_jw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVz8fcnfKBgwAACHi
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303416319@example.com",
      "id": "0b24dddf-0486-4088-9855-95d840f3ea8d",
      "name": "user-576460752303416351",
      "phone": "7202"
    },
    {
      "credit": 0,
      "email": "user-576460752303415358@example.com",
      "id": "17b1e288-c779-49ed-92a7-c35beed69edf",
      "name": "user-576460752303415390",
      "phone": "8163"
    },
    {
      "credit": 0,
      "email": "user-576460752303415102@example.com",
      "id": "99e67c0a-d1f8-4184-a556-2e32fef95215",
      "name": "user-576460752303415134",
      "phone": "8419"
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
authorization: Bearer zPkbOqL_C-UvBg0lAIozpJOeVL-LLd4JE7lzsiiLkw4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzqZzQp3Ud8AABmh
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "0fcd9e16-176e-45b8-b43a-6ce38134c285",
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
authorization: Bearer Ae_zPHwV3XmBgAJlrmXtGoe5dO2vrdpyryNn15jI4jQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0nLYiw53agAACGB
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303416508@example.com",
      "id": "7da4b3d8-61fa-4b76-8fbc-c783d699c128",
      "name": "user-576460752303416540",
      "phone": "7013"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/fe160b9a-045d-444e-befc-3e68d974d92a
* __Request headers:__
```
accept: application/json
authorization: Bearer JAhW4vTazlC9CxnTtuEei4QLlvjNIQI5wizuVloc8Ok=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzJJsj75dSMAABjC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303417663@example.com",
    "id": "fe160b9a-045d-444e-befc-3e68d974d92a",
    "name": "user-576460752303417695",
    "phone": "5858"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/672dabc7-1401-4f38-b0fb-2f3987ca5fb2
* __Request headers:__
```
accept: application/json
authorization: Bearer JAhW4vTazlC9CxnTtuEei4QLlvjNIQI5wizuVloc8Ok=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzKNQUT5dSMAABAk
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303419420@example.com",
    "id": "672dabc7-1401-4f38-b0fb-2f3987ca5fb2",
    "name": "user-576460752303419452",
    "phone": "4101"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/62b0c14a-7138-4902-92f3-6e909946571e
* __Request headers:__
```
accept: application/json
authorization: Bearer Hcy93YfFa6zhDk-jCL5ofRR7OGy73BixZgBHeZ42V5M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0e_Tc1jffoAABrE
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303412638@example.com",
    "id": "62b0c14a-7138-4902-92f3-6e909946571e",
    "name": "user-576460752303412670",
    "phone": "10883"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/9996b01f-ca26-42ba-a1d6-4bb22b2ce97c
* __Request headers:__
```
accept: application/json
authorization: Bearer Hcy93YfFa6zhDk-jCL5ofRR7OGy73BixZgBHeZ42V5M=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0gZWZ9jffoAABeD
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
authorization: Bearer vN2dAmWTHG8MqRqUfpSzpuTEosF_glt77diNb_Xokvs=
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
x-request-id: FzIQV0AbYLCFC8gAABxh
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
authorization: Bearer 1q4XUlD4US2lDHGg0tQe2sL-9H9llHqMEuj530fmRXc=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303417725"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0ZthnWyA_YAABaj
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
authorization: Bearer T-kX6rKS6QRQ3gfFyS3ZQgEFrE41bKvLocYxrCuTctE=
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
x-request-id: FzIQV0NpvVu211kAABmE
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
authorization: Bearer T-kX6rKS6QRQ3gfFyS3ZQgEFrE41bKvLocYxrCuTctE=
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
x-request-id: FzIQV0Rpscm211kAABSD
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
authorization: Bearer T-kX6rKS6QRQ3gfFyS3ZQgEFrE41bKvLocYxrCuTctE=
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
x-request-id: FzIQV0VlBtO211kAABVD
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
authorization: Bearer 6dp06H6MsHz4Xmv4C0WyTlTEnI4wqH5ZGJprD0uXsr4=
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
x-request-id: FzIQVyFErWlfr7wAAAkD
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
authorization: Bearer kZk3FyD09LAIgtbjki8DlBSuVuNX2P_cSGY__3eUUlc=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "c8ff8207-da8e-4f77-ac97-d9c1c1da0f64"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzFIntaVtK0AABaB
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
authorization: Bearer KDcaKuAXBpHFYh0jV9fl0A7L6XoGHt4pogbHdW_vF54=
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
x-request-id: FzIQV2SHtXSWrtQAAC_h
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "9c455c93-7beb-4a0a-aea3-09aeef95519f"
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
authorization: Bearer fb_wa5w8SHW22D66M_T_5M_Jtms4KJS-JVFhP6iTzOo=
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
x-request-id: FzIQV2PrXXF-fHgAAC-B
```
* __Response body:__
```json
{
  "data": {
    "id": "44bca59d-5af0-425b-a774-37a6eb337f1f",
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
authorization: Bearer fb_wa5w8SHW22D66M_T_5M_Jtms4KJS-JVFhP6iTzOo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV2QHbd1-fHgAAC-h
```
* __Response body:__
```json
{
  "data": {
    "id": "44bca59d-5af0-425b-a774-37a6eb337f1f",
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
authorization: Bearer qLXczdydXBzk3wokgI0Lgh-JgZVytajYNwWRbkyXTas=
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
x-request-id: FzIQV2RHd-kJ4ngAAC_B
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
authorization: Bearer 7vfVrw6G6vZlWCmcOyTyrrkq-v1MBPi6CjIVOb1DadQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV18KEyLV79MAACwB
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
authorization: Bearer 7vfVrw6G6vZlWCmcOyTyrrkq-v1MBPi6CjIVOb1DadQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV18ttPvV79MAACxB
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
      "id": "6104eb62-0a2d-4908-b646-08943ec5c94f",
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
authorization: Bearer g4tsUHyzJeZf8k71lRHVehaYh2643bbgk1E04l0FdRI=
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
x-request-id: FzIQV12a9xHD980AADeC
location: /api/rates/148e89ee-7e4b-4277-b688-f21229d011b5
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
    "id": "148e89ee-7e4b-4277-b688-f21229d011b5",
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
* __Path:__ /api/rates/148e89ee-7e4b-4277-b688-f21229d011b5
* __Request headers:__
```
authorization: Bearer g4tsUHyzJeZf8k71lRHVehaYh2643bbgk1E04l0FdRI=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV121GqvD980AADei
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
    "id": "148e89ee-7e4b-4277-b688-f21229d011b5",
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
authorization: Bearer SrbeCbIjPdcQbhJhjGp7Xpk1fxUg9hn3SJ3eXcDzaZ8=
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
x-request-id: FzIQV15qrzf2fxsAADii
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
authorization: Bearer ml9I8ZXDLDqcwZX6-ar4r8RdKSw7c0IHNNSOdaXn7Rw=
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
x-request-id: FzIQV13xNRcQbJQAADgi
location: /api/rates/7bde503a-81de-4c0f-ba26-e67fc833b465
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
    "id": "7bde503a-81de-4c0f-ba26-e67fc833b465",
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
* __Path:__ /api/rates/7bde503a-81de-4c0f-ba26-e67fc833b465
* __Request headers:__
```
authorization: Bearer ml9I8ZXDLDqcwZX6-ar4r8RdKSw7c0IHNNSOdaXn7Rw=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV14iP-wQbJQAACtB
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
    "id": "7bde503a-81de-4c0f-ba26-e67fc833b465",
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
authorization: Bearer Y3LRts0bwWUsbKRvfvBgE3s50gHICBWWT2uwApC0uWs=
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
x-request-id: FzIQV2DLjQeHABAAADjC
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
* __Path:__ /api/rates/update_time_rate/974d3352-3680-4666-9e41-b21125006e50
* __Request headers:__
```
authorization: Bearer nDex_21Jnbut3DB2dpbeksqmWqTyMQ7YOlhqbrQUl9U=
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
x-request-id: FzIQV106QEqv2JYAACsh
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
    "id": "974d3352-3680-4666-9e41-b21125006e50",
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
* __Path:__ /api/rates/974d3352-3680-4666-9e41-b21125006e50
* __Request headers:__
```
authorization: Bearer nDex_21Jnbut3DB2dpbeksqmWqTyMQ7YOlhqbrQUl9U=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV11d3PKv2JYAADcC
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
    "id": "974d3352-3680-4666-9e41-b21125006e50",
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
* __Path:__ /api/rates/update_time_rate/412f0e4c-fc45-4fba-ae53-0b4925c0dc35
* __Request headers:__
```
authorization: Bearer jLp70L19x0w5IktGtCE0C9can1UX6yhEHCNLbUbjhKA=
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
x-request-id: FzIQV2CMlYfcBM8AAC5h
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
* __Path:__ /api/rates/update_area_rate/822d91e1-ad47-46ea-8be4-8e1198ff4e4b
* __Request headers:__
```
authorization: Bearer JL1hMrDunBFYQu33VF5flDcKcyXgsO2LZTh8JDZ1UCg=
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
x-request-id: FzIQV16pD_wX9DQAACth
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
    "id": "822d91e1-ad47-46ea-8be4-8e1198ff4e4b",
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
* __Path:__ /api/rates/822d91e1-ad47-46ea-8be4-8e1198ff4e4b
* __Request headers:__
```
authorization: Bearer JL1hMrDunBFYQu33VF5flDcKcyXgsO2LZTh8JDZ1UCg=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV17Jt78X9DQAACuB
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
    "id": "822d91e1-ad47-46ea-8be4-8e1198ff4e4b",
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
* __Path:__ /api/rates/update_area_rate/817287fb-7df8-4d22-8e1d-2389919c60ce
* __Request headers:__
```
authorization: Bearer cybvtWh92ij3EEbpWzACxAAOYwFhQhy10fVSjyiGCaM=
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
x-request-id: FzIQV2BJ4b7pNAIAAC3h
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
authorization: Bearer djUHvLnE6kXMXMpabNvB_Hs5uXJIRE-Hjw7wYLFQmjI=
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
x-request-id: FzIQV1xUypMlp20AACnE
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
authorization: Bearer SJSdQSWx_4VIA731C1dj8-lORjYxPYKosjCmHiF9bZE=
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
x-request-id: FzIQV1zWNxOZ2XgAADbC
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
authorization: Bearer 9x4kpb3Ex0_hArEjVBD7bHgQoPr9XZB4tCwrYSNGSqo=
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
x-request-id: FzIQV1-WEcCyqccAACzB
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
    "email": "user-576460752303416158@example.com",
    "name": "user-576460752303416126",
    "password": "hello world!",
    "phone": "7427"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzdy5IS6aiYAAB0i
```
* __Response body:__
```json
{
  "data": {
    "id": "c09fe428-e1b0-4a22-bb78-d6fc8e1293c1",
    "token": "JpCRVpnv3WsGMCqwac8teC2slILDKEvPN-fYWk60rmY="
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
x-request-id: FzIQVztQz8AbUskAABoB
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
    "email": "user-576460752303419645@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303419613",
    "password": "hello world!",
    "phone": "3940"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzm8gAr2rcQAAA-D
```
* __Response body:__
```json
{
  "data": {
    "id": "ae003cb8-717c-4388-9bf4-7a6e3b13ce26",
    "token": "xdyqQ6bzW88paW_gsCA9rJhop-kD35cC1mWIJYz3u18="
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
    "email": "user-576460752303418110@example.com",
    "name": "user-576460752303418078",
    "password": "hello world!",
    "phone": "5475"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVyrLCVqIlyAAABWC
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
    "email": "user-576460752303416318@example.com",
    "name": "user-576460752303416286",
    "password": "hello world!",
    "phone": "7267"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzaa6q-pjmsAAByC
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
x-request-id: FzIQVzlvmt56t-8AAB6C
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
  "email": "user-576460752303416414@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQVzYx-RThiugAABvi
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
x-request-id: FzIQVzWEqjqBlzQAABti
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
* __Path:__ /api/reset_password/gRKZPbiYLTnrkcKSEAPmInoLcA_4PRQ1KtNpCqysxVE
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
x-request-id: FzIQVyuCAwM-0L0AABYC
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
* __Path:__ /api/reset_password/XLAEFVf6nQZEIH20FCboBo_QXRE2vcV_XC-HNhGXiAg
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
x-request-id: FzIQVyxL7tUInlcAABKh
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
x-request-id: FzIQVzSbhCr0wb8AABrC
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
authorization: Bearer J5p8gRA7o7OXEfoPW8voaJcmZmpUDOjSuDmKCkfSoX0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0mNtS4duLcAABkj
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
      "id": "e5492c79-a38f-4424-9be9-462afa8d9cc6",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "8f660373-3bdb-479e-9863-0d05bb15e933",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "c887d576-7483-4e77-b969-1f2f176a42f5",
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
authorization: Bearer ehe-cIWqEop1pO8QU7dB3EQGD5gdpxSTRWwfkbveiPw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1N5fcHc1FcAACRk
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
      "id": "9b007c44-902b-4afa-bde9-d095ddad4478",
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
authorization: Bearer ZE1LQUikKXOqfiGHkkD7A2T0qKopsHF2pbrJ3LnwtZ0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0YMkp2mj9AAABZD
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
      "id": "120d4f4a-029c-4183-bf9a-bca699eb9637",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "6a568875-a522-4b80-9056-2da0e6a0a580",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/7fcbf4dc-e5f7-4ef6-8538-f5e20849f0a8
* __Request headers:__
```
accept: application/json
authorization: Bearer Xry_P-qwIeA9Lx7XYwowkqXY63-77QawEXwvp7asU7M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1HQD_7k9KwAADUC
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
    "id": "7fcbf4dc-e5f7-4ef6-8538-f5e20849f0a8",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/447de5d2-7906-46df-9b03-e1741ab1ced3
* __Request headers:__
```
accept: application/json
authorization: Bearer Xry_P-qwIeA9Lx7XYwowkqXY63-77QawEXwvp7asU7M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1Hpfr_k9KwAADUi
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
    "id": "447de5d2-7906-46df-9b03-e1741ab1ced3",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/fe1bc72b-1bc4-473f-b7f2-a12634abdcac
* __Request headers:__
```
accept: application/json
authorization: Bearer 57PtjljJN7_VfDd52TALYDddM7lfpAM-JvlobuXsEjM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0uBJG7p4CAAAB1k
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
    "id": "fe1bc72b-1bc4-473f-b7f2-a12634abdcac",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/60bd1b98-90a5-4007-8a49-3972c6ae5d2c
* __Request headers:__
```
accept: application/json
authorization: Bearer zHPpghYv9f-00TgneLTASYTs6JYtyT5uWWLp3hzgN1A=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1BuRTHk2UUAAB2D
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
    "id": "60bd1b98-90a5-4007-8a49-3972c6ae5d2c",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/515d61da-ead1-40e4-a10f-eca43e8d8c27
* __Request headers:__
```
accept: application/json
authorization: Bearer U_FZ_WEUuNb5-PtSk_E3m6rEF5Z3ui08aFNJV84hKk4=
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
x-request-id: FzIQV05UmUbApIMAAC-i
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
    "id": "515d61da-ead1-40e4-a10f-eca43e8d8c27",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/70e9be34-bd7f-4d0e-b15b-f702956692a7
* __Request headers:__
```
accept: application/json
authorization: Bearer 9GacKDnQAxhQspctauGgpDC1ATBDA3qnj023yLVNxvA=
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
x-request-id: FzIQVzO8uoB-ItAAAA1D
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
    "id": "70e9be34-bd7f-4d0e-b15b-f702956692a7",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/2bda44e1-5c90-465a-a82f-f46bd1f90d80
* __Request headers:__
```
accept: application/json
authorization: Bearer UiOxzF7MTeoIt11jUg3X-p62yV7-AqLGq8pmQuXfHKI=
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
x-request-id: FzIQVz-Lj_OZONIAACIC
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
    "id": "2bda44e1-5c90-465a-a82f-f46bd1f90d80",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/2efc1594-a4ce-4a26-9439-ed2053421a60
* __Request headers:__
```
accept: application/json
authorization: Bearer BTylf6u6KWg82jRh0O_j0aNkJW2jtpoLLH2h6kO6Eys=
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
x-request-id: FzIQV0zTZSXrzlUAAC8i
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
    "id": "2efc1594-a4ce-4a26-9439-ed2053421a60",
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
authorization: Bearer SKp6B8pbvWuxqH9z93LirXzIY5RRrvdD1GJ7T4Lpl0c=
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
    "ride_request_id": "68b7c248-ada6-4383-8882-d91ab9d8ede7",
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
x-request-id: FzIQV1iV0ZUWZRYAACBj
```
* __Response body:__
```json
{
  "data": {
    "id": "1b35bfd8-8e44-47d7-a4d6-6a91ca9c9a9a",
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
authorization: Bearer -IOlxsEluSUSDmPJyVLqe5yv9tQfFYQGRX98Vvl25Uc=
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
x-request-id: FzIQV1bb5xlkp4IAACWE
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
* __Path:__ /api/rides/accept/6cb3794f-7e1b-45f4-a930-13761582197a
* __Request headers:__
```
accept: application/json
authorization: Bearer 9vsuHCBcVYkQPMJX9iW9Uodj7n8nOxz0hJ72FkcRExM=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1de8k05VOUAACcE
```
* __Response body:__
```json
{
  "data": {
    "id": "6cb3794f-7e1b-45f4-a930-13761582197a",
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
* __Path:__ /api/rides/accept/d3ae0860-3c41-4b81-b5ba-3f55804212e0
* __Request headers:__
```
accept: application/json
authorization: Bearer 7apnGHXTOmA23HYdcwfrpKP24YZ8IzqSvJDK3JvZbwE=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1fvh2BkTuIAAChh
```
* __Response body:__
```json
{
  "data": {
    "id": "d3ae0860-3c41-4b81-b5ba-3f55804212e0",
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
* __Path:__ /api/rides/accept/d3ae0860-3c41-4b81-b5ba-3f55804212e0
* __Request headers:__
```
accept: application/json
authorization: Bearer 7apnGHXTOmA23HYdcwfrpKP24YZ8IzqSvJDK3JvZbwE=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1gZhqxkTuIAACiB
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
  "email_or_phone": "user-576460752303417372@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0JEGNUC66cAABgk
```
* __Response body:__
```json
{
  "data": {
    "token": "Yt4MCqlKY5UPel2Pd3p_gR-AopZAqgCmtbPIQ3kVewY="
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
  "email_or_phone": "9955",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0QUqRw2XiQAACci
```
* __Response body:__
```json
{
  "data": {
    "token": "vqZxBiTDhnPmz3UMyCdT29KqVYoNEZ8SkOjF6_mOdgo="
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
  "email_or_phone": "user-576460752303413854@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0M7B5o8hU8AABlk
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
  "email_or_phone": "4740",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0E15fcbA-MAABek
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
authorization: Bearer YVJdsBibhxyBsbGP-qjvJ3pyUpw-_seAm-Lj7cs8iTM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0HSRdHjOnIAACRC
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
x-request-id: FzIQV0La39cHPXkAAB-B
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
authorization: Bearer RU-WYEXcXibBMKe1Idi9lY7-MxOfZDHmjpm63o1W66U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV07QXThfVCkAAB8E
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303415708@example.com",
      "id": "0ebfa047-cb93-4ad1-8d8f-e2f4aeba22b0",
      "name": "user-576460752303415740",
      "phone": "7813"
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
authorization: Bearer WMauXOV7G53RXRHXU6xOR7EEkftgWg8sQE_qIQXpSJQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV05rbrf3E3wAAB4k
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "29612a9b-4ab9-464c-8226-4c46bd2b3333",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303416221@example.com",
      "id": "1eb61ee8-a192-4975-81d4-150a1deaff09",
      "name": "user-576460752303416253",
      "phone": "7300"
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
authorization: Bearer c7DCwT1r_Kv6j2_gY_jmfxL5pakV4F9-fW6bhJVO3k0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0vq-M-_uFgAABsj
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "9d0e445b-9954-4a0e-a12a-400f2925791c",
      "license": "licence-576460752303416605"
    },
    "user": {
      "email": "user-576460752303411774@example.com",
      "id": "bdd13f56-3617-4b38-a4b7-8e02e7cf5457",
      "name": "user-576460752303411806",
      "phone": "11747"
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
authorization: Bearer Gwn6M2NHG0Iijd3IAzLYwtK2M4Wp4Be6WcmGoEVvQPo=
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
x-request-id: FzIQV0zkUX3w-iEAAB2k
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "2c8E9bP_9ZgcG1SNIMDaxffYzgTn_M3Xkth7TkCjUL8="
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
authorization: Bearer VFgotHGPIDD_UH5BYbqBxOedYNuDKVa3PvxggRkx5BQ=
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
x-request-id: FzIQV0xB9_cmw0QAACKB
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
authorization: Bearer R7HSRHsIJ0ofYrH_riXScvpNRBCxI6fwMNlVXEwg-hQ=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303415901@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1CfbrAbnVIAAB3D
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
authorization: Bearer -J47bhz3pzf6MemXNaePFrsDP2kiJU3Ms9-_-XIsYE4=
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
x-request-id: FzIQV0tgnSzGb5EAAC2C
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
authorization: Bearer YOvq-l7sHDruC0bxKEZx5TvYKVA04JcnXUFEttN6hlo=
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
x-request-id: FzIQV1BOJFkngKEAAB1j
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
      "id": "242e4930-01bb-4732-8f9e-74787e9b8a08",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303413823@example.com",
      "id": "1bc95111-4155-466a-bc47-d6a174272532",
      "name": "user-576460752303413855",
      "phone": "9698"
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
authorization: Bearer CmxFzKNQ-rSpXK1cNOXx3YKMR4Y2phThyMYmHbC_Du4=
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
x-request-id: FzIQV03odWCLgh4AACSh
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "e0b87c84-5261-4849-abc4-a5b21b9c5e12",
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
      "email": "user-576460752303414335@example.com",
      "id": "197dfac0-e494-44e2-886a-825d49219bce",
      "name": "user-576460752303414367",
      "phone": "9186"
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
authorization: Bearer HOdXcBf18kbZjut0V-OmJm4kHk6IqrKXba5Fm9tlW30=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303416029",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0_o03ieDnsAAB1D
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
authorization: Bearer JbKDV6xYnoKLyTGnOjgyclImAQlAem-Mr8NaiO_m2o0=
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
x-request-id: FzIQV0-KFVHyy1gAACUh
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
* __Path:__ /api/confirm_email/-2yk2gU3JevrrxjhPwTcwnOzkJnp86FgBih1bZVFFvQ
* __Request headers:__
```
accept: application/json
authorization: Bearer ZG3dpHinGfVoKmr0EZHNGC7B2i6Lv0W262pTHomQqJc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0nq7BlqFagAABvk
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
authorization: Bearer b6kyTYCInuNf_krAPUyPwMYQH7iz-arYI7_51mvszxg=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV0sGn3-jgTYAABrD
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
authorization: Bearer a0Ochhm1ChqzKygvoeF1LFWolxy3_xlI80DWrOAm_SI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzIQV1aNiZkAeg4AACUE
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "e82b23fa-6e66-4701-988c-df472469370b"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/287c9abc-3cfb-405f-83e5-d2d7ab5d0b71
* __Request headers:__
```
accept: application/json
authorization: Bearer fhSVkuWOZX7XOOPZ1iH4VP05IYtKPwAe-LZ9ff9DD4g=
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
x-request-id: FzIQV1QDbEpT6WgAAB7j
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "287c9abc-3cfb-405f-83e5-d2d7ab5d0b71"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/287c9abc-3cfb-405f-83e5-d2d7ab5d0b71
* __Request headers:__
```
accept: application/json
authorization: Bearer fhSVkuWOZX7XOOPZ1iH4VP05IYtKPwAe-LZ9ff9DD4g=
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
x-request-id: FzIQV1RIo3BT6WgAAB8D
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "287c9abc-3cfb-405f-83e5-d2d7ab5d0b71"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/1d435abc-ec98-4e28-91b4-e0a010b3ce62
* __Request headers:__
```
accept: application/json
authorization: Bearer CHSJTE8L0hFf6BBpSEOzzwHueqeVUOXaQ1N8rq0bRjE=
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
x-request-id: FzIQV1Y_cSevcEwAAB_D
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

