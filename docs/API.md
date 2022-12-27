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
  "id": "1926273e-de6b-4a67-8b8b-0d875a7c1282",
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
* __Topic:__ rides:47e775c9-b9a9-4c37-a6ac-2520704993e2
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:47e775c9-b9a9-4c37-a6ac-2520704993e2
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
* __Topic:__ rides:50e04fde-af26-428a-8cca-1c78faf86c37
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:50e04fde-af26-428a-8cca-1c78faf86c37
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
* __Topic:__ rides:6fd02590-731a-4dc4-b162-18ac057e1474
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:6fd02590-731a-4dc4-b162-18ac057e1474
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
* __Topic:__ rides:e13fec18-47b3-48c6-918e-87a97fcdaaa8
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:e13fec18-47b3-48c6-918e-87a97fcdaaa8
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
* __Topic:__ rides:dd5d4be6-4f93-404f-92a2-c65474a6ec4a
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
* __Topic:__ rides:dd5d4be6-4f93-404f-92a2-c65474a6ec4a
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:dd5d4be6-4f93-404f-92a2-c65474a6ec4a
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
* __Topic:__ rides:b3d29f4b-2a99-4510-83e7-d50719497696
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
* __Topic:__ rides:b3d29f4b-2a99-4510-83e7-d50719497696
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:b3d29f4b-2a99-4510-83e7-d50719497696
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
authorization: Bearer 6VCKuh28gr8QwgIt7xvkTpOwcXhoqPcZ8mjGoj_FXaY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZnSlx4AlccAACik
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
authorization: Bearer YnTl401Mh7e46XWLIsNrh4RD4kNlRhXdZ4HqFToP7yU=
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
x-request-id: FzTGOWdlu25KS7QAAApj
```
* __Response body:__
```json
{
  "data": {
    "id": "56109389-306f-4f9e-b6b2-686d238247e5",
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
* __Path:__ /api/addresses/56109389-306f-4f9e-b6b2-686d238247e5
* __Request headers:__
```
accept: application/json
authorization: Bearer YnTl401Mh7e46XWLIsNrh4RD4kNlRhXdZ4HqFToP7yU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYgGrLZKS7QAABDi
```
* __Response body:__
```json
{
  "data": {
    "id": "56109389-306f-4f9e-b6b2-686d238247e5",
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
* __Path:__ /api/addresses/b5009746-527f-4999-a031-9fb6f04169cb
* __Request headers:__
```
accept: application/json
authorization: Bearer xrNOuJ3YM-SbjS2sxO0-mna7M6zl8TAhcCdU5xwNjUY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZXGVekC5NQAACRE
```
* __Response body:__
```json
{
  "data": {
    "id": "b5009746-527f-4999-a031-9fb6f04169cb",
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
    "name": "address-576460752303416957"
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
authorization: Bearer m6l6GMY7PE6U7VoOC2dKUjdnic2QPwDBpm_HwMDwDoc=
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
x-request-id: FzTGOZqDn9prrjAAABvi
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
* __Path:__ /api/addresses/bc95594c-4f42-4406-b478-bf73de50d693
* __Request headers:__
```
accept: application/json
authorization: Bearer vw-gk8QamEUO1QuthV_4OUkAaudfloWpgueMeV_0PMo=
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
x-request-id: FzTGOZCjzeMZQsUAAB7h
```
* __Response body:__
```json
{
  "data": {
    "id": "bc95594c-4f42-4406-b478-bf73de50d693",
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
* __Path:__ /api/addresses/bc95594c-4f42-4406-b478-bf73de50d693
* __Request headers:__
```
accept: application/json
authorization: Bearer vw-gk8QamEUO1QuthV_4OUkAaudfloWpgueMeV_0PMo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZEJTx4ZQsUAABQC
```
* __Response body:__
```json
{
  "data": {
    "id": "bc95594c-4f42-4406-b478-bf73de50d693",
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
* __Path:__ /api/addresses/86524804-3a9a-4462-a03f-151da2620722
* __Request headers:__
```
accept: application/json
authorization: Bearer jk7f-qaK-DlssmxtkPbixWAD4e4LrRCpOmmf9t6G4qA=
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
x-request-id: FzTGOZIiE4j7sk4AACFE
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
* __Path:__ /api/addresses/1872c56e-0fe3-4695-8d18-a120587ccc0d
* __Request headers:__
```
accept: application/json
authorization: Bearer ZXzHm07D28jcrk3p2OiCzmwo-fQgurDcYY4vr1rDMqo=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZi9AQlZH78AACYh
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
authorization: Bearer hHcefG0RLYEEywDBZfNG2PnmheZ56Tjj7fNvt-zYx00=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZKsPieTCIMAABkD
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "5b86977e-f24f-44bd-9074-d39823ea45a3",
      "license_plate": "license--576460752303417117",
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
authorization: Bearer Vbh6R-EeC6PXvJHxlrWUrn25uiPHbB7s0H_FCXJ_3ps=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303417628",
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
x-request-id: FzTGOYXrfj9dCiIAABcE
location: /api/cars/015ccfd2-63e2-4c4f-990b-400285251bb0
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "015ccfd2-63e2-4c4f-990b-400285251bb0",
    "license_plate": "license--576460752303417628",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/015ccfd2-63e2-4c4f-990b-400285251bb0
* __Request headers:__
```
accept: application/json
authorization: Bearer Vbh6R-EeC6PXvJHxlrWUrn25uiPHbB7s0H_FCXJ_3ps=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYZXP-1dCiIAABah
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "015ccfd2-63e2-4c4f-990b-400285251bb0",
    "license_plate": "license--576460752303417628",
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
authorization: Bearer TYzHUZug-yNKz6GqbRosrx1ChPlsb-EqhReFdoy67mo=
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
x-request-id: FzTGOWdmMu9-8I0AAAqD
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
* __Path:__ /api/cars/63540bc2-0e04-49e1-9033-f7a37f8d988f
* __Request headers:__
```
accept: application/json
authorization: Bearer eAg1QNjnjcKiseyT1LYM4GBiH-A82FQhHm3OmKFlygM=
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
x-request-id: FzTGOYgaYHRIpbAAABRD
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "63540bc2-0e04-49e1-9033-f7a37f8d988f",
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
* __Path:__ /api/cars/640e6c1a-a597-46b1-b100-654e28c1e60b
* __Request headers:__
```
accept: application/json
authorization: Bearer uxhjBn8N2whug2bJtUwn7_bcac_vWuglA2g0T6_bP8A=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYrn9-EezcUAABrk
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
  "email": "user-576460752303418495@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYCYkt8MjqgAAA-j
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
  "email": "user-576460752303420989@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOWht0MjKS6cAAA_E
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
x-request-id: FzTGOYFRN652hioAABSB
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
* __Path:__ /api/confirm/RUVxpBaxl7igXeXgssWkkFsv8QUY6yd0-pmeoXfmqmw
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
x-request-id: FzTGOYJBnf0TRZEAABXB
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
* __Path:__ /api/confirm/RUVxpBaxl7igXeXgssWkkFsv8QUY6yd0-pmeoXfmqmw
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
x-request-id: FzTGOYKoIvkTRZEAABYB
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
x-request-id: FzTGOYGVhX96PsYAABAj
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
authorization: Bearer YXutO7QVojtkNfbcwv8Vas6VBhemVLqJYhPBUGdZKA8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOWhs9BpFzQQAAArC
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
* __Path:__ /api/customers/ca365880-6315-4515-864b-1e15b51381b8
* __Request headers:__
```
accept: application/json
authorization: Bearer XVOnYzaI1HXzys0zn1UNv69LNQjz6boSAD5Q2L7QtUU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYJ7cjd-ItAAABSk
```
* __Response body:__
```json
{
  "data": {
    "id": "ca365880-6315-4515-864b-1e15b51381b8"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/724d97fa-3fcd-4ce7-87bc-f963db4ad4a2
* __Request headers:__
```
accept: application/json
authorization: Bearer XVOnYzaI1HXzys0zn1UNv69LNQjz6boSAD5Q2L7QtUU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYLTme5-ItAAABYh
```
* __Response body:__
```json
{
  "data": {
    "id": "724d97fa-3fcd-4ce7-87bc-f963db4ad4a2"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/4fc50780-796d-4c99-9458-93c700c7d15a
* __Request headers:__
```
accept: application/json
authorization: Bearer 5i7eISLVHg1tV2-Fa_EooOA-NA7KWZva3Z8Xkc3EBic=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYE3nGuQsSkAABKk
```
* __Response body:__
```json
{
  "data": {
    "id": "4fc50780-796d-4c99-9458-93c700c7d15a"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/20ccaefa-e5ca-4ad7-96d8-755c38e97e17
* __Request headers:__
```
accept: application/json
authorization: Bearer 5i7eISLVHg1tV2-Fa_EooOA-NA7KWZva3Z8Xkc3EBic=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYFs8FCQsSkAABLk
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
authorization: Bearer 6yLIJ9awIlGEKjJZoFzUZoa4WhyfQnw59CNFUgEa9C8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZECWzJ0MQ4AABPi
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303415804@example.com",
      "id": "a5388dbb-c78a-480b-83b4-e4858e4c8cac",
      "name": "user-576460752303415836",
      "phone": "7717"
    },
    {
      "credit": 0,
      "email": "user-576460752303415644@example.com",
      "id": "d57e2425-d558-4ad7-8401-fb129784af2b",
      "name": "user-576460752303415676",
      "phone": "7877"
    },
    {
      "credit": 0,
      "email": "user-576460752303418462@example.com",
      "id": "d5845213-f94e-4ebc-bf8e-86b3e5bb6c70",
      "name": "user-576460752303418494",
      "phone": "5059"
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
authorization: Bearer qw__5X2iD-0sibAmlVKZ7DRzOn4a0BcNvSoqDC0blOI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZmSiQB1EPAAAChE
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "3fe50663-486e-4d80-a484-87de1936aaeb",
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
authorization: Bearer PdUqgMfof0ArOnaUI7WEHbESDAkDHN5qLI89XuQp0SI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZa6ALbsvpkAACPh
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303414780@example.com",
      "id": "944657eb-525f-4640-904c-93971a5def5c",
      "name": "user-576460752303414812",
      "phone": "8741"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/92b014fc-e5a4-4a72-b091-33e3f9de32ec
* __Request headers:__
```
accept: application/json
authorization: Bearer Obt0RIY7wByOcqbWsA38aUOPto2guhdlQEK7w-djW9E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOXrnqi3QJIQAABMh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303420382@example.com",
    "id": "92b014fc-e5a4-4a72-b091-33e3f9de32ec",
    "name": "user-576460752303420414",
    "phone": "3139"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/561fbab7-03ca-4b1c-8dd5-c42c10409033
* __Request headers:__
```
accept: application/json
authorization: Bearer Obt0RIY7wByOcqbWsA38aUOPto2guhdlQEK7w-djW9E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYCm5ZDQJIQAAA8i
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303418719@example.com",
    "id": "561fbab7-03ca-4b1c-8dd5-c42c10409033",
    "name": "user-576460752303418751",
    "phone": "4802"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/018f59b0-8842-49cd-95d5-d9f601926a6d
* __Request headers:__
```
accept: application/json
authorization: Bearer ibAiPkZo13s4DtmxWiFNp4M3sYipvDA_EKAcjki_5nk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYZ0AVyWUsgAABBi
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303418845@example.com",
    "id": "018f59b0-8842-49cd-95d5-d9f601926a6d",
    "name": "user-576460752303418877",
    "phone": "4676"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/a3ed8b90-baae-4114-8e72-4b0ec1f5d150
* __Request headers:__
```
accept: application/json
authorization: Bearer ibAiPkZo13s4DtmxWiFNp4M3sYipvDA_EKAcjki_5nk=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYba7E-WUsgAABiE
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
authorization: Bearer UlBFbNTB_qEIFPz8oVjc2BZ0sGmpJk2cEebMEdlE-_c=
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
x-request-id: FzTGOZdhEEaFqAkAABrD
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
authorization: Bearer IKaaP1eb_5LvVFAEvpC8eVVCovDcAmsGSnXdw2roYTo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303417980"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYQzQ7ePuKQAABWk
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
authorization: Bearer psYLTZqkpQo-LDgwi8D0wgzB7Pon3HrME2-mRBRClSM=
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
x-request-id: FzTGOYKQwcB7Ec4AABTE
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
authorization: Bearer psYLTZqkpQo-LDgwi8D0wgzB7Pon3HrME2-mRBRClSM=
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
x-request-id: FzTGOYMHevN7Ec4AAA-C
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
authorization: Bearer psYLTZqkpQo-LDgwi8D0wgzB7Pon3HrME2-mRBRClSM=
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
x-request-id: FzTGOYM-ZDB7Ec4AAA-i
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
authorization: Bearer UwVvWIR2qGu3z12omXQgOdCnH87lYjRJXPSjlMLMRkA=
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
x-request-id: FzTGOYT1X8HcP2sAABAC
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
authorization: Bearer __fU47jQvkOxKrs8aysv7VcjxZEJrmVfhDwCJe0sXAU=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "869dd427-72d7-4cc7-9d76-ba17b4c14e49"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZLfYaWNRcQAABZi
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
authorization: Bearer zrj1D_7_opKH9Ac6beP3AwsH58ABwIiNnaCmwq9ysIk=
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
x-request-id: FzTGObpBRzz7rTkAAD1h
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "338821f2-0df5-47f8-aef4-fb38ba7ce247"
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
authorization: Bearer GFTdyu3rh9pRufIRmXNrn1S3QQY5X-DeJ9jONGmb5_k=
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
x-request-id: FzTGObmq08i8M-gAADxB
```
* __Response body:__
```json
{
  "data": {
    "id": "d24f1e3f-12a0-48c5-ac26-5f38d577fde0",
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
authorization: Bearer GFTdyu3rh9pRufIRmXNrn1S3QQY5X-DeJ9jONGmb5_k=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObnAvk28M-gAADxh
```
* __Response body:__
```json
{
  "data": {
    "id": "d24f1e3f-12a0-48c5-ac26-5f38d577fde0",
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
authorization: Bearer ymn_vfvrYQgItXiFydHhzClQCwyXQr7Xa2jZu8GF8No=
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
x-request-id: FzTGOblmvexFcNwAADvB
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
authorization: Bearer ZbfWVx_dz6umTuYHgRWgmOTUN-IJvesEHOGFkmKAgXQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObUfldycbbYAAC3D
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
authorization: Bearer ZbfWVx_dz6umTuYHgRWgmOTUN-IJvesEHOGFkmKAgXQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObU8SVqcbbYAAC4D
```
* __Response body:__
```json
{
  "data": [
    {
      "area": null,
      "description": "some description",
      "end": "21:34:00",
      "fixed_rate_familiar": null,
      "fixed_rate_premium": null,
      "fixed_rate_standard": null,
      "id": "dfca531f-3848-437f-a65b-adf339295236",
      "name": "some name",
      "rate_per_km_familiar": 42,
      "rate_per_km_premium": 42,
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
authorization: Bearer tG6T8n1K6r9oyAkMCLD3QiWTw0c6HGGBmkxO6R2GgN8=
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
    "rate_per_km_familiar": 44,
    "rate_per_km_premium": 43,
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
x-request-id: FzTGObJBB432fxsAACvD
location: /api/rates/1e87cace-8db0-453c-9c04-615ce403e305
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_familiar": null,
    "fixed_rate_premium": null,
    "fixed_rate_standard": null,
    "id": "1e87cace-8db0-453c-9c04-615ce403e305",
    "name": "some name",
    "rate_per_km_familiar": 44,
    "rate_per_km_premium": 43,
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
* __Path:__ /api/rates/1e87cace-8db0-453c-9c04-615ce403e305
* __Request headers:__
```
authorization: Bearer tG6T8n1K6r9oyAkMCLD3QiWTw0c6HGGBmkxO6R2GgN8=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObJZeyz2fxsAACvj
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some description",
    "end": "21:34:00",
    "fixed_rate_familiar": null,
    "fixed_rate_premium": null,
    "fixed_rate_standard": null,
    "id": "1e87cace-8db0-453c-9c04-615ce403e305",
    "name": "some name",
    "rate_per_km_familiar": 44,
    "rate_per_km_premium": 43,
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
authorization: Bearer yAHernh_IGHW22ibuq0wmTpBHaMm5iqoG2CG6c6H9EM=
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
x-request-id: FzTGObQpU8iJqKMAAC1D
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
    "rate_per_km_familiar": [
      "can't be blank"
    ],
    "rate_per_km_premium": [
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
authorization: Bearer z9te8srUuocq8xXqcJDYjbeVA9eGEwgVo71kN4g3d3w=
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
    "fixed_rate_familiar": 44,
    "fixed_rate_premium": 43,
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
x-request-id: FzTGObYAYUDejjQAAC4j
location: /api/rates/82dbc91a-f96c-4ce3-96fc-4280ff0d7e31
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
    "fixed_rate_familiar": 44,
    "fixed_rate_premium": 43,
    "fixed_rate_standard": 42,
    "id": "82dbc91a-f96c-4ce3-96fc-4280ff0d7e31",
    "name": "some name",
    "rate_per_km_familiar": null,
    "rate_per_km_premium": null,
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
* __Path:__ /api/rates/82dbc91a-f96c-4ce3-96fc-4280ff0d7e31
* __Request headers:__
```
authorization: Bearer z9te8srUuocq8xXqcJDYjbeVA9eGEwgVo71kN4g3d3w=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObYZJSnejjQAAC5D
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
    "fixed_rate_familiar": 44,
    "fixed_rate_premium": 43,
    "fixed_rate_standard": 42,
    "id": "82dbc91a-f96c-4ce3-96fc-4280ff0d7e31",
    "name": "some name",
    "rate_per_km_familiar": null,
    "rate_per_km_premium": null,
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
authorization: Bearer 9NuvIGNLVp8kN-G5-utZtsiq9Jso0h6wQu5CknDjK6k=
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
x-request-id: FzTGObTmZ_7kpZkAADdh
```
* __Response body:__
```json
{
  "errors": {
    "area": [
      "can't be blank"
    ],
    "fixed_rate_familiar": [
      "can't be blank"
    ],
    "fixed_rate_premium": [
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
* __Path:__ /api/rates/update_time_rate/d4fe8f12-a7ba-44eb-b0d7-564b8fe9d259
* __Request headers:__
```
authorization: Bearer cMVkvsq6h-CQ3GAesKiblcB2VGYir40-Qwfs-Wje_EY=
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
    "rate_per_km_familiar": 45,
    "rate_per_km_premium": 44,
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
x-request-id: FzTGObFsjMfD980AADTh
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_familiar": null,
    "fixed_rate_premium": null,
    "fixed_rate_standard": null,
    "id": "d4fe8f12-a7ba-44eb-b0d7-564b8fe9d259",
    "name": "some updated name",
    "rate_per_km_familiar": 45,
    "rate_per_km_premium": 44,
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
* __Path:__ /api/rates/d4fe8f12-a7ba-44eb-b0d7-564b8fe9d259
* __Request headers:__
```
authorization: Bearer cMVkvsq6h-CQ3GAesKiblcB2VGYir40-Qwfs-Wje_EY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObGe7xPD980AACqj
```
* __Response body:__
```json
{
  "data": {
    "area": null,
    "description": "some updated description",
    "end": "21:34:00",
    "fixed_rate_familiar": null,
    "fixed_rate_premium": null,
    "fixed_rate_standard": null,
    "id": "d4fe8f12-a7ba-44eb-b0d7-564b8fe9d259",
    "name": "some updated name",
    "rate_per_km_familiar": 45,
    "rate_per_km_premium": 44,
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
* __Path:__ /api/rates/update_time_rate/e0000ea4-5b7c-45ee-a720-e3be4fb04310
* __Request headers:__
```
authorization: Bearer H7irnZtbiSmMdfs_mp8iuCeRhIzm3Pn4QV6g5b643-g=
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
x-request-id: FzTGObN-Mcq_eXkAAC0j
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
* __Path:__ /api/rates/update_area_rate/9dcdcaf0-dcb1-4c88-8d21-77dc2fcfa2bb
* __Request headers:__
```
authorization: Bearer kHRnj_B9-SLHr0baPC76gswCEbuWdVqQ2CGstsSKAAk=
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
    "fixed_rate_familiar": 45,
    "fixed_rate_premium": 44,
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
x-request-id: FzTGObV8sbdrYGUAADfh
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
    "fixed_rate_familiar": 45,
    "fixed_rate_premium": 44,
    "fixed_rate_standard": 43,
    "id": "9dcdcaf0-dcb1-4c88-8d21-77dc2fcfa2bb",
    "name": "some updated name",
    "rate_per_km_familiar": null,
    "rate_per_km_premium": null,
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
* __Path:__ /api/rates/9dcdcaf0-dcb1-4c88-8d21-77dc2fcfa2bb
* __Request headers:__
```
authorization: Bearer kHRnj_B9-SLHr0baPC76gswCEbuWdVqQ2CGstsSKAAk=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObWt381rYGUAADgB
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
    "fixed_rate_familiar": 45,
    "fixed_rate_premium": 44,
    "fixed_rate_standard": 43,
    "id": "9dcdcaf0-dcb1-4c88-8d21-77dc2fcfa2bb",
    "name": "some updated name",
    "rate_per_km_familiar": null,
    "rate_per_km_premium": null,
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
* __Path:__ /api/rates/update_area_rate/7d39ed55-9500-4441-b55c-03ef875c5d9d
* __Request headers:__
```
authorization: Bearer I5ElIgtnd39gPAuZlBKEt-I3PEQAGHjTdWC7mTVfG4o=
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
x-request-id: FzTGObKfz7PucaUAADVh
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
authorization: Bearer 4S0mTdUlpiZqdlww65UkxUgCyAdVEvVkqYNPpwC0b_Q=
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
x-request-id: FzTGObMJdgzV79MAACxj
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
authorization: Bearer E7Xr35mhOnwIt-KPHEb2My97HDm288jiPzFMD8p63Sg=
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
x-request-id: FzTGObSD29uL6-QAADbh
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
authorization: Bearer YkGasNqe4KbnRZOrtWK0Qi_6_ddlbJVN2OEdcI57Pgc=
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
x-request-id: FzTGObPjQ42li7IAADYB
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
    "email": "user-576460752303417372@example.com",
    "name": "user-576460752303417340",
    "password": "hello world!",
    "phone": "6213"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYbPxs4jMeEAABhk
```
* __Response body:__
```json
{
  "data": {
    "id": "fd3888e8-a552-4a2c-b480-3eb105ed1049",
    "token": "0b-wx7gddEPzDKplfwpr9xD1jdTNcNbnGYqRBdjtTaU="
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
x-request-id: FzTGOYFDbMmU8nwAABLE
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
    "email": "user-576460752303419773@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
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
x-request-id: FzTGOX2_PPd9OFMAAA8D
```
* __Response body:__
```json
{
  "data": {
    "id": "cd173ab7-9c68-4a0d-8469-193f920c2d5b",
    "token": "ItV8q8Ez3dxW2810i7mAh3EJr6m82c0Gy2RbxP3YP-Y="
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
    "email": "user-576460752303419037@example.com",
    "name": "user-576460752303419005",
    "password": "hello world!",
    "phone": "4548"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYUnxhoi0SUAABHj
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
    "email": "user-576460752303418781@example.com",
    "name": "user-576460752303418749",
    "password": "hello world!",
    "phone": "4804"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYX-xXCcukUAABLj
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
x-request-id: FzTGOYXHFJlCwh8AABZk
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
  "email": "user-576460752303419934@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOX7OCeWVtK0AAA4i
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
x-request-id: FzTGOXx6vF2bP-EAAA2C
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
* __Path:__ /api/reset_password/jY_cPSZPwQChZ6Ou9Ot7oB1TY9XEhcrv7wxftszNKDc
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
x-request-id: FzTGOX8s4-p-bm0AAA6i
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
* __Path:__ /api/reset_password/T03WyHR4HEWQoLQsWKuxrjl6xZLfySDyYEmJn_0snhw
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
x-request-id: FzTGOYElDKcf2AAAABKE
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
x-request-id: FzTGOYA94zD92O0AABNB
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
authorization: Bearer ODT1T3s96HLvdfkXVpaC6lExsKoFKJpGH2X5-PlFozE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOaEXh4199NEAACJD
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
      "id": "153b4912-31bf-447a-bd39-87d0f126efe6",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "aea6259b-1bb2-4a35-8f62-dfb8a4e64dbf",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "d1454891-6601-471f-b213-80896934b677",
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
authorization: Bearer zK2bp3zjDtVclfTIFGVKPsvtFKgK4NeuGwdX1zKGFkQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZ1Yl5eTUzMAAB_j
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
      "id": "5aa52634-65e6-4846-b49c-561ad29905cf",
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
authorization: Bearer wfoGmiiTpljpRRWD3m6u0aZZ6G4tAQXC8-D0VD42BPM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOYwkQ3f10YIAABEC
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
      "id": "7abf1fdf-edd0-4acf-9c33-8bf66675af39",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "c8c7ac48-d9c0-444f-95de-f0cc376b09c8",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/8a75b6c5-6fdb-4c94-9761-2045ff1143d7
* __Request headers:__
```
accept: application/json
authorization: Bearer AwUp93sSlAyr3cvjBfCvh9Yr7kGtM73ytKJeOtKadb0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZiO7uo_SxoAACYB
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
    "id": "8a75b6c5-6fdb-4c94-9761-2045ff1143d7",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/b6d7cedc-74f2-4450-b673-a183c9a170da
* __Request headers:__
```
accept: application/json
authorization: Bearer AwUp93sSlAyr3cvjBfCvh9Yr7kGtM73ytKJeOtKadb0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZi2tzs_SxoAACeE
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
    "id": "b6d7cedc-74f2-4450-b673-a183c9a170da",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/c77cd32e-6852-4c00-a6d4-671da252eab9
* __Request headers:__
```
accept: application/json
authorization: Bearer NID9Qh46pjrmmymtTrhxJbUW3AwM-QnaY9rHVt3Ks8A=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZ7grv161jwAACmB
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
    "id": "c77cd32e-6852-4c00-a6d4-671da252eab9",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/0a647a1f-2214-49dc-aa86-1ad5d61811d7
* __Request headers:__
```
accept: application/json
authorization: Bearer rAtseQpGnsovTgWWM2Ph-XNl92zQAkgnWvqMN4RxbSU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZHtHQeItbgAABXC
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
    "id": "0a647a1f-2214-49dc-aa86-1ad5d61811d7",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/4f093cb1-58cc-437b-b65c-aa39edca5b8b
* __Request headers:__
```
accept: application/json
authorization: Bearer iNJYAObj6s0U2xxeI2mtVL1QiTNB0oawJPJwMBBn2kI=
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
x-request-id: FzTGOY3s8dLvd3AAABKi
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
    "id": "4f093cb1-58cc-437b-b65c-aa39edca5b8b",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/b4a3a92d-8722-420b-8c45-c76b81f74a6e
* __Request headers:__
```
accept: application/json
authorization: Bearer B5ETPXUv9wVCjsEKKEeKMbaSgEMel5MrLp3Au3iQ0ag=
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
x-request-id: FzTGOZWHucanaeAAACQk
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
    "id": "b4a3a92d-8722-420b-8c45-c76b81f74a6e",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/5ecc8999-e433-4cf2-956e-085950a534f1
* __Request headers:__
```
accept: application/json
authorization: Bearer 4zdUyeOXUlTdlXATjaClwGV4qshhQ9Ioy2HCPvdbvVo=
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
x-request-id: FzTGOZthO4giMNIAACsk
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
    "id": "5ecc8999-e433-4cf2-956e-085950a534f1",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/f0791c71-8368-4d1d-82f7-59e18518a106
* __Request headers:__
```
accept: application/json
authorization: Bearer I8uvp5HvPMP-cs5lhPxmB9rRxqfSfxKeCF9Bs38UyB0=
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
x-request-id: FzTGOZpStO8_AFwAABvC
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
    "id": "f0791c71-8368-4d1d-82f7-59e18518a106",
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
authorization: Bearer BWoMNbY3Og-VHoWBXE8j-26872RvEKB92rKkUS9_x-k=
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
    "ride_request_id": "aac4c90b-c051-4701-af7d-55e86f330d48",
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
x-request-id: FzTGOawdVznyZ5UAADHh
```
* __Response body:__
```json
{
  "data": {
    "id": "a6c08aa6-8d92-4ac7-9639-8d9798cd02c7",
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
authorization: Bearer hZ658f2LyMEIA76h4yh4P9314CjEMV2bybxukrfQZZU=
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
x-request-id: FzTGOaxvq8JCSqUAACWD
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
* __Path:__ /api/rides/accept/b33884ab-eea1-46b5-acb9-654c7aa435c6
* __Request headers:__
```
accept: application/json
authorization: Bearer Hz6bmbUoCwOq1GdngFSSAZ8Lk65yrVsABeian-ddFII=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa28XndJLn4AACfj
```
* __Response body:__
```json
{
  "data": {
    "id": "b33884ab-eea1-46b5-acb9-654c7aa435c6",
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
* __Path:__ /api/rides/accept/83df2424-139d-43de-b6cd-b884d86a2319
* __Request headers:__
```
accept: application/json
authorization: Bearer vGQCJUcnxMXs-5Up1ijpPIHpzWb7VejQiwcuhB9D9J4=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa0BO6JGNz0AACZD
```
* __Response body:__
```json
{
  "data": {
    "id": "83df2424-139d-43de-b6cd-b884d86a2319",
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
* __Path:__ /api/rides/accept/83df2424-139d-43de-b6cd-b884d86a2319
* __Request headers:__
```
accept: application/json
authorization: Bearer vGQCJUcnxMXs-5Up1ijpPIHpzWb7VejQiwcuhB9D9J4=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa05zD5GNz0AACZj
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
authorization: Bearer Dcy4TDIrTHqkm1InFfWntc8gI0fLpT9XW5R4kcEut0M=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGObD0X_qpFMsAADRB
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
authorization: Bearer I8W1oj-bMz_BuIvyMrZEOMQky0uEvfwWQ6mB7BEJVNY=
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
    },
    "start_time": "2018-11-15T10:00:00"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa6BtVMidvwAAChj
location: /api/reservations/ba7766f7-27b5-4fe0-82ef-e68f179fb22a
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
    "id": "ba7766f7-27b5-4fe0-82ef-e68f179fb22a",
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
* __Path:__ /api/reservations/ba7766f7-27b5-4fe0-82ef-e68f179fb22a
* __Request headers:__
```
authorization: Bearer I8W1oj-bMz_BuIvyMrZEOMQky0uEvfwWQ6mB7BEJVNY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa6arOIidvwAACiD
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
    "id": "ba7766f7-27b5-4fe0-82ef-e68f179fb22a",
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
authorization: Bearer NKxPLu7mG6vavbWEXetWHFdP1z2CmeYgqY0AoGbrWYQ=
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
x-request-id: FzTGOa42_GhNPWQAAB4C
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
    ],
    "start_time": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-ridereservationcontroller-update></a>update
#### update ride_reservation renders ride_reservation when data is valid

##### Request
* __Method:__ PUT
* __Path:__ /api/reservations/3a8deda7-95a8-47ae-a318-5d651d885e75
* __Request headers:__
```
accept: application/json
authorization: Bearer Qfq_CgKCPgo85w4kuvmtxxaCv_lCH19OvFOK7wLYZjw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "ride_reservation": {
    "baggage": false,
    "car_type": "premium",
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
x-request-id: FzTGOa81EoODmRQAADMh
```
* __Response body:__
```json
{
  "data": {
    "baggage": false,
    "car_type": "premium",
    "end_location": {
      "coordinates": [
        -82.398,
        23.137
      ],
      "type": "Point"
    },
    "id": "3a8deda7-95a8-47ae-a318-5d651d885e75",
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
* __Path:__ /api/reservations/3a8deda7-95a8-47ae-a318-5d651d885e75
* __Request headers:__
```
accept: application/json
authorization: Bearer Qfq_CgKCPgo85w4kuvmtxxaCv_lCH19OvFOK7wLYZjw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa9rXYaDmRQAADNB
```
* __Response body:__
```json
{
  "data": {
    "baggage": false,
    "car_type": "premium",
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
    "id": "3a8deda7-95a8-47ae-a318-5d651d885e75",
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
* __Path:__ /api/reservations/6ed7c2be-3feb-4ed7-bd97-af9dbe4d1ebd
* __Request headers:__
```
accept: application/json
authorization: Bearer BOGJHVNNV5pqb9yZ_CxFtkFry-Y8Jeo7l238Z6JgoKo=
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
x-request-id: FzTGObCYlQLgndwAACoD
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
* __Path:__ /api/reservations/5d224643-7228-4392-b10f-f101e04ae700
* __Request headers:__
```
accept: application/json
authorization: Bearer nyfTq1klyX-xhBwK8CPNg4_pPItaYWRTXck7TASim5U=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOa_s7jA31PUAADQh
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
  "email_or_phone": "user-576460752303417181@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZLSIJTudxkAACFk
```
* __Response body:__
```json
{
  "data": {
    "token": "DRcSLdG877-Qok1IrEhDtlUtzB_rBBgvCq2_k4aB2AU="
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
  "email_or_phone": "5636",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZA2PQUiM9AAAB7k
```
* __Response body:__
```json
{
  "data": {
    "token": "69Id3ObV9-tRFdw0RgPuMg9DmsXCKu-45lJpN_XyfuE="
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
  "email_or_phone": "user-576460752303415807@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOY_BdkiA-QMAABLi
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
  "email_or_phone": "8130",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZEboTh3qQgAAB_h
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
authorization: Bearer jtEd3a33NNmlzJJzVmh7Mcj9_l66FjPmcAEXLNuLdoE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOZIC8WnfICAAABXi
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
x-request-id: FzTGOZG-S9r2wFYAACCk
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
authorization: Bearer us15Sc0f6pa0utmsloCoQyEOYh48ISbk9BDlMYn4hko=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOac2BTdhVWoAAC1h
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303411935@example.com",
      "id": "d5bb3d7a-2033-43f8-80a6-4a4be0ad63ba",
      "name": "user-576460752303411967",
      "phone": "11586"
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
authorization: Bearer sSSARwEI51-kRlb-3nbDgr6sULrDr2RevB9imficllw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOaZV1Skg8X0AACzE
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "a4c41b65-9f34-4aeb-abce-66787383ae77",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303412092@example.com",
      "id": "f17a107a-247d-454e-aad3-dca2d0dedeab",
      "name": "user-576460752303412124",
      "phone": "11429"
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
authorization: Bearer Vgo_wZd-ZmMICjka_H1KZmnj_5ZIxKSufa8H_8rHXQM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOagUKkd5BRgAACPj
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "ff78bf36-95b7-4014-a511-ebba28e487f8",
      "license": "licence-576460752303414365"
    },
    "user": {
      "email": "user-576460752303414429@example.com",
      "id": "6d9cb041-d779-435f-bb2f-e9bf9cf63e28",
      "name": "user-576460752303414461",
      "phone": "9092"
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
authorization: Bearer 8JL9SAIbaBRBFR85Sqs165pBgOQ6OvuoMeInxoCI-hc=
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
x-request-id: FzTGOaPzFoLpPTUAACuB
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "XGMNWDksYTJcUTAFaGOg7UujaJy1p8w7aULxTZbOfvY="
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
authorization: Bearer _uBIbmmW1jZq_BYgciBQ8eumMKBXfCxlgA7grN2PWTY=
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
x-request-id: FzTGOabHhjXqUBIAACzh
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
authorization: Bearer oh8ZPUPObYJXeylukmG58yoVewsGLM4WOMpquB5z7O0=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303411295@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOaiR3rJvMYoAAC_B
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
authorization: Bearer Fj2bEmx4NjydrBikApHPAOdJT3KhjASFUpTrhFt8nPE=
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
x-request-id: FzTGOae2WNX8AQ8AAC6B
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
authorization: Bearer yONTRlpJwpFl4HKD2SI1W5hLayOsL-5VN14nE7M3_-4=
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
x-request-id: FzTGOaE0CzDApIMAAB0C
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
      "id": "1e65845b-0e00-40dd-9409-4ad904cb8b6b",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303414781@example.com",
      "id": "bb30fcfd-bfc6-4f47-9b50-004603174d48",
      "name": "user-576460752303414813",
      "phone": "8740"
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
authorization: Bearer -Giuq-j-EBJxQ1MTO4pKyhvNI_YNwbVW3AabYdnb1mg=
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
x-request-id: FzTGOaYDtQApDzIAACMj
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "35162d8a-0e16-4fdd-9c48-80b3b84db2c9",
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
      "email": "user-576460752303414557@example.com",
      "id": "1c18ee6e-9ced-470c-9e8b-634154f90d0d",
      "name": "user-576460752303414589",
      "phone": "8964"
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
authorization: Bearer RTON75yKGByRAoRlo5fs5TmhffVmcsYcQZf1gtavP2g=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303411455",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOahREVTL1vYAAC8h
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
authorization: Bearer avhHNzqYTK2A9AY10-rFw4L2Dlg9PIuz5-4b3-FPftw=
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
x-request-id: FzTGOaTQ7j_k2UUAACwB
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
authorization: Bearer QM6yvA2tDKLt6gONiPNRIvQW3dvaCfPhJw3wO0mSIso=
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
x-request-id: FzTGOaGKKKeUSQkAAB0i
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
* __Path:__ /api/confirm_email/iTqEivZr_0QgTsnjedD9hkhOiNC2sDS1N-l8YsrPaf0
* __Request headers:__
```
accept: application/json
authorization: Bearer G5Pi1exdcdRUVBnhRgA7C9i3bQrp1Tx2cxfaPi60txM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOaUreG3BdlgAACyh
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
authorization: Bearer rCb7rim1cNuFhtXWIzav4699LpyiGMgrfSO-CcV3tKQ=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOadzWTBJSrMAAC4B
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
authorization: Bearer m8qO1lmK_w5e05Xq8ens_ApgrCTA4o3DyZFsfnQOsPs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTGOakEAugAeg4AACSj
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "acba2008-93da-43f3-9577-7d6bb453402a"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/271f263c-b845-44a6-af14-9310ed8bd5ce
* __Request headers:__
```
accept: application/json
authorization: Bearer Eh_S_N2wPKXWiQWnZoHOr-Oemz9fF2GgAaeNokOWqBw=
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
x-request-id: FzTGOamD_6nmVJEAAC3k
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "271f263c-b845-44a6-af14-9310ed8bd5ce"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/271f263c-b845-44a6-af14-9310ed8bd5ce
* __Request headers:__
```
accept: application/json
authorization: Bearer Eh_S_N2wPKXWiQWnZoHOr-Oemz9fF2GgAaeNokOWqBw=
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
x-request-id: FzTGOamoHRvmVJEAAC4E
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "271f263c-b845-44a6-af14-9310ed8bd5ce"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/b78d2960-7493-4823-b550-0f4878bc7a0e
* __Request headers:__
```
accept: application/json
authorization: Bearer 7DHcYoBXgWSoiYcy3WsiQ-2_1TKCJTK3psEqeYgAtMY=
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
x-request-id: FzTGOaoSo4zF-rUAACUD
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

