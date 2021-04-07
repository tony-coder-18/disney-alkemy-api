# Disney Api

This is a Rails api in which you can create, read, update or delete Disney's characters. It has authentication, for every endpoint (except for Sign Up and Log Out). Alkemy Challenge.

Note: I'm not associated with Disney, this app was made for the Alkemy Ruby's challenge.

## For running this app locally

### Dependencies
Things that you need in order to run this app locally:
* PostgreSQL
* Ruby
* Rails

### Steps
1. git clone https://github.com/tony-coder-18/disney-alkemy-api.git
2. cd disneyalkemyapi/
3. bundle install
4. rake db:create
5. rails db:migrate
6. rails server
7. Go to http://127.0.0.1:3000 if you want to see the index page (there is no functionality in there)

## To make operations to the Api
For doing any CRUD operation you need to sign up first.
### Sign Up
Make a POST request to: http://127.0.0.1:3000/registrations with a JSON like this:
{
  "user":{
          "email":"example@example.com",
          "password":"examplepassword",
          "password_confirmation":"examplepassword"
        }
}

Note: You have to specify in the header of your request:
"Content-type: application/json"

This will create a user with a example@example.com user email and a examplepassword user password.
Remember your credentials to use the api.

### Create a Character or a production (movie or series)
Make a POST request to: http://127.0.0.1:3000/characters.json with a JSON object that has your user email and password and the information about the character or production.
For example, to create Mickey Mouse you must send this JSON object:
{
  "user":{
          "email":"example@example.com",
          "password":"examplepassword"
        },
  "name":"Mickey",
  "age":100,
  "weight":12,
  "story":"Mickey is a funny mouse."
}

You can change the name and other parameters to any you want.
The characteristics of the characters and productions are in the "Data models" section.

### Read, update and delete a Character or a production (movie or series)
For updating and deleting operations the JSON object that you have to send is very similar to the one for the "Read" operation, just have in mind that for Productions (movies and series) there are different attributes (see Data models section).

For all of the operations you must introduce the "user" object with the "email" and "password" that you set-up in your Sign Up operation.

| Operation  | Request type | Model      | URL                   |
|------------|--------------|------------|-----------------------|
| Create     | POST         | Character  | /characters.json      |
| Create     | POST         | Production | /productions.json     |
| Read (all) | GET          | Character  | /characters.json      |
| Read (all) | GET          | Production | /productions.json     |
| Read (one) | GET          | Character  | /characters/:id.json  |
| Read (one) | GET          | Production | /productions/:id.json |
| Update     | PATCH        | Character  | /characters/:id.json  |
| Update     | PATCH        | Production | /productions/:id.json |
| Delete     | DELETE       | Character  | /characters/:id.json  |
| Delete     | DELETE       | Production | /productions/:id.json |


## Data models

### Characters
* Name, String
* Age, Integer
* Weight, Integer
* Story, text

### Productions (movies or series)
* Title, String
* Creation_date, date
* Rate, Integer

Developed by Bill Llach Bruges.
S.D.G.
