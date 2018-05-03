# Flatiron Camper

You're going to be building out the Flatiron Camper Management System. Flatiron School manages several different parks. Campers can make reservations to a Park. So that means, a park has many reservations, and a reservation belongs to a park.

All you have to do is build out a simple MVP that...

* Displays all parks
  * Shows the park's name
  * Shows if the park has showers
  * Shows if the park allows cars
  * Shows how many open reservations are left
* Make a reservation
  * **If the campsite is at capacity, a user should not be able to create a reservation. Make sure to implement some user feedback for this.**
* Delete a reservation


## Frontend
Be sure to write all of your frontend code in the `campsite-frontend/` folder. You ideally should start with everything within the `index.js` file and **then go back and refactor to separate files**. You have free reign to the design of the frontend, but it must match the deliverables.

## API Backend

**DO NOT CHANGE THE BACKEND**. We have exposed all necessary routes for you to meet the deliverables.

### Get all Parks
```
# Request
GET /parks


# Response
[
  {
  	"id": 1,
  	"max_capacity": 17,
  	"has_showers": true,
  	"cars_allowed": false,
  	"reservations": [
  		{
  			"id": 1,
  			"camper_name": "Prince"
  		},
  		{
  			"id": 2,
  			"camper_name": "Dick"
  		}
    ]
  },
  // ...
]
```

### Create a Reservation
```
# Request
POST /reservations

## Request Headers
  Content-Type: application/json
  Accept: application/json

## Request Body
{
  "camper_name": "Garry",
  "park_id": 1
}

# Response
{
  "id": 17,
  "camper_name": "Garry",
  "park_id": 1
}

```

### Delete a Reservation
```
# Request
DELETE /reservations/<reservation_id>


# Response
{
  "id": 17,
  "camper_name": "Garry",
  "park_id": 1
}
```
