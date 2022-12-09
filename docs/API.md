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
  "id": "126f72e4-3afa-48fd-81c8-30390ba87b7f",
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
* __Topic:__ rides:893bf7b2-bd38-40d3-8941-137c520f6a57
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:893bf7b2-bd38-40d3-8941-137c520f6a57
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
* __Topic:__ rides:a9306996-0523-4d97-ac4b-baccb229f651
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:a9306996-0523-4d97-ac4b-baccb229f651
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
* __Topic:__ rides:bf02cd16-f598-4665-ad08-c22eb710c974
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:bf02cd16-f598-4665-ad08-c22eb710c974
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
* __Topic:__ rides:5c5e0a48-e79e-46a7-8d95-033c0b8c215b
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:5c5e0a48-e79e-46a7-8d95-033c0b8c215b
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
* __Topic:__ rides:cccf065c-b725-45be-9b9c-11a7493d4da3
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
* __Topic:__ rides:cccf065c-b725-45be-9b9c-11a7493d4da3
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:cccf065c-b725-45be-9b9c-11a7493d4da3
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
* __Topic:__ rides:44e7bae5-36b2-4b90-b02a-9f5255ba6e4f
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
* __Topic:__ rides:44e7bae5-36b2-4b90-b02a-9f5255ba6e4f
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:44e7bae5-36b2-4b90-b02a-9f5255ba6e4f
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
authorization: Bearer D33xp_mCBtZHQeUqlePQpyQRwIZmspyc0Bn2Q1-7-OE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rsFhuj9tFTQAAAck
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
authorization: Bearer Aga_-1piG4OwvrBZbmVzR1_vI1U7h3JhN_FNqOVdqvg=
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
  "name": "some address"
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruLB3M3JPC0AABYC
```
* __Response body:__
```json
{
  "data": {
    "id": "bad58e8a-7f60-43ed-bf73-a1152382bf96",
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
* __Path:__ /api/addresses/bad58e8a-7f60-43ed-bf73-a1152382bf96
* __Request headers:__
```
accept: application/json
authorization: Bearer Aga_-1piG4OwvrBZbmVzR1_vI1U7h3JhN_FNqOVdqvg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rush2KfJPC0AABfk
```
* __Response body:__
```json
{
  "data": {
    "id": "bad58e8a-7f60-43ed-bf73-a1152382bf96",
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
* __Path:__ /api/addresses/93b9e39f-8f5c-47f4-bde4-45e73bd8ddcb
* __Request headers:__
```
accept: application/json
authorization: Bearer w7eJoP42tO-u-ouBAGUhWBRTV6HM79_lUB3E60l-IUA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru0kZNlAZw4AABpB
```
* __Response body:__
```json
{
  "data": {
    "id": "93b9e39f-8f5c-47f4-bde4-45e73bd8ddcb",
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
    "name": "address-576460752303415870"
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
authorization: Bearer 5MAXrU4s5EjztN_YXLrFK-edsf9JLdaVnT2pghhxTVQ=
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
x-request-id: Fy7_rvBxgjjI__4AACHC
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
* __Path:__ /api/addresses/9217a6f4-bd5e-448e-92f2-360fed3f8835
* __Request headers:__
```
accept: application/json
authorization: Bearer Ui8mkzPT8Zui72th-sT1019ag93ZPygoKj4755KjFvM=
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
x-request-id: Fy7_ru-o86VdLXoAACOD
```
* __Response body:__
```json
{
  "data": {
    "id": "9217a6f4-bd5e-448e-92f2-360fed3f8835",
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
* __Path:__ /api/addresses/9217a6f4-bd5e-448e-92f2-360fed3f8835
* __Request headers:__
```
accept: application/json
authorization: Bearer Ui8mkzPT8Zui72th-sT1019ag93ZPygoKj4755KjFvM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru_sZs5dLXoAACQD
```
* __Response body:__
```json
{
  "data": {
    "id": "9217a6f4-bd5e-448e-92f2-360fed3f8835",
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
* __Path:__ /api/addresses/3b035af9-bfc8-4186-9e0b-00186c96841e
* __Request headers:__
```
accept: application/json
authorization: Bearer EH2Vp2XA6JoLaWCZ2z340W9u-B9HJqb5DMbgVZPT5P8=
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
x-request-id: Fy7_ru5sF5VW5E8AACIj
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
* __Path:__ /api/addresses/f69e7e84-7fc8-4eb6-9898-1dec69708d48
* __Request headers:__
```
accept: application/json
authorization: Bearer 6HDmr_zP52hKkxgCYvuaq9mYof5zUgnQaag7jDYYe5c=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruAbhwgfhdcAABTi
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
authorization: Bearer pOKabH1Pn7Bcg0rspK2OMlSuRF0VbZX-aEYkSxvx4h4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruXpaxUG0lkAABhi
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "a4edde12-5e17-47fa-a1b4-51579d51ad40",
      "license_plate": "license--576460752303417278",
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
authorization: Bearer NXAG7QH3TWrAX9ZT3afeHjGeO0jLAwBlRycU1rV0S7E=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303417502",
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
x-request-id: Fy7_ruQ-1dxDJhUAABeC
location: /api/cars/70c3b3c0-a56d-4476-aa14-f41461fc0992
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "70c3b3c0-a56d-4476-aa14-f41461fc0992",
    "license_plate": "license--576460752303417502",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/70c3b3c0-a56d-4476-aa14-f41461fc0992
* __Request headers:__
```
accept: application/json
authorization: Bearer NXAG7QH3TWrAX9ZT3afeHjGeO0jLAwBlRycU1rV0S7E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruTIHlRDJhUAABYB
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "70c3b3c0-a56d-4476-aa14-f41461fc0992",
    "license_plate": "license--576460752303417502",
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
authorization: Bearer mG6C_uanwyzfrDK9Rw5XbWdS6R13TRNgUFbR7EE6GgE=
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
x-request-id: Fy7_rudq63VOubEAABjB
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
* __Path:__ /api/cars/7ec7b612-c6d3-44fd-9ba3-33ea0a26d917
* __Request headers:__
```
accept: application/json
authorization: Bearer Ht9WI6_A63wHWIyH9QBROZGtzGIHGseHwWViO9XhFXU=
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
x-request-id: Fy7_ruLnKx_dIIsAABSB
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "7ec7b612-c6d3-44fd-9ba3-33ea0a26d917",
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
* __Path:__ /api/cars/0057b609-685c-41ab-85f2-2b4ebedc5cd4
* __Request headers:__
```
accept: application/json
authorization: Bearer xbpNkHCM17IrTqWcr7OivRQiJOzJwRjLwBJUY4z6XMs=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rsGJnGhKS7QAABCC
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
  "email": "user-576460752303418366@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtqC7YPXU6wAABRC
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
  "email": "user-576460752303418238@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtsJm7g2yY0AABAE
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
x-request-id: Fy7_rtUEnh__GpIAABKi
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
* __Path:__ /api/confirm/2m0tMwYfe6Y1qyna9M9hQO3RZn9eedmRgBBUfSu0POA
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
x-request-id: Fy7_rtQZR33ZGckAAAxB
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
* __Path:__ /api/confirm/2m0tMwYfe6Y1qyna9M9hQO3RZn9eedmRgBBUfSu0POA
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
x-request-id: Fy7_rtSuGlzZGckAABMD
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
x-request-id: Fy7_rsHAxrEaJsEAAAkh
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
authorization: Bearer 2LgTP00FYp59ckqSXxyNl_1qNhfQ51_JxSgMQnqrdOA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtexzJkn0hYAAA8B
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
* __Path:__ /api/customers/c3e9f2c0-49f3-4b87-a4ad-ec7c8173f243
* __Request headers:__
```
accept: application/json
authorization: Bearer lyjfq6gaJ6NgP_t0ZxmsArHz79nPV86KLl-5AXPLi-E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtZmHJ9pa9gAABRj
```
* __Response body:__
```json
{
  "data": {
    "id": "c3e9f2c0-49f3-4b87-a4ad-ec7c8173f243"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/58517f82-dc73-48f0-b62a-7bc0fbdbdaad
* __Request headers:__
```
accept: application/json
authorization: Bearer lyjfq6gaJ6NgP_t0ZxmsArHz79nPV86KLl-5AXPLi-E=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtbLHytpa9gAAA7h
```
* __Response body:__
```json
{
  "data": {
    "id": "58517f82-dc73-48f0-b62a-7bc0fbdbdaad"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/c68bae67-74b1-457a-aeaf-e96a4bdcab79
* __Request headers:__
```
accept: application/json
authorization: Bearer meAoLAJCOgIj7knYZGnPQrcAtUKcA1LhVWi0Ci2TjEY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rsGiotoGkocAABEC
```
* __Response body:__
```json
{
  "data": {
    "id": "c68bae67-74b1-457a-aeaf-e96a4bdcab79"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/8c4a4585-ffe7-433e-af29-3bc7570846d1
* __Request headers:__
```
accept: application/json
authorization: Bearer meAoLAJCOgIj7knYZGnPQrcAtUKcA1LhVWi0Ci2TjEY=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtT1La8GkocAABMj
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
authorization: Bearer mVdZ-gWTzZE_GhRZR_C8Yq1FJlxO0ZvEKhNRoKZ-SNc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru0pnijHMakAABph
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303417020@example.com",
      "id": "782a3255-b891-41f6-86f1-a479f1a4c7b8",
      "name": "user-576460752303417052",
      "phone": "6501"
    },
    {
      "credit": 0,
      "email": "user-576460752303416030@example.com",
      "id": "0d816d57-d3ed-43ec-97d2-fd0b3901a8c9",
      "name": "user-576460752303416062",
      "phone": "7491"
    },
    {
      "credit": 0,
      "email": "user-576460752303415710@example.com",
      "id": "cb5646ad-5adb-4df1-8d95-3d62bd5d09bf",
      "name": "user-576460752303415742",
      "phone": "7811"
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
authorization: Bearer LS9yrOsH-LIVDbKbfonqr8gRwHiytUgX4IY4U3welo0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvD6xcSyA_YAACKC
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "3094d2a1-6758-4160-a0e1-b1604baf4981",
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
authorization: Bearer x9XpOHPtGIl1n45RqNZTm0ztqK6j_gT_gQf2dMosxXw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rs9YVRi6gSsAABGj
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303419613@example.com",
      "id": "d2307287-d08d-4227-8ab6-d1e7b5cbf89e",
      "name": "user-576460752303419645",
      "phone": "3908"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/1411115e-6e05-4f25-9228-7881ecba84c1
* __Request headers:__
```
accept: application/json
authorization: Bearer d8-TPw0Ajd_WdYOV37hFhtKPO1GsBXacEW6EdszlCM4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruNYKxQEdQ0AABvD
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303418623@example.com",
    "id": "1411115e-6e05-4f25-9228-7881ecba84c1",
    "name": "user-576460752303418655",
    "phone": "4898"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/52d35631-ec5f-497c-b6c1-9ee4a17f9092
* __Request headers:__
```
accept: application/json
authorization: Bearer d8-TPw0Ajd_WdYOV37hFhtKPO1GsBXacEW6EdszlCM4=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruPBIn0EdQ0AABdC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303419036@example.com",
    "id": "52d35631-ec5f-497c-b6c1-9ee4a17f9092",
    "name": "user-576460752303419068",
    "phone": "4485"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/79192716-c679-44c8-aaad-d2c90c9f18a2
* __Request headers:__
```
accept: application/json
authorization: Bearer KfEg6UiLu5DyUV2T-2XNaX-MaqE9tcgvSA7c39jelhc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruYdfZRkJ_4AABlC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303416125@example.com",
    "id": "79192716-c679-44c8-aaad-d2c90c9f18a2",
    "name": "user-576460752303416157",
    "phone": "7396"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/ae7e5b81-6919-4a7d-9998-6461f54769ef
* __Request headers:__
```
accept: application/json
authorization: Bearer KfEg6UiLu5DyUV2T-2XNaX-MaqE9tcgvSA7c39jelhc=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruZY3ZpkJ_4AABfB
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
authorization: Bearer yg2gsnSCBRcFMQRtlwjnIu4kVj3-lpGFtI1UHk2VK6g=
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
x-request-id: Fy7_rukA7QdY8y8AABxC
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
authorization: Bearer VhaidcIkyy6JoxPgU8lBhhwTC2zVe0XFJWpl0ZheZkg=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303418140"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rufUS5yA-QMAABUE
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
authorization: Bearer uVGRM5cnjOQlaf9eRlufZEmzcLf3PK36-rKAI3Uh7d8=
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
x-request-id: Fy7_ru6ufwfQD4QAABwk
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
authorization: Bearer uVGRM5cnjOQlaf9eRlufZEmzcLf3PK36-rKAI3Uh7d8=
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
x-request-id: Fy7_ru8IBiHQD4QAACKj
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
authorization: Bearer uVGRM5cnjOQlaf9eRlufZEmzcLf3PK36-rKAI3Uh7d8=
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
x-request-id: Fy7_ru9SOBfQD4QAACEC
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
authorization: Bearer ciOzjk5P3-NZV2WiGMz1es1YR-PNib7maLJHkKE8iv0=
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
x-request-id: Fy7_ruch5-RGMqYAAB7D
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
authorization: Bearer YJOqU9pQTjKs76313BwTMxs1A69JAeu8aOzxeIyGbi4=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "7d0a666d-0b6f-4ea5-9270-76d8b9158c9f"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruCBvKMi-9gAABqD
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
authorization: Bearer cagj7IkqdahY7j9tLKzi7Wv_9EiWkZjvv2sP-D43ey8=
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
x-request-id: Fy7_rwm708Su3g8AADDD
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "cc6f829f-6623-48c4-a3de-568d2b8b1aee"
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
authorization: Bearer QgmOTX_9b-DduuEGbcQOEe3k6gFmccmHL3DAmNR_dJ4=
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
x-request-id: Fy7_rwktQCLEvHcAACdh
```
* __Response body:__
```json
{
  "data": {
    "id": "df5606a4-910e-4dce-93ec-9463f959c9f9",
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
authorization: Bearer QgmOTX_9b-DduuEGbcQOEe3k6gFmccmHL3DAmNR_dJ4=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwlG9p7EvHcAACeB
```
* __Response body:__
```json
{
  "data": {
    "id": "df5606a4-910e-4dce-93ec-9463f959c9f9",
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
authorization: Bearer hi28wjlOxKdiItHv_w-hSG75u8-Giq74iytDYoRkhI8=
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
x-request-id: Fy7_rwjhwgRXd6wAADCi
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
authorization: Bearer 12yIGjAnv904ofMEzsM4tvwN-YVboddGLnGfabDw5OQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwWGMIkT5FcAACdE
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
authorization: Bearer 12yIGjAnv904ofMEzsM4tvwN-YVboddGLnGfabDw5OQ=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwWij6ET5FcAAC0C
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
      "id": "dca859cb-76f9-4dba-8067-ea98bf3dcb96",
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
authorization: Bearer R0ize5U7WiFQav3PZTkHyuwtsSBa8gap6onJogjPaNo=
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
x-request-id: Fy7_rwFsWEK5QWsAACXk
location: /api/rates/d8171e8e-1aeb-47e4-a654-431b63b0333c
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
    "id": "d8171e8e-1aeb-47e4-a654-431b63b0333c",
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
* __Path:__ /api/rates/d8171e8e-1aeb-47e4-a654-431b63b0333c
* __Request headers:__
```
authorization: Bearer R0ize5U7WiFQav3PZTkHyuwtsSBa8gap6onJogjPaNo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwGIUXO5QWsAACYE
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
    "id": "d8171e8e-1aeb-47e4-a654-431b63b0333c",
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
authorization: Bearer vk1sZtrw5xLWxMclbAbh1sBVmbOKgLQ-3pR3T29bfyw=
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
x-request-id: Fy7_rwR1K3t2BK0AACvi
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
authorization: Bearer O4hZmyJ9qQ9ksCLqJQYTvT28kZCKPKGXdWthNLN9mws=
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
x-request-id: Fy7_rwUerFUy9ckAACbE
location: /api/rates/6fd6ba52-b06d-4446-86b7-892d228b3687
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
    "id": "6fd6ba52-b06d-4446-86b7-892d228b3687",
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
* __Path:__ /api/rates/6fd6ba52-b06d-4446-86b7-892d228b3687
* __Request headers:__
```
authorization: Bearer O4hZmyJ9qQ9ksCLqJQYTvT28kZCKPKGXdWthNLN9mws=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwU5gggy9ckAACzC
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
    "id": "6fd6ba52-b06d-4446-86b7-892d228b3687",
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
authorization: Bearer 1cchIl2iJ1T4KCFA1Lycaw4G-P7xOVFoBEALOwmeCvQ=
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
x-request-id: Fy7_rwCcpydTy1EAACVE
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
* __Path:__ /api/rates/update_time_rate/794ce2a7-6389-40ef-8cd5-73ffaa79df06
* __Request headers:__
```
authorization: Bearer AtjzG4oBkvRENdVLlHD9OsBgqRGGHukc29VahM88IlY=
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
x-request-id: Fy7_rwJf7NNkTuIAAC_D
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
    "id": "794ce2a7-6389-40ef-8cd5-73ffaa79df06",
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
* __Path:__ /api/rates/794ce2a7-6389-40ef-8cd5-73ffaa79df06
* __Request headers:__
```
authorization: Bearer AtjzG4oBkvRENdVLlHD9OsBgqRGGHukc29VahM88IlY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwKDc81kTuIAAC_j
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
    "id": "794ce2a7-6389-40ef-8cd5-73ffaa79df06",
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
* __Path:__ /api/rates/update_time_rate/c8b8b894-f7cd-423b-9a9c-11f8baa7b443
* __Request headers:__
```
authorization: Bearer VqnJbaro8-80UUBSij2ASLwhC1pThHTOE5vdz4coxQ0=
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
x-request-id: Fy7_rwLQEKu5ahoAACRh
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
* __Path:__ /api/rates/update_area_rate/18b97e1d-c203-4856-a841-1fc87d41e09e
* __Request headers:__
```
authorization: Bearer LR2xHAcLTQaq42RrmrbD-7XMhMhEdP4YF-VD7IGiFHs=
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
x-request-id: Fy7_rwPtQQibnjwAACvC
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
    "id": "18b97e1d-c203-4856-a841-1fc87d41e09e",
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
* __Path:__ /api/rates/18b97e1d-c203-4856-a841-1fc87d41e09e
* __Request headers:__
```
authorization: Bearer LR2xHAcLTQaq42RrmrbD-7XMhMhEdP4YF-VD7IGiFHs=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rwQunyKbnjwAACYk
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
    "id": "18b97e1d-c203-4856-a841-1fc87d41e09e",
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
* __Path:__ /api/rates/update_area_rate/c84cbc22-cf42-4669-b06b-9d688579fcb0
* __Request headers:__
```
authorization: Bearer qcaG1kM9wgoVRJ4J1EJ9qKdAaffGCJM8IjTJdnZYJdI=
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
x-request-id: Fy7_rwOkPd9GNz0AACtC
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
authorization: Bearer zGH0oivqN1CuTQNa9zkj1uZFjhd7wA8XCZ-DjUryCz4=
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
x-request-id: Fy7_rwM4d2VQlB0AACTh
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
authorization: Bearer Ebk4nmXmh4kiaERhL5FkUyt_GLdclp4AP-Vy8dYr4kU=
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
x-request-id: Fy7_rwH0STAAmRYAACri
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
authorization: Bearer SgeXu-ToI-z6HHysFgowhq1SvG6jDt8y-95eC0AXa1U=
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
x-request-id: Fy7_rwER2oyBWSgAAC8j
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
    "email": "user-576460752303419615@example.com",
    "name": "user-576460752303419583",
    "password": "hello world!",
    "phone": "3970"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rt0E6FqU8nwAAA-h
```
* __Response body:__
```json
{
  "data": {
    "id": "3b1ba1dc-2846-401c-9c47-844d6e5cc947",
    "token": "nobqfkRM_GvUXJNpwryQZrNnKLZSn08q4Gj_QtENeFU="
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
x-request-id: Fy7_rtznPLZ5Gf4AABYD
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
    "email": "user-576460752303417597@example.com",
    "identity_card": "identity-card-abc",
    "license": "driver-license-abc",
    "name": "user-576460752303417565",
    "password": "hello world!",
    "phone": "5988"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rt2pO8_zcsMAABeD
```
* __Response body:__
```json
{
  "data": {
    "id": "81bac847-9de8-4ed4-9335-a0c08cc99045",
    "token": "qnT_1UxQBwyx50lOf1oi2NYYNNGxIE3QmkEov7B8h54="
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
    "email": "user-576460752303419356@example.com",
    "name": "user-576460752303419324",
    "password": "hello world!",
    "phone": "4229"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtyTH8UPTMQAABCk
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
    "email": "user-576460752303418045@example.com",
    "name": "user-576460752303418013",
    "password": "hello world!",
    "phone": "5540"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rtw5YM8ftbgAABXD
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
x-request-id: Fy7_rtVXDkietC0AAAzh
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
  "email": "user-576460752303417789@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rt09aHl7Ec4AAA_B
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
x-request-id: Fy7_rt2gXcCD4IsAABbj
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
* __Path:__ /api/reset_password/Bz1aeJGVRY288o99Y7Hz-VF8c7ug4gmQFRXCu6iLz5U
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
x-request-id: Fy7_rtyOotTzYLIAABXj
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
* __Path:__ /api/reset_password/ssI3UwSS-vyS3TWgLYncfOu48K-YU6BiYqKZ2j-A7nI
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
x-request-id: Fy7_rtVoEWKGSNwAAA1h
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
x-request-id: Fy7_rtSARwAcRZcAAAzB
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
authorization: Bearer nYterLfPyXJzyg3W9DMK8sw1WWd_wh_jB17Oc0IeNe8=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvnBxC8cz9IAACHB
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
      "id": "365c133c-08d5-4fab-9a48-8d72280710fb",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "ffa638b8-4596-4779-aa37-0c8a05d7f492",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "206fcd84-b18e-47dd-a12b-eb93edb25f4b",
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
authorization: Bearer brwkO-iZLa6uwgDnTW_TAKevSobXIi0Ei9Tz2FUcZLQ=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruSsALTvpLYAABei
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
      "id": "ff5863d4-dc7b-4a48-afe6-2be6dce9fb27",
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
authorization: Bearer jXTyoapbSQTfmIRgRm7t4t7yPOlfAmclhoCkb8dFITI=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru1t4NU814sAABvE
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
      "id": "252e1b63-147a-4c03-b239-b3291dbe7010",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "b316b070-ec86-4cc5-bb3b-eea2967f1b77",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/6b289e0c-d61b-411f-b6e5-c6cb2932f398
* __Request headers:__
```
accept: application/json
authorization: Bearer gGNFuS6HYVIdDKhgelWEVNLm_tjGhBFtezmyAh3DhOM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru-1K7PudxkAABzB
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
    "id": "6b289e0c-d61b-411f-b6e5-c6cb2932f398",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/ec72f1b7-6c3e-4883-8fc6-23e530c4b25d
* __Request headers:__
```
accept: application/json
authorization: Bearer gGNFuS6HYVIdDKhgelWEVNLm_tjGhBFtezmyAh3DhOM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ru_pgZXudxkAACFi
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
    "id": "ec72f1b7-6c3e-4883-8fc6-23e530c4b25d",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/f8467eae-b5b3-4714-ab2a-10264abd24b2
* __Request headers:__
```
accept: application/json
authorization: Bearer NEUaR0Qjn-bqzdr9wj3rtqB_RwDqsqhh8h-MzOKaP5o=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvVKvw8NoiEAAB6h
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
    "id": "f8467eae-b5b3-4714-ab2a-10264abd24b2",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/fa7729bd-8e8e-47b7-9f3d-0e8686adfcaf
* __Request headers:__
```
accept: application/json
authorization: Bearer 7sKk70adAXjoKK9tx0FroH7nVgeq6hwssmthOEAFYKo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvMNte5XOsgAAB4k
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
    "id": "fa7729bd-8e8e-47b7-9f3d-0e8686adfcaf",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/77493550-37dd-42f1-91cf-d1d38488c431
* __Request headers:__
```
accept: application/json
authorization: Bearer ZbdV_crKaQ0NBW3IFY95cqQVGWtXLLCBOdWDW44qlrY=
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
x-request-id: Fy7_rvb1h0NUiOkAAB-h
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
    "id": "77493550-37dd-42f1-91cf-d1d38488c431",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/a173f524-b1ae-468a-b411-8aa1ce968f30
* __Request headers:__
```
accept: application/json
authorization: Bearer -H6X_tiKXsuUlnyXk6aK_WPrG7fzaNIrMfQU15u9Kdg=
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
x-request-id: Fy7_rvFKkNxe7qEAACMC
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
    "id": "a173f524-b1ae-468a-b411-8aa1ce968f30",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/381e7d0c-95c2-40b2-822f-0569c53abaf1
* __Request headers:__
```
accept: application/json
authorization: Bearer qMCJZ65aHtxehd3OJRKihlFq-t6sOntxNyBALJWOZgQ=
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
x-request-id: Fy7_rui18nQmvoQAABjh
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
    "id": "381e7d0c-95c2-40b2-822f-0569c53abaf1",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/fb7dec81-537c-4b74-a008-86e454ea0837
* __Request headers:__
```
accept: application/json
authorization: Bearer 3_3yS_2w4Eqt_6n2gjJmHEO43AReGB-h3LpK2E0kuII=
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
x-request-id: Fy7_ruZ9wCOklDMAAB5D
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
    "id": "fb7dec81-537c-4b74-a008-86e454ea0837",
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
authorization: Bearer vaVt0R9In0RYmq2VfssYypU9rfQwt5bPk4013GhjKhk=
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
    "ride_request_id": "e0328e34-a534-4f17-8d05-854d14e28c66",
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
x-request-id: Fy7_rwBMRbEO4rUAACoC
```
* __Response body:__
```json
{
  "data": {
    "id": "1966caee-f510-4162-9b00-eddbdd65e28e",
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
authorization: Bearer 2I6_biq1s9pgOgm7gEacu1scfrbK5lZ1J0wGUYeZjWs=
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
x-request-id: Fy7_rv_TIvFT6WgAAC6j
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
* __Path:__ /api/rides/accept/390e6a91-03af-4ef4-abda-6496ec3649ef
* __Request headers:__
```
accept: application/json
authorization: Bearer 5p3FCi1k9gY2filDjj2DS6U5TRWcwZh9knNEjb3gb58=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rv9fz09a_ncAACkC
```
* __Response body:__
```json
{
  "data": {
    "id": "390e6a91-03af-4ef4-abda-6496ec3649ef",
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
* __Path:__ /api/rides/accept/176514b3-0021-4735-b18d-2a0fde8f00db
* __Request headers:__
```
accept: application/json
authorization: Bearer 3L6T5zw8oA2jG8JYtplxrMoxLwtAOMaBncNl1IPR9kk=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rv6Ty2EcvT4AACPB
```
* __Response body:__
```json
{
  "data": {
    "id": "176514b3-0021-4735-b18d-2a0fde8f00db",
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
* __Path:__ /api/rides/accept/176514b3-0021-4735-b18d-2a0fde8f00db
* __Request headers:__
```
accept: application/json
authorization: Bearer 3L6T5zw8oA2jG8JYtplxrMoxLwtAOMaBncNl1IPR9kk=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rv7I2nccvT4AACPh
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
  "email": "user-576460752303417567@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruWjO3GO8u4AABME
```
* __Response body:__
```json
{
  "data": {
    "token": "S_brSVUJeRYhKWGZI6YwRUmiTwbbQV3KQRd-kAdhQJQ="
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
  "email": "user-576460752303417791@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruU2PktJPd0AABbh
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
authorization: Bearer rcZHeDKReoB5vcj_kKcgK33ZLZzBm_LEN3YLCtUUtdw=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_ruR0vpQBEBYAABJE
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
x-request-id: Fy7_ruQf_yWb2J8AABIk
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
authorization: Bearer H1rmcEuEXkIHYL7Ev8Tcp2mvWZZHT8poVVpQxIvk01Y=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvQ1lj0l4wIAACgj
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303415935@example.com",
      "id": "9fb8bc24-ced0-44fc-880f-c98af217ed71",
      "name": "user-576460752303415967",
      "phone": "7586"
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
authorization: Bearer 3Nir9vW2kYjuyzs3HctW8r9l4nMdReXyzzGuGJHF7UA=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvrbFb6mnCwAACHh
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "id": "6c57c06a-d0dc-4203-be07-8875a4183e0e",
      "work_location": null
    },
    "user": {
      "email": "user-576460752303414364@example.com",
      "id": "d78ff1f7-b70c-4177-afa0-7d0505aedf9b",
      "name": "user-576460752303414396",
      "phone": "9157"
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
authorization: Bearer IavBssRPyT9kDsKD8rERXG5yhkvST8FMTqEeQ6qCm30=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvWp9LrFojIAACkj
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "3a13d068-8f07-4794-baa1-12efa88191e2",
      "license": "licence-576460752303415615"
    },
    "user": {
      "email": "user-576460752303413053@example.com",
      "id": "b3b65d03-0fc0-42d1-afc0-228fe55f8a47",
      "name": "user-576460752303413085",
      "phone": "10468"
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
authorization: Bearer 1m8xR-vpD2xvZdPYUcOixAtPHw0dMXyCvrkQtOtwBQ4=
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
x-request-id: Fy7_rvlV-e_dOdEAACei
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "5scHntKlKIPkP063ZaLLN4sHqTfIs27id1ZfvL4gEJY="
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
authorization: Bearer PVMAD3arSyYNsBTBm9WcVHLSwiDfC-Iz-Uw5HKlpsO8=
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
x-request-id: Fy7_rvpwjP1t1jMAACNk
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
authorization: Bearer ksBmf3ratSzA2UZ6K5YQr7xQVkQD0vX4UA-hJQ2vArI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303415420@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvSm7Q-VKnYAAB-k
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
authorization: Bearer 3dLx4Vg828wxpWwvHRGJsbw7drh13LQRJIGYv-U3L3c=
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
x-request-id: Fy7_rvaIRtBLWjYAACDk
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
authorization: Bearer 55qkSmt5RuIt4EThzNWfkH66DHleDitnODUYydJGds8=
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
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvcYjNyTUzMAACoj
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
      "id": "cdf56551-bf5e-4694-94c6-b404ac5a9562",
      "work_location": null
    },
    "user": {
      "email": "user-576460752303415004@example.com",
      "id": "edee07dd-5658-4e5a-b994-242e9f334c2a",
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
authorization: Bearer QYaozCgnxuDNbcf3kiWQlSx_jNQzlF-TYsnGyvrkWpI=
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
  }
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvjm-il097UAACsj
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "id": "b505e487-ba5b-415c-af4a-0ef617e84743",
      "work_location": {
        "coordinates": [
          30.2,
          20.3
        ],
        "type": "Point"
      }
    },
    "user": {
      "email": "user-576460752303415135@example.com",
      "id": "a5cefb49-1b09-421f-b37f-5e1bcbe3ec79",
      "name": "user-576460752303415167",
      "phone": "8386"
    }
  }
}
```

#### PUT /settings (change name) updates the user name

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer Odtq_jih_WNwaRBi8zzLd0ohUSDh-cW43kgP5VeP2_I=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": "user-576460752303413502"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvhrukvApIMAACci
```
* __Response body:__
```json
{
  "message": "User name updated successfully"
}
```

#### PUT /settings (change name) does not update name on invalid data

##### Request
* __Method:__ PUT
* __Path:__ /api/settings
* __Request headers:__
```
accept: application/json
authorization: Bearer tdv8QRKRx4ICt7G6xLUitn47vGOZmAlF1LMiczTpVRY=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_name",
  "name": ""
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvozjH9iGCUAACLk
```
* __Response body:__
```json
{
  "errors": {
    "name": [
      "can't be blank"
    ]
  }
}
```

### <a id=turboweb-settingscontroller-confirm_email></a>confirm_email
#### GET /users/settings/confirm_email/:token updates the user email once

##### Request
* __Method:__ GET
* __Path:__ /api/confirm_email/ytoO_f3njtS1KmbUj9pKUtdVR5m91jIfkGPSlO8_CkU
* __Request headers:__
```
accept: application/json
authorization: Bearer 4IEzcyOK7FJJAu93Eqc5-aPIGvLjGX-2ekd0Fl8dT2M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvei17JtN0oAACqj
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
authorization: Bearer RiVlA0kYbNeddrsanO8Vec2fJOcGGLvsslhvT3NBk0I=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rvYEuMqsNQ0AAB-B
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
authorization: Bearer S94o3ZyDbHhPg1L6iB7Z_LkPSTD8Xt1Glyi-bJcagzE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fy7_rv4Swt0HFF0AACiC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "0a1222dd-400b-400f-af5b-da73c602e14e"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/caeec7a3-a11b-422a-b091-f00303cf5f80
* __Request headers:__
```
accept: application/json
authorization: Bearer G2-0ENbz6Br50s1VCyjJHEpPpjgAOYdSENkU-BxFuK0=
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
x-request-id: Fy7_rv1vs7ogVPAAACNB
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "caeec7a3-a11b-422a-b091-f00303cf5f80"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/caeec7a3-a11b-422a-b091-f00303cf5f80
* __Request headers:__
```
accept: application/json
authorization: Bearer G2-0ENbz6Br50s1VCyjJHEpPpjgAOYdSENkU-BxFuK0=
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
x-request-id: Fy7_rv2hGhsgVPAAACgi
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "caeec7a3-a11b-422a-b091-f00303cf5f80"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/3540e629-4868-4ec1-b9be-ac31608a6a12
* __Request headers:__
```
accept: application/json
authorization: Bearer _yBo4fM3952pq4J2bwF_pTIhDZivlDMGHGPnduj5fjw=
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
x-request-id: Fy7_rvs97xhop4UAACyj
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

