# README
# Local Restaurant Locator

### _Epicodus Ruby Independent Project Week 6, August 23th, 2019_

### By _*Garland Lai*_

## Description

_This API contains local restaurants and reviews._

## Setup/Installation Requirements

1. [Click here](https://github.com/GarlandLai/Business-finder.git) to get started!
2. _Clone repository._
3. _Enter project root directory and type "bundle install" to install all necessary gems._
4. _Type "rake db:create" to create the databases._
5. _Type "rake db:seed" to seed the products and reviews_
6. _Sign into Postman to test API calls"_

##Endpoint to Test:

*_Please note the ":restaurant_id" and ":id" are placeholders for ID number_

| Behavior | Route Input | Output |
| ------------- |:-------------:| -----:|
| GET all restaurants | localhost:3000/restaurants | Returns all restaurants |
| POST a restaurant | localhost:3000/restaurants | Create a new restaurant |
| UPDATE a restaurant | localhost:3000/restaurants/:id | Updates restaurant |
| DELETE a restaurant | localhost:3000/restaurants/:id | Deletes restaurant off the list |
| GET reviews for a restaurant | localhost:3000/restaurants/:restaurant_id/reviews | Returns all reviews for the restaurant |
| GET specific review for a restaurant | localhost:3000/restaurants/:restaurant_id/reviews/:id | Returns a review for a restaurant |
| POST review for a restaurant | localhost:3000/restaurants/:restaurant_id/reviews/ | Creates a review for a restaurant |
| UPDATE a review for a restaurant | localhost:3000/restaurants/:restaurant_id/reviews/:id | Updates current restaurant |
| DELETE a review for a restaurant | localhost:3000/restaurants/:restaurant_id/reviews/:id | Deletes restaurant review |
| GET a random restaurant | localhost:3000/restaurants/random | Returns a randomized restaurant from database |
| GET a restaurant by origin parameter search | localhost:3000/restaurants/origin?=Greek | Returns all restaurants with the origin "Greek" |

## Known Bugs

* _No known bugs_

## Support and contact details

_If you have any questions, concerns, or suggestions, please contact me at Garlandlai24@gmail.com_

## Technologies Used

* _Github_
* _Ruby on Rails_


#### License

*This webpage is licensed under the MIT license.*

Copyright (c) 2019 **_Garland Lai_**
