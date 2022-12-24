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
  "id": "6f768dab-04cc-4209-9ceb-566642648d05",
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
* __Topic:__ rides:86e818cb-2fea-41ce-b984-2829356dcc95
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:86e818cb-2fea-41ce-b984-2829356dcc95
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
* __Topic:__ rides:d329ea2e-ba6e-4bbd-a2dd-f74171350cec
* __Event:__ ride:driver_location
* __Body:__
```json
{
  "driver_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:d329ea2e-ba6e-4bbd-a2dd-f74171350cec
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
* __Topic:__ rides:917b679f-2a68-43e5-92e3-6bc4e4b7fe33
* __Event:__ ride:chat_message
* __Body:__
```json
{
  "message": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:917b679f-2a68-43e5-92e3-6bc4e4b7fe33
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
* __Topic:__ rides:35f9694c-1531-469a-851a-c54f5e85b04b
* __Event:__ ride:customer_location
* __Body:__
```json
{
  "customer_location": "hello there"
}
```
#### Broadcast
* __Topic:__ rides:35f9694c-1531-469a-851a-c54f5e85b04b
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
* __Topic:__ rides:6b3568b1-350a-43aa-b4cc-84cf8787f3d4
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
* __Topic:__ rides:6b3568b1-350a-43aa-b4cc-84cf8787f3d4
* __Event:__ ride:driver_nearby
* __Body:__
```json
{
  "message": "The driver is nearby"
}
```
#### Message
* __Topic:__ rides:6b3568b1-350a-43aa-b4cc-84cf8787f3d4
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
* __Topic:__ rides:79263953-da01-4f90-b9c4-0650ac738f22
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
* __Topic:__ rides:79263953-da01-4f90-b9c4-0650ac738f22
* __Event:__ ride:customer_nearby
* __Body:__
```json
{
  "message": "The customer is nearby"
}
```
#### Message
* __Topic:__ rides:79263953-da01-4f90-b9c4-0650ac738f22
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
authorization: Bearer seqQA7mSiECDkHmFrCUczpKMtR5zveocnAX0DVsUtyk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtzvy2U8YVsAABhB
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
authorization: Bearer bt5Mw7D1_W6A7HC-TPe5JwbOQ6ZQvvbkzpE_Q4Ku85k=
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
x-request-id: FzPFPu3qHC6ywD0AABvj
```
* __Response body:__
```json
{
  "data": {
    "id": "a47c6809-dbe9-4f22-90d9-c595bc97fa1f",
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
* __Path:__ /api/addresses/a47c6809-dbe9-4f22-90d9-c595bc97fa1f
* __Request headers:__
```
accept: application/json
authorization: Bearer bt5Mw7D1_W6A7HC-TPe5JwbOQ6ZQvvbkzpE_Q4Ku85k=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPu4b67KywD0AABwD
```
* __Response body:__
```json
{
  "data": {
    "id": "a47c6809-dbe9-4f22-90d9-c595bc97fa1f",
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
* __Path:__ /api/addresses/14e5e1b6-aa20-4447-8b42-01a48011fcac
* __Request headers:__
```
accept: application/json
authorization: Bearer BMJWhNlUydxMZnVPmzJsJ6pcwcPI6bwBCq68eHSSao0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPt_Sqm0OVIoAABqk
```
* __Response body:__
```json
{
  "data": {
    "id": "14e5e1b6-aa20-4447-8b42-01a48011fcac",
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
    "name": "address-576460752303416956"
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
authorization: Bearer kd5HRUJPvCrtqdEzdaiPW5yrFBKYIPOpcyUdfQMSc08=
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
x-request-id: FzPFPuepbarlzr0AACKE
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
* __Path:__ /api/addresses/81dd3dfc-05e0-4dc9-a6cb-4d53c713fbee
* __Request headers:__
```
accept: application/json
authorization: Bearer -rZjY3Zy6itPE1je-DF4bCcS_AIutVaijBWDf6P9P5o=
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
x-request-id: FzPFPuvbrdCNhOwAABjD
```
* __Response body:__
```json
{
  "data": {
    "id": "81dd3dfc-05e0-4dc9-a6cb-4d53c713fbee",
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
* __Path:__ /api/addresses/81dd3dfc-05e0-4dc9-a6cb-4d53c713fbee
* __Request headers:__
```
accept: application/json
authorization: Bearer -rZjY3Zy6itPE1je-DF4bCcS_AIutVaijBWDf6P9P5o=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuwXJw6NhOwAACHB
```
* __Response body:__
```json
{
  "data": {
    "id": "81dd3dfc-05e0-4dc9-a6cb-4d53c713fbee",
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
* __Path:__ /api/addresses/e39b36d7-2510-4dfa-b7ca-22a7602e8f0d
* __Request headers:__
```
accept: application/json
authorization: Bearer vQI2trnytSVxs1RwEDM4bl2G0UfUCMHvmZLiUR5gSqM=
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
x-request-id: FzPFPu0eHLYMp40AACKB
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
* __Path:__ /api/addresses/5a2c05e5-8552-4f50-8d70-e864ca3bf6bc
* __Request headers:__
```
accept: application/json
authorization: Bearer JiCpFOQlxAZXz-aqFcw7XX2FeyA9jsA0SCjLnSiLxQs=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPsASneSMZpAAAA9i
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
authorization: Bearer cjzlPzAErOzHntkeu7mCyzkjkRgGN-VSE1kKsvD7-yU=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtsukqFUTbgAABWB
```
* __Response body:__
```json
{
  "data": [
    {
      "color": "some color",
      "id": "875a9eba-a556-4473-a651-d23182204663",
      "license_plate": "license--576460752303418015",
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
authorization: Bearer hpWqfzc_S25p2k9RThFISmfEdhqg62Ams_egp6BRA_A=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "color": "some color",
  "license_plate": "license--576460752303419325",
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
x-request-id: FzPFPt_obEG-nAwAABBj
location: /api/cars/d1e96bf4-43c3-4ffe-9313-c6f11b99150c
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "d1e96bf4-43c3-4ffe-9313-c6f11b99150c",
    "license_plate": "license--576460752303419325",
    "make": "some make",
    "model": "some model"
  }
}
```

### <a id=turboweb-carcontroller-show></a>show
#### create car renders car when data is valid

##### Request
* __Method:__ GET
* __Path:__ /api/cars/d1e96bf4-43c3-4ffe-9313-c6f11b99150c
* __Request headers:__
```
accept: application/json
authorization: Bearer hpWqfzc_S25p2k9RThFISmfEdhqg62Ams_egp6BRA_A=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuAUWoC-nAwAABCD
```
* __Response body:__
```json
{
  "data": {
    "color": "some color",
    "id": "d1e96bf4-43c3-4ffe-9313-c6f11b99150c",
    "license_plate": "license--576460752303419325",
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
authorization: Bearer VDAyLd7oDizAk32rzsMRUc3IHouoAJxOZDshYkSjIb4=
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
x-request-id: FzPFPtmVFXVxuuIAABLB
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
* __Path:__ /api/cars/a0873677-b776-46a4-a5e0-b2d4d91aef66
* __Request headers:__
```
accept: application/json
authorization: Bearer ZVDGtQw5WCrtu06w7Kji6cI0ovG5Q5tglJyyJU73Vmk=
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
x-request-id: FzPFPuKqG-6klDMAABdi
```
* __Response body:__
```json
{
  "data": {
    "color": "some updated color",
    "id": "a0873677-b776-46a4-a5e0-b2d4d91aef66",
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
* __Path:__ /api/cars/da4b9ffc-c7a1-43d4-9bf7-3029aa1f5062
* __Request headers:__
```
accept: application/json
authorization: Bearer LX0GZy-SH32DldOq8qEsmzjVlqlRs3SV3ijjbfS7v2o=
```

##### Response
* __Status__: 204
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPt7NU7fAkk0AABoB
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
  "email": "user-576460752303419167@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtaHjyeVtK0AABRC
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
  "email": "user-576460752303418750@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtLpYYkOo5AAAA3D
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
x-request-id: FzPFPtbzsqcaWJMAABGB
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
* __Path:__ /api/confirm/HjFHTbQopnNoUPmn0w1vKy9pR9yEbd1TrR33js67rzI
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
x-request-id: FzPFPsATC1AiNGkAAAhD
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
* __Path:__ /api/confirm/HjFHTbQopnNoUPmn0w1vKy9pR9yEbd1TrR33js67rzI
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
x-request-id: FzPFPtKUoLEiNGkAAA2j
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
x-request-id: FzPFPtNqLXd7gBsAAA-k
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
authorization: Bearer 3fTnwJgI8bXkkq67DLnMyYrm15M_fH4YbfrMMYv1Rq0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtY3cprrfvsAAA_E
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
* __Path:__ /api/customers/e262c330-3c00-4c4e-8a08-d03f6076e5cf
* __Request headers:__
```
accept: application/json
authorization: Bearer 4s9ONN4RfPdsszJopK9AEACNYvKwHkepPmkAARJRxxg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPr9Tzt4aJsEAAAyE
```
* __Response body:__
```json
{
  "data": {
    "id": "e262c330-3c00-4c4e-8a08-d03f6076e5cf"
  }
}
```

#### show renders the requested customer to admin

##### Request
* __Method:__ GET
* __Path:__ /api/customers/2401916e-8f14-43ef-864f-817698413495
* __Request headers:__
```
accept: application/json
authorization: Bearer 4s9ONN4RfPdsszJopK9AEACNYvKwHkepPmkAARJRxxg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtTsrPUaJsEAAA9h
```
* __Response body:__
```json
{
  "data": {
    "id": "2401916e-8f14-43ef-864f-817698413495"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/645e4566-2d9c-4a1c-b8a3-fdfe6afccb1f
* __Request headers:__
```
accept: application/json
authorization: Bearer BtaNcLH3KuPrk1NCKkXrO97SuyC5X9c2XBYIooCXYmc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtWyihlabyoAABQi
```
* __Response body:__
```json
{
  "data": {
    "id": "645e4566-2d9c-4a1c-b8a3-fdfe6afccb1f"
  }
}
```

#### show only renders the customer to himself

##### Request
* __Method:__ GET
* __Path:__ /api/customers/342440d9-aaa1-4805-adf4-52290709c081
* __Request headers:__
```
accept: application/json
authorization: Bearer BtaNcLH3KuPrk1NCKkXrO97SuyC5X9c2XBYIooCXYmc=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtXUYdtabyoAABAh
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
authorization: Bearer CE3zxLbWPnMEjVwvuds6VK5nnvfhRgwsIl6g36Gx02c=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPugYQRqmj9AAABoi
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303415615@example.com",
      "id": "f8975f73-6b8e-4d6d-b002-0a8a92f6aaf8",
      "name": "user-576460752303415647",
      "phone": "7906"
    },
    {
      "credit": 0,
      "email": "user-576460752303415423@example.com",
      "id": "d8fd46c0-77bb-4917-a432-4ac446e16149",
      "name": "user-576460752303415455",
      "phone": "8098"
    },
    {
      "credit": 0,
      "email": "user-576460752303414588@example.com",
      "id": "c21760c5-54d0-4a54-9cbe-4c91d5a0e27a",
      "name": "user-576460752303414620",
      "phone": "8933"
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
authorization: Bearer txkDCIf3yPZG70dYrLzR_s7JbtmlDugwHbflUZgLeTo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPt0dOME28sAAABRE
```
* __Response body:__
```json
{
  "data": [
    {
      "car_type": "standard",
      "id": "5375b2a4-c8a4-4d5e-98ef-5ec803815d76",
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
authorization: Bearer OJhQW7j9da2Pdxq7nFh9SL5R_HSCN1E4SjUVNh9QNZ0=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuZMeRqV1-QAACDE
```
* __Response body:__
```json
{
  "data": [
    {
      "credit": 0,
      "email": "user-576460752303415740@example.com",
      "id": "890eaac7-5d48-49d7-9a6d-99063f219f24",
      "name": "user-576460752303415772",
      "phone": "7781"
    }
  ]
}
```

### <a id=turboweb-drivercontroller-show></a>show
#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/4745662c-bfc8-43f2-9b98-f868e6d8c274
* __Request headers:__
```
accept: application/json
authorization: Bearer dZM6U9VnIz9jpoiMo6f0258flyQJ7vtPTlwiwBqWv1M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvFDZPrGb5EAACAD
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303415966@example.com",
    "id": "4745662c-bfc8-43f2-9b98-f868e6d8c274",
    "name": "user-576460752303415998",
    "phone": "7555"
  }
}
```

#### show renders the requested driver to admin

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/2f2321c7-1b9b-40d4-8a2f-701bc4e86e1c
* __Request headers:__
```
accept: application/json
authorization: Bearer dZM6U9VnIz9jpoiMo6f0258flyQJ7vtPTlwiwBqWv1M=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvGHtwLGb5EAAB6C
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303415806@example.com",
    "id": "2f2321c7-1b9b-40d4-8a2f-701bc4e86e1c",
    "name": "user-576460752303415838",
    "phone": "7715"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/4cf28c8a-d59a-4c2d-8274-04af1a5aced7
* __Request headers:__
```
accept: application/json
authorization: Bearer H2ayF8hkUDU8-ZyhrZ0F7wxvQUMjdy4xeNn5JWduXRg=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPup4DyFmonIAABuC
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "email": "user-576460752303418301@example.com",
    "id": "4cf28c8a-d59a-4c2d-8274-04af1a5aced7",
    "name": "user-576460752303418333",
    "phone": "5220"
  }
}
```

#### show only renders the driver to himself

##### Request
* __Method:__ GET
* __Path:__ /api/drivers/6c9c815d-de3b-4920-b93d-3bbb1e3dd3c1
* __Request headers:__
```
accept: application/json
authorization: Bearer H2ayF8hkUDU8-ZyhrZ0F7wxvQUMjdy4xeNn5JWduXRg=
```

##### Response
* __Status__: 404
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPus7uWVmonIAABij
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
authorization: Bearer -KcfOLdM7wg7VDN14e4ti4TZ55swrAXjW2Z8yrEQ7JA=
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
x-request-id: FzPFPu3fk9yFqAkAABvD
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
authorization: Bearer meHOXy71WfqsfwYoQQYJru1htQxUc4dLtfm5v3jL7iI=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "license": "license-576460752303414527"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPu_EN7MdOgkAACMh
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
authorization: Bearer PZQnmQLyvb6toGdqu71_Z9j9cL_-sINcbAF3XwvhnlY=
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
x-request-id: FzPFPuzKtxsmvRQAACVE
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
authorization: Bearer PZQnmQLyvb6toGdqu71_Z9j9cL_-sINcbAF3XwvhnlY=
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
x-request-id: FzPFPu0IGCsmvRQAABui
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
authorization: Bearer PZQnmQLyvb6toGdqu71_Z9j9cL_-sINcbAF3XwvhnlY=
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
x-request-id: FzPFPu1CK-gmvRQAACWE
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
authorization: Bearer bN1vrHfYcY9e3p9_pRHd-OuwD4lk_9ltYjFLNv0jNHg=
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
x-request-id: FzPFPvBwoBN-uIsAAB9j
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
authorization: Bearer 0zIH0CN4x1CkDt5jTKy1CuphK6jCusHPvEhy9KTHWCw=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "current_car_id": "6a35d6bb-1193-47f7-b6cb-ad6d436fb89a"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPssdx1d-M-kAAArD
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
authorization: Bearer AAwDyj3GTG_0ewSc80qSJb7m9EB4SBqw5UokiYpcIyM=
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
x-request-id: FzPFPw1DIdJ_3OgAADSE
```
* __Response body:__
```json
{
  "data": {
    "code": "some code",
    "id": "304e6c85-e16d-4aa4-9161-b6c9589fd091"
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
authorization: Bearer gGNkuRIXcM6AFktfkukSlgEafK0g_5EnQrmntkYKBUY=
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
x-request-id: FzPFPwyvh6BXI6gAACqj
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
authorization: Bearer gGNkuRIXcM6AFktfkukSlgEafK0g_5EnQrmntkYKBUY=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwzGl_lXI6gAACrD
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
authorization: Bearer q_Pa3vuE1VEYKSodUjbR7cB4a7w0jHIcUS0GzV08VzE=
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
x-request-id: FzPFPw0B4kACLEUAAC7h
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
authorization: Bearer LxNsOUKigqW8npvKephxhvFvIt3XKxY1SLO1_3WDGC8=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwd7DWU-BjQAADJE
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
authorization: Bearer LxNsOUKigqW8npvKephxhvFvIt3XKxY1SLO1_3WDGC8=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwedA7I-BjQAACei
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
      "id": "b2d7d6c4-4090-4d8e-9175-07303cb37f08",
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
authorization: Bearer Q8wAHyApqfdWhPXyNnHwOXIcf0D5vxPfglZCdg35huM=
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
x-request-id: FzPFPwhE3kbv-8cAACnD
location: /api/rates/59fa9864-b660-4c90-b3d8-48708468c66c
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
    "id": "59fa9864-b660-4c90-b3d8-48708468c66c",
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
* __Path:__ /api/rates/59fa9864-b660-4c90-b3d8-48708468c66c
* __Request headers:__
```
authorization: Bearer Q8wAHyApqfdWhPXyNnHwOXIcf0D5vxPfglZCdg35huM=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwhdXRrv-8cAACnj
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
    "id": "59fa9864-b660-4c90-b3d8-48708468c66c",
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
authorization: Bearer WS7x2MAgo_o4zQRzYR-QlRTaaD1gsxTuLvst2mCyCQQ=
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
x-request-id: FzPFPwYtcAsIkCIAACtB
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
authorization: Bearer hzF4vhZDRvCCoBQCbfn2200UY9x72Z28zP5J1YnXW6Q=
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
x-request-id: FzPFPwV_DQD6HW8AACmj
location: /api/rates/4a26f5c6-a9b1-4588-bc1e-531bceb43765
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
    "id": "4a26f5c6-a9b1-4588-bc1e-531bceb43765",
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
* __Path:__ /api/rates/4a26f5c6-a9b1-4588-bc1e-531bceb43765
* __Request headers:__
```
authorization: Bearer hzF4vhZDRvCCoBQCbfn2200UY9x72Z28zP5J1YnXW6Q=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwWtI1z6HW8AACpB
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
    "id": "4a26f5c6-a9b1-4588-bc1e-531bceb43765",
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
authorization: Bearer d_TQ4Yokddy2IYZUb9TGaZuoe443i0LMrrj0ibQhAqg=
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
x-request-id: FzPFPwX1QsH1-WcAACcC
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
* __Path:__ /api/rates/update_time_rate/d30c4734-f97c-4130-83d6-3a77499f8010
* __Request headers:__
```
authorization: Bearer mrUrOXULUYBLBAVDfwuXVWKxEU6OLIsuGWkMAqxNVVA=
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
x-request-id: FzPFPwls0pMjfe0AAC3h
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
    "id": "d30c4734-f97c-4130-83d6-3a77499f8010",
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
* __Path:__ /api/rates/d30c4734-f97c-4130-83d6-3a77499f8010
* __Request headers:__
```
authorization: Bearer mrUrOXULUYBLBAVDfwuXVWKxEU6OLIsuGWkMAqxNVVA=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwmMcV4jfe0AAC4B
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
    "id": "d30c4734-f97c-4130-83d6-3a77499f8010",
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
* __Path:__ /api/rates/update_time_rate/12a3458b-2384-42b1-ab67-f6272a2ef864
* __Request headers:__
```
authorization: Bearer Ny64ejMh-yh8AHgAIJ-3pqHPIzoOjglvWH2bupHbsYU=
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
x-request-id: FzPFPwZu2WIZTswAACvB
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
* __Path:__ /api/rates/update_area_rate/9f7e9623-539d-42ee-ba75-b9c78c4b5bea
* __Request headers:__
```
authorization: Bearer O9tYkydHMZwePsLH0iSEn2b3f_qgmW0OEf8XF7422Eo=
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
x-request-id: FzPFPwchdG44x6sAACxh
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
    "id": "9f7e9623-539d-42ee-ba75-b9c78c4b5bea",
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
* __Path:__ /api/rates/9f7e9623-539d-42ee-ba75-b9c78c4b5bea
* __Request headers:__
```
authorization: Bearer O9tYkydHMZwePsLH0iSEn2b3f_qgmW0OEf8XF7422Eo=
accept: application/json
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwdAKxk4x6sAACyB
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
    "id": "9f7e9623-539d-42ee-ba75-b9c78c4b5bea",
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
* __Path:__ /api/rates/update_area_rate/74d7219b-01d7-4d99-a472-847c9142d6df
* __Request headers:__
```
authorization: Bearer rDQfJL6JgCRv9zEzwxN7c7mC5UPZLUaBmTRE3mwBUmE=
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
x-request-id: FzPFPwifVoxGQjkAACii
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
authorization: Bearer oZgsEvp8J8I1h5yvC0Bk9g8UIT15SOBf75Lr3NbwVj4=
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
x-request-id: FzPFPwkLATuQbV4AAC3B
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
authorization: Bearer w_a0vobZ6X_At0dk9ecFXQ2bb7y2rOJtk3qAJ9IvpbY=
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
x-request-id: FzPFPwUfiEvR58oAADIE
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
authorization: Bearer jzGQvE8Xb9iSfJtx4XWKG1He2CWFHKX4N1U6i1QpPOM=
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
x-request-id: FzPFPwf-xT1cym4AACgi
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
    "email": "user-576460752303418494@example.com",
    "name": "user-576460752303418462",
    "password": "hello world!",
    "phone": "5091"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtWevV6TEKwAABQC
```
* __Response body:__
```json
{
  "data": {
    "id": "b5b5948b-6c32-4993-b170-e0b80fa9801b",
    "token": "07LIn3UBuQqxpu9le_FSQ_SSVgp1zQX7XD2XyBWFBFM="
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
x-request-id: FzPFPtqehr0fhdcAABRh
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
x-request-id: FzPFPtSppvIJH5oAAA8D
```
* __Response body:__
```json
{
  "data": {
    "id": "f744aaf2-928e-40e7-a66c-0504843a603f",
    "token": "kb19eZg4GQdA_Ux_scwaarsiko5Um6gvO88HXoNB8y8="
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
    "email": "user-576460752303418175@example.com",
    "name": "user-576460752303418143",
    "password": "hello world!",
    "phone": "5410"
  }
}
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtsCVZVNXm0AABVB
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
    "email": "user-576460752303419933@example.com",
    "name": "user-576460752303419901",
    "password": "hello world!",
    "phone": "3652"
  }
}
```

##### Response
* __Status__: 201
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPtRUNIUFlc0AAA5j
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
x-request-id: FzPFPtYXo7U0Dg0AABCh
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
  "email": "user-576460752303417215@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPt05rvj3x8QAABRk
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
x-request-id: FzPFPtsptf0snw8AABRi
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
* __Path:__ /api/reset_password/lQGGC59aOAEPd9_N9QqEJCycK_8E36Za6pwHwqb7Yq8
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
x-request-id: FzPFPt45olN6t-8AABeE
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
* __Path:__ /api/reset_password/j0F_vkd7a5Sg7cQpewlRRu_ThUZJS4XoAkP1VIRfFRw
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
x-request-id: FzPFPtNg14EHsB4AAA9B
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
x-request-id: FzPFPtxnfMpfdTYAABOk
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
authorization: Bearer w5LnfEcEOuVZn8smnSIVfexdelydqHQX8aj5OcKhVkc=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuE7pkwUaIkAABuE
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
      "id": "5566e735-a167-4182-af0f-b5ddaf5566bc",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "bc78ce00-dcf8-4a1e-890e-cf28934c9374",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "1193aac3-d5d3-4c36-b7c0-a8c6d321b1d5",
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
authorization: Bearer YSeoErANPJFAxDQdCaeLXqoyQs2R__lRUwLF4fBCAGs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuViBSGO8u4AABmC
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
      "id": "50f6a95d-77d1-4149-b101-b87001f5a058",
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
authorization: Bearer f2FYx6kh8YFU2jNglLnmm-kJbZrDIexg2_cB_2dZDUk=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvaphR0fA8QAACEi
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
      "id": "2e6891b8-6549-4a1c-97b8-72a17b04ee6e",
      "start_time": null
    },
    {
      "customer_rating": null,
      "customer_route": null,
      "driver_rating": null,
      "driver_route": null,
      "end_time": null,
      "id": "f653ee26-21d2-4492-abbc-870279a7cdaa",
      "start_time": null
    }
  ]
}
```

### <a id=turboweb-ridecontroller-show></a>show
#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/d6f90e78-e5fb-4249-aeef-ad1fbc972029
* __Request headers:__
```
accept: application/json
authorization: Bearer LvPvW6K7CUcdxVBGSiXGYBEYu3rPYGKXDTRiHGwVQ3c=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuh4ecQPnWQAACQE
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
    "id": "d6f90e78-e5fb-4249-aeef-ad1fbc972029",
    "start_time": null
  }
}
```

#### show ride renders any ride to the admin

##### Request
* __Method:__ GET
* __Path:__ /api/rides/bd897fbd-15e2-47ba-8c1a-9ef9637c466b
* __Request headers:__
```
accept: application/json
authorization: Bearer LvPvW6K7CUcdxVBGSiXGYBEYu3rPYGKXDTRiHGwVQ3c=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuj6JNQPnWQAACSE
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
    "id": "bd897fbd-15e2-47ba-8c1a-9ef9637c466b",
    "start_time": null
  }
}
```

#### show ride renders own rides to the customer

##### Request
* __Method:__ GET
* __Path:__ /api/rides/9f43a019-a63b-4b00-9328-58eac879da81
* __Request headers:__
```
accept: application/json
authorization: Bearer wOGK6hCecyvj1Ps9mzUPfV_Beym5nasGwz1LQCRv5vo=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPu-CShVAnB0AAB2D
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
    "id": "9f43a019-a63b-4b00-9328-58eac879da81",
    "start_time": null
  }
}
```

#### show ride renders own rides to the driver

##### Request
* __Method:__ GET
* __Path:__ /api/rides/c196d24c-7296-4c21-a94e-aa70e9695736
* __Request headers:__
```
accept: application/json
authorization: Bearer _4grcj6qo1yrpeHNmoA0xUlGodpc94xP-kcEKpxBt8s=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvKOEpoiMNIAACMj
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
    "id": "c196d24c-7296-4c21-a94e-aa70e9695736",
    "start_time": null
  }
}
```

### <a id=turboweb-ridecontroller-update></a>update
#### set ride route sets the ride route for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/0f584c4a-6c21-41e9-a5aa-44f1247c8f0c
* __Request headers:__
```
accept: application/json
authorization: Bearer WMcsRHprgvYa7DKrEl8VtPgtJFwGxvgzkSd0XXEmcZI=
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
x-request-id: FzPFPutn5xlRfDcAACGB
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
    "id": "0f584c4a-6c21-41e9-a5aa-44f1247c8f0c",
    "start_time": null
  }
}
```

#### set ride route sets the ride route for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/89fbf82a-13ee-4d73-ad63-0c51d77d05d3
* __Request headers:__
```
accept: application/json
authorization: Bearer B-B3esyORPQ2u-B1-qvi_diBLGWLHDOqri_sFZn7EG4=
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
x-request-id: FzPFPvOTvbPnXQgAACUj
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
    "id": "89fbf82a-13ee-4d73-ad63-0c51d77d05d3",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a driver

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/36f850bc-c988-4645-87bc-c93d0f51ac4c
* __Request headers:__
```
accept: application/json
authorization: Bearer _SCnLffaGy6Jk8h1DYTS_Wk5xeg14wQtK26mNYM9sI0=
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
x-request-id: FzPFPtyaaPR7Ec4AABfB
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
    "id": "36f850bc-c988-4645-87bc-c93d0f51ac4c",
    "start_time": null
  }
}
```

