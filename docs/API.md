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
  "id": "03f75f92-ef59-49c5-ab02-4a2d5c8c7a65",
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
* __Topic:__ rides:2a461bf6-cf74-4a1b-a2ef-1d54dfbaa032
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:2a461bf6-cf74-4a1b-a2ef-1d54dfbaa032
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
* __Topic:__ rides:59db5fee-c766-4d72-b3c3-f482750aad43
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:59db5fee-c766-4d72-b3c3-f482750aad43
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
* __Topic:__ rides:a6229907-0594-40a2-b6b4-003630576d16
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:a6229907-0594-40a2-b6b4-003630576d16
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
* __Topic:__ rides:665efbe7-ef59-4580-941e-394f1d0850cd
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:665efbe7-ef59-4580-941e-394f1d0850cd
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
* __Topic:__ rides:8b8c33af-c574-415d-a76c-b303472a330e
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
* __Topic:__ rides:8b8c33af-c574-415d-a76c-b303472a330e
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:8b8c33af-c574-415d-a76c-b303472a330e
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
* __Topic:__ rides:ebb22cab-f876-4045-ac37-e306cdb3856e
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
* __Topic:__ rides:ebb22cab-f876-4045-ac37-e306cdb3856e
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:ebb22cab-f876-4045-ac37-e306cdb3856e
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
authorization: Bearer iXRkVKTGeYc7Pv-4OegPZfsKzOpbpZu6M5qK7yHzY10=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTEtFUUiM9AAABui
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
authorization: Bearer kA416GWDmqxzXVpKvfzSvkw1JA23F-boadf86w0T498=
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
x-request-id: FzTFnTe32YE2j5EAACSC
```
* __Response body:__
```json
{
  "data": {
    "id": "3fa3f6bb-9c71-489e-b325-d9d4872820b3",
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
* __Path:__ /api/addresses/3fa3f6bb-9c71-489e-b325-d9d4872820b3
* __Request headers:__
```
accept: application/json
authorization: Bearer kA416GWDmqxzXVpKvfzSvkw1JA23F-boadf86w0T498=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTgSFEU2j5EAACLB
```
* __Response body:__
```json
{
  "data": {
    "id": "3fa3f6bb-9c71-489e-b325-d9d4872820b3",
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
* __Path:__ /api/addresses/2da61464-aa47-4977-8f3a-0a8f30b87fe5
* __Request headers:__
```
accept: application/json
authorization: Bearer MoCXtNGJI_vA_8_PNhFUlDTtHAm9hpVjYTyYHzupbaU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS_tneKTHqkAABbE
```
* __Response body:__
```json
{
  "data": {
    "id": "2da61464-aa47-4977-8f3a-0a8f30b87fe5",
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
authorization: Bearer v4oZ5K4QrefARzYzg-CRa2OhtkLnTyW7ZkY0gX6rgbM=
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
x-request-id: FzTFnQYzTLCbpKIAAA3B
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
* __Path:__ /api/addresses/f02e0fa1-acc0-4bd3-b0e1-22d58374e732
* __Request headers:__
```
accept: application/json
authorization: Bearer UYbCvuNpFTamojdiUzBIGAq2p41mRGXOqJkaEE9vzjg=
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
x-request-id: FzTFnTlceA8me40AABkk
```
* __Response body:__
```json
{
  "data": {
    "id": "f02e0fa1-acc0-4bd3-b0e1-22d58374e732",
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
* __Path:__ /api/addresses/f02e0fa1-acc0-4bd3-b0e1-22d58374e732
* __Request headers:__
```
accept: application/json
authorization: Bearer UYbCvuNpFTamojdiUzBIGAq2p41mRGXOqJkaEE9vzjg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTmefdkme40AACTB
```
* __Response body:__
```json
{
  "data": {
    "id": "f02e0fa1-acc0-4bd3-b0e1-22d58374e732",
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
* __Path:__ /api/addresses/77698f9d-d268-4548-8e9e-09a5c169e692
* __Request headers:__
```
accept: application/json
authorization: Bearer DOhMIC8sEQn2pOn3wxF9Cl3scakrtZINrKIy-FQyXrQ=
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
x-request-id: FzTFnTL6EJpM6dEAAB2h
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
* __Path:__ /api/addresses/0a787939-5838-46c4-a29b-afc6bea2e6c2
* __Request headers:__
```
accept: application/json
authorization: Bearer QUOLF5j8iEYDUh7WAosAogmdTqLDpb8y03oaujcUeEI=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTSfLuIC66cAABij
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
authorization: Bearer 1VQlZcsmrZiAipEsscOWn8qTP1VSf-HsZAMnuhUvtG8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnQYy2ZpXM8wAAA2h
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "1c870069-7a20-4b85-97da-13079e297e73",
      "license_plate": "license--576460752303421086",
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
authorization: Bearer R3AtYuRpWdURX0dwk4wTefgRhApzVceVH89-Q95sPrY=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303416991",
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
x-request-id: FzTFnS7EoPtZ1gcAABmB
location: /api/cars/c3774a7d-c366-49cb-a90c-50ec39c52103
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "c3774a7d-c366-49cb-a90c-50ec39c52103",
    "license_plate": "license--576460752303416991",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/c3774a7d-c366-49cb-a90c-50ec39c52103
* __Request headers:__
```
accept: application/json
authorization: Bearer R3AtYuRpWdURX0dwk4wTefgRhApzVceVH89-Q95sPrY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS8hZGNZ1gcAABXE
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "c3774a7d-c366-49cb-a90c-50ec39c52103",
    "license_plate": "license--576460752303416991",
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
authorization: Bearer N3A5wbLUZ4Ry7oYcAtcaJLviGRSrk2q8efE602_o9p8=
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
x-request-id: FzTFnSGHsl1M520AABHC
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
* __Path:__ /api/cars/6c2fe8a3-fc31-4d21-b4db-b77d4869bc21
* __Request headers:__
```
accept: application/json
authorization: Bearer W6PkmdZ0XvYR8rCKNUHblYhbvpkmkXEry1pJ4hjQ3hA=
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
x-request-id: FzTFnSfzKoIbdyMAABeB
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "6c2fe8a3-fc31-4d21-b4db-b77d4869bc21",
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
* __Path:__ /api/cars/d37a3279-306e-4748-a7a1-9085e63bcbe1
* __Request headers:__
```
accept: application/json
authorization: Bearer 5wuLL6yIjVUWndO8AHOKrsY6zrUzOnnmpg8kOPhmFEo=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSt9eVib2J8AABQk
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
  "email": "user-576460752303419005@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSE_S-HFVTYAABEC
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
  "email": "user-576460752303420636@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnQaB0JHKGrYAAAuE
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
x-request-id: FzTFnR0I8OAKrPkAABFh
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
* __Path:__ /api/confirm/l5x0YTZjIzutDhliu6EtRyH6pUMsMh907Dni-cpFjAU
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
x-request-id: FzTFnR1s1pTRHl0AABDE
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
* __Path:__ /api/confirm/l5x0YTZjIzutDhliu6EtRyH6pUMsMh907Dni-cpFjAU
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
x-request-id: FzTFnR4Sr-DRHl0AABIB
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
x-request-id: FzTFnR5sfamVtK0AABBC
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
authorization: Bearer 65Z5SLNCbD51zyQ0NG-I0sqzD_8ud6d-pPWyFn7x-F4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnQbxs4oGCgkAAAwk
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
* __Path:__ /api/customers/924e7f49-0073-4068-a4cd-91d853a83379
* __Request headers:__
```
accept: application/json
authorization: Bearer FI5hfnfdMHYW2G1YkF3MIdxfv8uahNY4n9Cu7O04lNA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSdtREI5xvwAABVi
```
* __Response body:__
```json
{
  "data": {
    "id": "924e7f49-0073-4068-a4cd-91d853a83379"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/74520fca-1413-4c44-af59-43e3fe8e96ab
* __Request headers:__
```
accept: application/json
authorization: Bearer FI5hfnfdMHYW2G1YkF3MIdxfv8uahNY4n9Cu7O04lNA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnShT92U5xvwAABXi
```
* __Response body:__
```json
{
  "data": {
    "id": "74520fca-1413-4c44-af59-43e3fe8e96ab"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/95873aeb-c138-4101-bba5-e01600f2890a
* __Request headers:__
```
accept: application/json
authorization: Bearer Wfov9ZlOGorxMNqA52phoYWaOItQP_BMmlqHcyoJpcM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSllAIzO8KsAABiB
```
* __Response body:__
```json
{
  "data": {
    "id": "95873aeb-c138-4101-bba5-e01600f2890a"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/67364c6e-8af4-4513-b0aa-d0cbf182480e
* __Request headers:__
```
accept: application/json
authorization: Bearer Wfov9ZlOGorxMNqA52phoYWaOItQP_BMmlqHcyoJpcM=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSnKQ6bO8KsAABih
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
authorization: Bearer Oh-4Tc5xPX5tY10cbuAwWeQ2u0SvJgkbMwQEGfadN74=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTtP3R4ABUQAAB5j
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303416253@example.com",
      "id": "0fc99b4a-6b35-4581-9ac6-899e6faffffd",
      "name": "user-576460752303416285",
      "phone": "7268"
    },
    {
      "credit": 0,
      "email": "user-576460752303413951@example.com",
      "id": "99cac162-43a6-41f6-816f-6aa47ee3eafb",
      "name": "user-576460752303413983",
      "phone": "9570"
    },
    {
      "credit": 0,
      "email": "user-576460752303416988@example.com",
      "id": "3b3edad3-9ff6-4e61-b6b7-96fe81eb5e19",
      "name": "user-576460752303417020",
      "phone": "6533"
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
authorization: Bearer xqmjVSt_J3GRvph88WtJSm7gi-g6HgJ7cEO6f9Yyo8U=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTCCxC9Km-UAABti
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "32b2336f-fd9a-4342-b7cd-e48bbe8fd2a7",
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
authorization: Bearer E8m2WfVSMsGCqHiw08qNN4RiGrlGKRUsvHrjTzMMj4E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTOh7tzJ7ZAAACCC
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303416350@example.com",
      "id": "848eee99-1d1f-4049-9ead-8cc0ac06501a",
      "name": "user-576460752303416382",
      "phone": "7171"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/33b9a239-4d92-4bd7-8d1b-001999eda450
* __Request headers:__
```
accept: application/json
authorization: Bearer xo1rcDg6aOyyYn-rYHJ6aN59iuRgDVW8SG8Ug0hPy_4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTkpzpAzpVoAACSB
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303413982@example.com",
    "id": "33b9a239-4d92-4bd7-8d1b-001999eda450",
    "name": "user-576460752303414014",
    "phone": "9539"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/0fe99556-0994-4600-a510-2bcc172b0efe
* __Request headers:__
```
accept: application/json
authorization: Bearer xo1rcDg6aOyyYn-rYHJ6aN59iuRgDVW8SG8Ug0hPy_4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTlvinszpVoAABmj
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303414431@example.com",
    "id": "0fe99556-0994-4600-a510-2bcc172b0efe",
    "name": "user-576460752303414463",
    "phone": "9090"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/569e57e4-8d6d-4ccc-a073-d96f056331b7
* __Request headers:__
```
accept: application/json
authorization: Bearer TXzhvQ_Hpvsp--n19zlZTT8N6dqw50yj5cR-2Pqm8OQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS05xVIKLWEAABRD
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303417086@example.com",
    "id": "569e57e4-8d6d-4ccc-a073-d96f056331b7",
    "name": "user-576460752303417118",
    "phone": "6435"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/c7f9562f-7baf-4c55-9cfd-8c22d309d2ff
* __Request headers:__
```
accept: application/json
authorization: Bearer TXzhvQ_Hpvsp--n19zlZTT8N6dqw50yj5cR-2Pqm8OQ=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS2eWwIKLWEAABRj
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
authorization: Bearer iOREYQngB82di3IXsrZYko3LCF9uCShLrfwUctRw1rw=
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
x-request-id: FzTFnRIwevMwvMEAAA5C
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
authorization: Bearer DY0zPTLgJBHpKdHNHs2-zwWtgYD7amQsbQKoJPCO03s=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303416637"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnToE7hEcn5QAABrj
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
authorization: Bearer tSGtMO0RpwS0k2iMaT7LwQCUYRGGtnbZ-sg6HghAikA=
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
x-request-id: FzTFnSuyGGqGT3MAABiC
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
authorization: Bearer tSGtMO0RpwS0k2iMaT7LwQCUYRGGtnbZ-sg6HghAikA=
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
x-request-id: FzTFnSvx8BSGT3MAABQD
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
authorization: Bearer tSGtMO0RpwS0k2iMaT7LwQCUYRGGtnbZ-sg6HghAikA=
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
x-request-id: FzTFnSwdlhGGT3MAABjC
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
authorization: Bearer CN1JADLfeYkRF6fUE17phIio-Civir1_gSt68OPiv3U=
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
x-request-id: FzTFnTVuduztJtwAAB6B
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
authorization: Bearer rRA03ghYKeXfqJ9ZuXOV3iHEaULqU1yZQamixwjzfcs=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "43ba1f8a-803d-4838-b9d1-db31fa1192df"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTZvga-Q958AAB-h
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
authorization: Bearer 3fA2F4GCtJ4Z8-0miopkFfbq1hsEc49_WxR9RzFGJxs=
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
x-request-id: FzTFnVo2w1h_3OgAADjh
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "b29913b6-1d40-4bb0-bc20-51c3e293309f"
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
authorization: Bearer LndO3vD7xc5GOqLMjdZC1928Vw9l6sMHcgK5yvMrfJo=
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
x-request-id: FzTFnVmokVxXI6gAADhh
```
* __Response body:__
```json
{
  "data": {
    "id": "55bbe37c-746b-42b0-90ba-3b0437820ff4",
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
authorization: Bearer LndO3vD7xc5GOqLMjdZC1928Vw9l6sMHcgK5yvMrfJo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVm_2gFXI6gAACmD
```
* __Response body:__
```json
{
  "data": {
    "id": "55bbe37c-746b-42b0-90ba-3b0437820ff4",
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
authorization: Bearer miYJq4wElExs7Kgl1FaV-TXl2yo5IVm9jzfbcnGirgQ=
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
x-request-id: FzTFnVn210YCLEUAACoD
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
authorization: Bearer Nrrc57Oyv7odmKkNfz1saGco_pQk4bXY1VMHwptYpiA=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVS-bDVcym4AACdj
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
authorization: Bearer Nrrc57Oyv7odmKkNfz1saGco_pQk4bXY1VMHwptYpiA=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVTcbFZcym4AACej
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
      "id": "842c47f8-a302-4622-92a6-59a1e265f5f8",
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
authorization: Bearer _zxMNpQWT6Z57XJMmFIL-tLQr3rPazZDBTA92Ar-p44=
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
x-request-id: FzTFnVLljncJ0EIAACPk
location: /api/rates/95d3fc80-df15-4900-b12f-d58de97e6556
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
    "id": "95d3fc80-df15-4900-b12f-d58de97e6556",
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
* __Path:__ /api/rates/95d3fc80-df15-4900-b12f-d58de97e6556
* __Request headers:__
```
authorization: Bearer _zxMNpQWT6Z57XJMmFIL-tLQr3rPazZDBTA92Ar-p44=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVMC9UcJ0EIAACQE
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
    "id": "95d3fc80-df15-4900-b12f-d58de97e6556",
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
authorization: Bearer ySa-M4uyewKWXGVZKPkdqpDaM-bN5VV_NsDN3VwnlZk=
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
x-request-id: FzTFnVZFEp5W-8kAACij
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
authorization: Bearer jEk3_ILK-Cj-mgdAy-z4qxBJkqgAptbZJBncEmaqo6s=
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
x-request-id: FzTFnVKKXCO3W6YAACbj
location: /api/rates/3aa0af34-7981-4a2b-9dd5-ab4a4196855e
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
    "id": "3aa0af34-7981-4a2b-9dd5-ab4a4196855e",
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
* __Path:__ /api/rates/3aa0af34-7981-4a2b-9dd5-ab4a4196855e
* __Request headers:__
```
authorization: Bearer jEk3_ILK-Cj-mgdAy-z4qxBJkqgAptbZJBncEmaqo6s=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVKkEJO3W6YAACNk
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
    "id": "3aa0af34-7981-4a2b-9dd5-ab4a4196855e",
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
authorization: Bearer zq7DZUzFvWwBSKB5L53HUZ4r9NXiFgpAGLA8MVMulYU=
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
x-request-id: FzTFnVNdMFS7cjYAADGh
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
* __Path:__ /api/rates/update_time_rate/9e332969-680c-4f09-947f-c4893ac6dd3a
* __Request headers:__
```
authorization: Bearer Rq6x1jaaJkcqWr06p2oOm5ZpAzidfLlzDloeFdUt-WQ=
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
x-request-id: FzTFnVWiTEtGQjkAACgj
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
    "id": "9e332969-680c-4f09-947f-c4893ac6dd3a",
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
* __Path:__ /api/rates/9e332969-680c-4f09-947f-c4893ac6dd3a
* __Request headers:__
```
authorization: Bearer Rq6x1jaaJkcqWr06p2oOm5ZpAzidfLlzDloeFdUt-WQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVW-qaJGQjkAADNh
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
    "id": "9e332969-680c-4f09-947f-c4893ac6dd3a",
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
* __Path:__ /api/rates/update_time_rate/f41cae21-55c6-4c63-9804-2ef314ee5e7f
* __Request headers:__
```
authorization: Bearer jyiCjnDMyLo0Q3HknCV06xxqaKublzonkoTit3jMuE0=
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
x-request-id: FzTFnVJID4SZMSkAADGB
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
* __Path:__ /api/rates/update_area_rate/07f80b1d-c810-4bb0-b3e1-48bfa949ade5
* __Request headers:__
```
authorization: Bearer wpf4kVndKPkB5dzVq2NPDrmPrcE0r6uTOcY9zmvl9ho=
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
x-request-id: FzTFnVEZtObR58oAADDB
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
    "id": "07f80b1d-c810-4bb0-b3e1-48bfa949ade5",
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
* __Path:__ /api/rates/07f80b1d-c810-4bb0-b3e1-48bfa949ade5
* __Request headers:__
```
authorization: Bearer wpf4kVndKPkB5dzVq2NPDrmPrcE0r6uTOcY9zmvl9ho=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVFU17vR58oAACZj
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
    "id": "07f80b1d-c810-4bb0-b3e1-48bfa949ade5",
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
* __Path:__ /api/rates/update_area_rate/292d672e-3d1e-4089-a5e1-0bd8afeb5925
* __Request headers:__
```
authorization: Bearer Pb8T2OJu4IKgY54KyDydgP7g1sljDy1S13NQ4dwHuNw=
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
x-request-id: FzTFnVYGJRFB5awAADPh
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
authorization: Bearer fgS-enn4208vVehz1sZGX3bMbBzMu_YWmhEurnhOLsg=
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
x-request-id: FzTFnVO7SdhEqyEAADIh
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
authorization: Bearer fVlAILdx9hWeVa3lsB7GcugaSOeK2u2k3W886aeSXnY=
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
x-request-id: FzTFnVRPuT37MigAADJC
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
authorization: Bearer 2CVsEbitvfUsna6qRhQPpBAhLb6WfPkppxa_j3z5WYI=
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
x-request-id: FzTFnVU6AWecbbYAADJi
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
    "email": "user-576460752303418655@example.com",
    "name": "user-576460752303418623",
    "password": "hello world!",
    "phone": "4930"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSAGESJUIp8AABNh
```
* __Response body:__
```json
{
  "data": {
    "id": "233aeda8-9531-479a-ab64-8e723a261034",
    "token": "DD-6EAUfj2nkghBm-doNuv94Db4Zu0qd3UXdEVmvm0M="
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
x-request-id: FzTFnSdazWzI_GYAABOD
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
    "email": "user-576460752303418654@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303418622",
    "password": "hello world!",
    "phone": "4931"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSOYwMiJ-SwAABNi
```
* __Response body:__
```json
{
  "data": {
    "id": "0ce24c83-10eb-40b1-9040-eff35f9d4121",
    "token": "pOeeN3RvE0vXiBTRFsimrIwFKnz1fALMyuOt_clsbNM="
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
    "email": "user-576460752303418653@example.com",
    "name": "user-576460752303418621",
    "password": "hello world!",
    "phone": "4932"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSSoPVsi-9gAABNj
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
    "email": "user-576460752303418398@example.com",
    "name": "user-576460752303418366",
    "password": "hello world!",
    "phone": "5187"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSXvGZrKMTMAABRi
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
x-request-id: FzTFnSdGfFRpVNcAABUC
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
  "email": "user-576460752303418940@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSk6xttlp5oAABdC
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
x-request-id: FzTFnRnVHu3_GpIAAA9j
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
* __Path:__ /api/reset_password/6eWNwPuW4UDmsqTCVXCd6rG80Fjg0ONUB2X06aRxbn0
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
x-request-id: FzTFnR8IxQJwUnsAABCC
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
* __Path:__ /api/reset_password/QUoYiIIcH0GTVRfNGVNNeDqZq-IBf5ddtkfNlNC7tsQ
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
x-request-id: FzTFnR-9UGvS1WEAABEk
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
x-request-id: FzTFnSiJK-rIhpAAABYC
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
authorization: Bearer I_JVN7znXE24Wg8rHqXtbj-cznPiQgEyYfe39mtVGiA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTmG1FQMp40AACSh
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
      "id": "4548750a-79a6-44aa-a269-3154c1b3394a",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "dbefad1c-5fe9-4d5b-b87b-8a805730a4c1",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "a0fa5677-fc14-44de-bb84-9b14cb636ffc",
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
authorization: Bearer Xu5fDNwPP5J3O8YnwAHMyBudUR6JAGa8V-RF6pzKwMU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTxrvrg_WsIAACei
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
      "id": "7740e7c8-9446-4f1f-975f-d545fb478028",
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
authorization: Bearer ig2y29bIltRJJ0J6yrXWDcKSJsSgoalvoFri44kALTM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUQ68DXWWaoAACti
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
      "id": "58726759-3697-434e-b67c-d4cfda14b975",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "0171a594-8382-4c61-8d82-f945aade1b8d",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/ab7231be-2091-496b-9a28-39fbf19c7546
* __Request headers:__
```
accept: application/json
authorization: Bearer Z5FI17Hmzs3_pcZEF3yK3ZJoV1i97lX1I-O1Urs-rCA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTXu2Lr7sk4AACKi
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
    "id": "ab7231be-2091-496b-9a28-39fbf19c7546",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/f90d5ef0-3b3a-4ffa-a0aa-f7d5ec1bded5
* __Request headers:__
```
accept: application/json
authorization: Bearer Z5FI17Hmzs3_pcZEF3yK3ZJoV1i97lX1I-O1Urs-rCA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTYW_237sk4AACLC
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
    "id": "f90d5ef0-3b3a-4ffa-a0aa-f7d5ec1bded5",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/60e9e076-c1ca-4fcd-bdea-99ebf41805b4
* __Request headers:__
```
accept: application/json
authorization: Bearer rtgJ_KUgDrRT_5qbejvXs2D93t9bV3eKH-BNe1oqe6c=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnSJz-lzdKX4AABIj
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
    "id": "60e9e076-c1ca-4fcd-bdea-99ebf41805b4",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/fe91894d-8e06-4cd2-8566-1b32e40b0b7f
* __Request headers:__
```
accept: application/json
authorization: Bearer KR2foDAbZDNMviIkED7dDXts34GUXGA-z-1HlvMJtcE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUXr0vRmRlUAACmh
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
    "id": "fe91894d-8e06-4cd2-8566-1b32e40b0b7f",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/c2ec5d90-5261-4945-84a7-f04bbe9f4757
* __Request headers:__
```
accept: application/json
authorization: Bearer XkypV7T7VoXqUXbJx8EDw2QYpshOOYJHhFvnpJPfHb0=
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
x-request-id: FzTFnTAUd1FT6OsAABcD
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
    "id": "c2ec5d90-5261-4945-84a7-f04bbe9f4757",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/e9e8414a-795d-45bd-b10b-ea31dc62888c
* __Request headers:__
```
accept: application/json
authorization: Bearer dlB6iiuZgCbLXp_4Fdz-GGCHRRKODa_pK2hDQkLqmdU=
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
x-request-id: FzTFnT2IWAuMNd0AABsE
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
    "id": "e9e8414a-795d-45bd-b10b-ea31dc62888c",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/a23f54c5-b185-4e44-8834-a82e7eff1067
* __Request headers:__
```
accept: application/json
authorization: Bearer bID_02RYmjSaczifd396Vda0-CcBfMZ4NZr-eihRiZA=
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
x-request-id: FzTFnT7yHJjrzlUAACCD
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
    "id": "a23f54c5-b185-4e44-8834-a82e7eff1067",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/04200650-a4f3-4666-b0a9-c6ece9704d40
* __Request headers:__
```
accept: application/json
authorization: Bearer FMpLyKOP7yL24fJW-51AFOJzjL-D7sWRTHBTyizAnq4=
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
x-request-id: FzTFnUB1RHHw-iEAABwk
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
    "id": "04200650-a4f3-4666-b0a9-c6ece9704d40",
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
authorization: Bearer T7OsEdqLtgBrprcYX9i18vhbeL7Ibe1Ymq09Q-LT1Qw=
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
    "ride_request_id": "eddda1f9-1a24-49b9-93fa-7e99fe9f270b",
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
x-request-id: FzTFnU7eJ5Zk2lAAAC8h
```
* __Response body:__
```json
{
  "data": {
    "id": "be36b4bb-2b4b-4c80-8bdd-5ffce350f304",
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
authorization: Bearer jC-arWKAkyj5p8g9RSReGeXf7I0LZ-bVws-tfocGExw=
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
x-request-id: FzTFnU9Mo9nZgPMAADAC
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
* __Path:__ /api/rides/accept/cd720cc3-ae05-4ae0-ba05-2c1b52a245a9
* __Request headers:__
```
accept: application/json
authorization: Bearer e8gUjNhHqJ4ByH_Ed1gTksDZLNb3nJgPJJynzAHDNpI=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnU_BJkQlp20AADAB
```
* __Response body:__
```json
{
  "data": {
    "id": "cd720cc3-ae05-4ae0-ba05-2c1b52a245a9",
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
* __Path:__ /api/rides/accept/96c5b8e8-cdd5-449e-9654-e4c202ddaba9
* __Request headers:__
```
accept: application/json
authorization: Bearer jRRqCLCJTA3grMh2T1yOvUBbo_qUCrVLFbnaoE6ZJUE=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVBzzzS9yW0AADCB
```
* __Response body:__
```json
{
  "data": {
    "id": "96c5b8e8-cdd5-449e-9654-e4c202ddaba9",
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
* __Path:__ /api/rides/accept/96c5b8e8-cdd5-449e-9654-e4c202ddaba9
* __Request headers:__
```
accept: application/json
authorization: Bearer jRRqCLCJTA3grMh2T1yOvUBbo_qUCrVLFbnaoE6ZJUE=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnVCxA069yW0AADCh
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
authorization: Bearer z2kuDZ1B4473SSXPjKvKNmu5NIopNKcfAZemnhpyOFI=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUuSwn-kclUAACzh
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
authorization: Bearer kJXWD3FJ4wjgsFsfjBPuXXEzkvVo3nOPnM6NJ1tJaeg=
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
x-request-id: FzTFnU5M7B07TuQAAC-C
location: /api/reservations/98c72110-240f-4840-9e32-869110e19438
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
    "id": "98c72110-240f-4840-9e32-869110e19438",
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
* __Path:__ /api/reservations/98c72110-240f-4840-9e32-869110e19438
* __Request headers:__
```
authorization: Bearer kJXWD3FJ4wjgsFsfjBPuXXEzkvVo3nOPnM6NJ1tJaeg=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnU5h0f87TuQAACNE
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
    "id": "98c72110-240f-4840-9e32-869110e19438",
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
authorization: Bearer yXj5h2JUtfEJE3QLS2N5Ar4fCgbdPSU6t2HEIhuigpo=
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
x-request-id: FzTFnUvgxFRjIsQAACGE
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
* __Path:__ /api/reservations/5002ee13-9ca2-48ab-95fc-16987a945049
* __Request headers:__
```
accept: application/json
authorization: Bearer CAqftMsD9fNKP7kMwJXLWOZCeowx85kVZtsXTjQxYoA=
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
x-request-id: FzTFnUx_XtgtKUsAAC1h
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
    "id": "5002ee13-9ca2-48ab-95fc-16987a945049",
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
* __Path:__ /api/reservations/5002ee13-9ca2-48ab-95fc-16987a945049
* __Request headers:__
```
accept: application/json
authorization: Bearer CAqftMsD9fNKP7kMwJXLWOZCeowx85kVZtsXTjQxYoA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUyesL0tKUsAAC2h
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
    "id": "5002ee13-9ca2-48ab-95fc-16987a945049",
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
* __Path:__ /api/reservations/8ed0da38-075d-42c0-9d72-d9e6d1b0467d
* __Request headers:__
```
accept: application/json
authorization: Bearer Wi38AGLT0VmuXG_uIfqN5faflAmLsWOa_CwjWDgjvIk=
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
x-request-id: FzTFnU0hgsUMd6IAACJk
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
* __Path:__ /api/reservations/5704efb7-cec4-489b-bef5-d37b83fe8cdf
* __Request headers:__
```
accept: application/json
authorization: Bearer kFjtHyf3D043AkColg7FjMxu3NsNUUgW200YMQPdVro=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnU3AWCgkN5QAAC4h
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
  "email_or_phone": "user-576460752303417055@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS7XpMEr6EAAABmh
```
* __Response body:__
```json
{
  "data": {
    "token": "ZqRin-jkaL8XSqTJ19rJ0FahS4jsj92RBs4cuLR3yZY="
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
  "email_or_phone": "7651",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTK126EigBUAAB1B
```
* __Response body:__
```json
{
  "data": {
    "token": "BRUwZgS1BiRfznD1Qz575YZhvfQMdp9n8WFX5bxiILM="
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
  "email_or_phone": "user-576460752303416607@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnS-BqZv9mCAAABYD
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
  "email_or_phone": "7042",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTAY95Nsv5kAABqi
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
authorization: Bearer dKyLe8fWoSVPNErZ6bd81Ux_aULEQm6LwQawD1eqcsE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnTCSskKmj9AAABuC
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
x-request-id: FzTFnTGK2OVEmZoAABzC
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
authorization: Bearer kbkLSrHvYrZJL6oRCorkuitHZvvKoNv9JmurimB0ZkE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUIxkUvZ6RAAACGj
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303416028@example.com",
      "id": "ca5ddb74-4d13-40e2-b2d9-a99f3f64525c",
      "name": "user-576460752303416060",
      "phone": "7493"
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
authorization: Bearer KexSvrLKxmZyBmkbKM8VO6UZuqljUrjMioE_P7xqlpc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUVkaeNjGR0AACjh
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "2b04e2e0-10c3-48ac-a7a8-05dc4ea12917",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303415228@example.com",
      "id": "376b9187-9c14-4018-88fa-83c4fddced11",
      "name": "user-576460752303415260",
      "phone": "8293"
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
authorization: Bearer -iotysy63GmFWuAIqSY5bzzLXRi0Hu64kVA_XWUsSOY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUbAQIc4fPkAACCE
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "7962eeff-cd96-44a7-98d0-f0c661dcc5ee",
      "license": "licence-576460752303412671"
    },
    "user": {
      "email": "user-576460752303412735@example.com",
      "id": "9152398b-1759-47c2-bbdb-46b5eb321e0e",
      "name": "user-576460752303412767",
      "phone": "10786"
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
authorization: Bearer 0UNMSPTooHMo3OakG2YGgcEZ73O_rH7DhPlm6GRt0mY=
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
x-request-id: FzTFnUQeJ87a1G0AACtC
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "8t6hlRTVaxKePTnY9G5afRwliZIdQ-pnFBCJPs56SWw="
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
authorization: Bearer wnOlowMadtR0Bc6wSwPVVJwS62VDy5y0vzpRcvV475I=
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
x-request-id: FzTFnUfW0vuzegkAACyC
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
authorization: Bearer H--lBnB1f2-IcpiSARn8oPNRaDrRb9-Is0eagkzXW88=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303412478@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUNlK1E8sUkAACsi
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
authorization: Bearer 4sEfDssr-VbPtmYIpzIR41Hh9aPgMwgH-EEqQuMUCSQ=
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
x-request-id: FzTFnUTjDzd6kScAACOD
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
authorization: Bearer 71_TWnWtoGdqPzOOW9CtAB18rGToDf0_aUTbBxO9DRE=
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
x-request-id: FzTFnUc9nsfVod4AACFk
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
      "id": "81bd1be5-3151-497c-bb46-788c6ca223c6",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303415004@example.com",
      "id": "8084af0c-584a-43d5-a4a4-bd478d4228d1",
      "name": "user-576460752303415036",
      "phone": "8517"
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
authorization: Bearer ncd_X8yzAoMNoyyyg_9xsmeVz6r3LG8axj5LMM0CiZQ=
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
x-request-id: FzTFnUKtNEfdOdEAACiB
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "8e1c16fc-be4e-4021-bdb3-9b800a7f17af",
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
      "email": "user-576460752303413183@example.com",
      "id": "a4c60257-c554-42cf-a981-5b5b8df114a4",
      "name": "user-576460752303413215",
      "phone": "10338"
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
authorization: Bearer _jog-D45bLCbL0e04XepukdgVflt75a34R6iyP49fFo=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303415389",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnT3QxuH1VzgAAB_D
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
authorization: Bearer 2pGAOnr0DyldwONYGrONU8-OfaZrJlSOYC5WnhADST8=
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
x-request-id: FzTFnUeglZlhZzoAACwC
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
authorization: Bearer HnQ0TgRlQ53tpawEiW4Ib3qsYrIKyfa_BR1aoPjldeY=
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
x-request-id: FzTFnT5FpRbjvIAAACAj
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
* __Path:__ /api/confirm_email/f7j-QH5Te_uNkcT849ywNG4T7dJJjD5dF5AyRL0qEJE
* __Request headers:__
```
accept: application/json
authorization: Bearer ri_GLGL8xas1_KJiMGoo__5QtOMo0Jq4viWhSC6PLPk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUWmyjYgVPAAACkh
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
authorization: Bearer XwDX7oeMxaElq0fjQEFyypQyu_3ZM6fe7nkha-XIktY=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUZhkH1hVWoAACWj
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
authorization: Bearer DSSHPHpcXM-go9RvcSKDkwWN0-WA33Vw9bzCTHkAZIQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzTFnUhQA1Yc8l0AACvB
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "7aa0afca-66b0-4412-bfe1-6d468afa2552"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/b2230472-308f-477d-8aa5-1a7c55b4040c
* __Request headers:__
```
accept: application/json
authorization: Bearer SkZgWFsALisE0wX70HSQPj2jy9S2CoMq933M1tFqjlI=
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
x-request-id: FzTFnUjhnMFKr24AAC2i
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "b2230472-308f-477d-8aa5-1a7c55b4040c"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/b2230472-308f-477d-8aa5-1a7c55b4040c
* __Request headers:__
```
accept: application/json
authorization: Bearer SkZgWFsALisE0wX70HSQPj2jy9S2CoMq933M1tFqjlI=
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
x-request-id: FzTFnUkmx2RKr24AAC3C
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "b2230472-308f-477d-8aa5-1a7c55b4040c"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/bed6b70b-7a3a-45c4-b9bf-f4e8e078d04c
* __Request headers:__
```
accept: application/json
authorization: Bearer FFMXiHAeifURqdFPE56kZuBArJbr1jQrUbrdcpjzPN8=
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
x-request-id: FzTFnUtGIDGpWfsAAC6C
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