#### set ride rating sets the ride rating for a customer

##### Request
* __Method:__ PUT
* __Path:__ /api/rides/d235ce51-61fa-4ba7-a687-33f1d4a77465
* __Request headers:__
```
accept: application/json
authorization: Bearer tBPAhxglFNPp9y1pMOtIe5EJJRS1XzOiPjA2w98pekg=
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
x-request-id: FzPFPvDqf4-9zqIAAB-D
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
    "id": "d235ce51-61fa-4ba7-a687-33f1d4a77465",
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
authorization: Bearer jmqZt_dajhmjDB3OBAHKCG0S3bWO6VVrqR3os5i7ZWU=
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
    "ride_request_id": "8525eabf-ab0a-444d-85b1-d245e0838603",
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
x-request-id: FzPFPwDAhvZjIsQAACOi
```
* __Response body:__
```json
{
  "data": {
    "id": "ce3eecf2-54a8-4ed5-835b-6c6bbda5ef1f",
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
authorization: Bearer Lkvm6PP3A6nT4PKXQM2XriF_SFeIjLjewoNjrLzQ58A=
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
x-request-id: FzPFPwHGvgIMd6IAADCk
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
* __Path:__ /api/rides/accept/b1101316-85bb-4f0c-8cc6-3834cb2f0774
* __Request headers:__
```
accept: application/json
authorization: Bearer Lr8ZcrlJZYr8cXxLI3XUH_tRo0dyYeRa7o_FwQQtnjU=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwAwv6OkclUAAChB
```
* __Response body:__
```json
{
  "data": {
    "id": "b1101316-85bb-4f0c-8cc6-3834cb2f0774",
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
* __Path:__ /api/rides/accept/1f788ee5-1895-4fca-a4e1-468ff257ba4d
* __Request headers:__
```
accept: application/json
authorization: Bearer 3GtR34ohXY-h9OXqKS4Yn9HRo9UzWjIZAnJaENcdyo4=
```

##### Response
* __Status__: 204
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwFBvpwtKUsAAChh
```
* __Response body:__
```json
{
  "data": {
    "id": "1f788ee5-1895-4fca-a4e1-468ff257ba4d",
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
* __Path:__ /api/rides/accept/1f788ee5-1895-4fca-a4e1-468ff257ba4d
* __Request headers:__
```
accept: application/json
authorization: Bearer 3GtR34ohXY-h9OXqKS4Yn9HRo9UzWjIZAnJaENcdyo4=
```

##### Response
* __Status__: 422
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPwF0jCItKUsAACTC
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
  "email_or_phone": "user-576460752303418493@example.com",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuetgRzNIT0AACBB
```
* __Response body:__
```json
{
  "data": {
    "token": "NdMPMe_DbF9LqehdOSUXhc_A8dNPGMeFYeNk1Ok7NYg="
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
  "email_or_phone": "6819",
  "password": "hello world!"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPujzahP7sk4AACFh
```
* __Response body:__
```json
{
  "data": {
    "token": "oOEb_g8TQ0Ez7v9dbnrvgXl_Bzfz_q8YnnnSEG2DW1w="
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
  "email_or_phone": "user-576460752303415711@example.com",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuctngWE9H8AAB8B
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
  "email_or_phone": "5636",
  "password": "invalid_password"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPunF7RErgIAAABrC
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
authorization: Bearer BofhRNvLPN-e4b4d3Wb8xxrf1nQ6CPfgsviysBUk53Y=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPuazZkL9mCAAACGk
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
x-request-id: FzPFPuiXwSKkD4sAABpC
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
authorization: Bearer gWAVR0qOmxiMQN-EAAjcro4PpIMBqL7xwJZi6MeAzEs=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvv_vc_Vod4AACSh
```
* __Response body:__
```json
{
  "data": {
    "user": {
      "email": "user-576460752303414175@example.com",
      "id": "87af61ff-5021-4e4b-ab81-a373e37c02c8",
      "name": "user-576460752303414207",
      "phone": "9346"
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
authorization: Bearer d6yifulhPj6t0OxysbKsrANnr2XrSepX6CE5VwheOwY=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvf3B5r21P4AACQh
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "4076092a-c966-42af-a285-59801ebe96f1",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303411900@example.com",
      "id": "975a93b4-b2b8-4ddc-ba70-d48003761420",
      "name": "user-576460752303411932",
      "phone": "11621"
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
authorization: Bearer bAtTfh0wgLFiGV-sF6l0m6enC2JPXM7cXB8WDljEeMM=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvrJEg79fywAACbD
```
* __Response body:__
```json
{
  "data": {
    "driver": {
      "id": "b8b56bdb-9f00-4df5-a7fc-62891563c8d1",
      "license": "licence-576460752303411740"
    },
    "user": {
      "email": "user-576460752303411804@example.com",
      "id": "eacce789-ed37-4c24-8014-4fa7d0c6d46c",
      "name": "user-576460752303411836",
      "phone": "11717"
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
authorization: Bearer EZua9bNTlyFp1Va09WNEfqLmpDQ2m8HZojnAh6IDrIg=
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
x-request-id: FzPFPvswqJsb15UAAC8k
```
* __Response body:__
```json
{
  "data": {
    "message": "Password updated successfully.",
    "token": "mf3i5d6iHwgHlhebwFM99v_AoCe4C5Wlydh53IEFtLk="
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
authorization: Bearer hNcbU-678LCoDRLOPJhJZKifxN44lsjZp_TFtQeAmp0=
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
x-request-id: FzPFPvbUgRqWlkYAACQB
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
authorization: Bearer YxNH8NRTjrwLksJPBQkCNp_UoQr6nRSoRYOpFoVb_9I=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_email",
  "current_password": "hello world!",
  "email": "user-576460752303413789@example.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvXT4uHZ6RAAACYD
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
authorization: Bearer 0jNJEel1vHyJmP-Osj20TxKqJErSynpfTkvRguzj8C4=
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
x-request-id: FzPFPvZcPWqH2fMAACBi
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
authorization: Bearer eY7ahAwPxohm85lsCuG8FRP_PSfkLkvYL7VkHuh4Viw=
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
x-request-id: FzPFPvzQyLOzegkAAC9E
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
      "id": "5de631cd-1dd3-4ace-a6b7-f7a33757b6e1",
      "work_location": null,
      "work_location_reverse_geocoding": null
    },
    "user": {
      "email": "user-576460752303413245@example.com",
      "id": "514a4a3f-2112-4705-8ee0-4501928acbef",
      "name": "user-576460752303413277",
      "phone": "10276"
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
authorization: Bearer oCF4djhEXajW5Qb3tiONUGxPqs-Hko1wBfJkvdgkwXQ=
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
x-request-id: FzPFPvd3DLzs2U4AAC0E
```
* __Response body:__
```json
{
  "data": {
    "customer": {
      "home_location": null,
      "home_location_reverse_geocoding": null,
      "id": "d79a5656-d444-4c32-84da-b80e06540457",
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
      "email": "user-576460752303413693@example.com",
      "id": "f08286ae-8160-4976-817b-eec62c33d3ba",
      "name": "user-576460752303413725",
      "phone": "9828"
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
authorization: Bearer r9UWWirphrRBJU5h9nj4EDzNmK9Hm7O3n8z-uNIyK4Y=
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "action": "update_profile",
  "name": "user-576460752303413629",
  "phone": "123456"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvpyZQSyAZsAACaj
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
authorization: Bearer ilqee3HJPpkhWQLd2psqB7lJjXuvqjz1kVUK6b9iTos=
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
x-request-id: FzPFPvvI4bbV3gIAACdD
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
authorization: Bearer xzTB6eKYBNzwEKASma5Dt0RpW5wsZXOs39RHDx9H2_s=
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
x-request-id: FzPFPvhPpGu2SIAAACHC
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
* __Path:__ /api/confirm_email/FsDbNIzrY-HG44ZuyRb6h7VLhVa6IlUBlQKGbBplkhs
* __Request headers:__
```
accept: application/json
authorization: Bearer -7zziy0cc4dSRnhUY6fkQU9rLnREeU0rjAAdHq65C70=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvw-gRZ3s8kAACTh
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
authorization: Bearer G2_QMJtpVCG1e74c1LKO6PG3tDjfku5F1e-TxJzLyHk=
```

##### Response
* __Status__: 410
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPvV8IRXWWaoAACXD
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
authorization: Bearer KM2ASj7laZfcDRYbByvjELb9zBEVxe5NRlqW01G3DyE=
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: FzPFPv7BRdtKr24AACZh
```
* __Response body:__
```json
{
  "data": {
    "credit": 0,
    "id": "c6808ea8-95ef-46e1-a5e4-6dc479ea1afb"
  }
}
```

### <a id=turboweb-walletcontroller-credit></a>credit
#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/0ff5461d-b24c-43db-997b-8b395b2eea3b
* __Request headers:__
```
accept: application/json
authorization: Bearer 3X-ScMMXQ6MF6EUU0S9h7gVIr6zIt7ULifwrZi_6pFY=
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
x-request-id: FzPFPv9-WQsAmRYAACKi
```
* __Response body:__
```json
{
  "data": {
    "credit": 42,
    "id": "0ff5461d-b24c-43db-997b-8b395b2eea3b"
  }
}
```

#### credit credits the drivers wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/0ff5461d-b24c-43db-997b-8b395b2eea3b
* __Request headers:__
```
accept: application/json
authorization: Bearer 3X-ScMMXQ6MF6EUU0S9h7gVIr6zIt7ULifwrZi_6pFY=
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
x-request-id: FzPFPv-quesAmRYAADCE
```
* __Response body:__
```json
{
  "data": {
    "credit": 43,
    "id": "0ff5461d-b24c-43db-997b-8b395b2eea3b"
  }
}
```

#### credit only admin can credit a wallet

##### Request
* __Method:__ PUT
* __Path:__ /api/wallet/fd698585-5382-43a9-8394-794616fd588e
* __Request headers:__
```
accept: application/json
authorization: Bearer 3tCKkJFI75R7ey_11y5LsAbtJKiOzt7PiLWriSzg_4g=
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
x-request-id: FzPFPv8UVFpRzioAACbB
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
"Unauthorized"
```

