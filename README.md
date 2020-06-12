# _Parks API_

#### _A practice application using Ruby & Rails. 6.12.2020_

#### By _**Allison Mackey**_

## Description

_This application will allow a user to retrieve information from it by using the calls listed below in an app._

## Setup/Installation Requirements

* _View this project & make API calls from here: https://frozen-sea-48679.herokuapp.com/parks_
* _Clone Repository from GitHub :  https://github.com/amackey693/Week13Review_
* _Navigate to your terminal & use the command **code .**_ this will open all files associated with this app._
* _Before you initialize GIT, be sure to delete the already exisiting .git file by running this command in your terminal $rm -rf .git_
* _Don't forget to run bundle install to create your Gemfile.lock as well._
* _Create your own repository and push new changes to GitHub_

## API Routes
* _Attempted to create documentation using swagger inspector tool: https://app.swaggerhub.com/apis-docs/amackey693/live_site_parks_api/0.1_
(didn't fully understand)

|   API Call Routes             |
|-------------------------------|
| GET Routes                    |
| https://frozen-sea-48679.herokuapp.com/parks |
| returns all parks             |
| https://frozen-sea-48679.herokuapp.com/parks/[:id] |
| returns a specific park       |
| http://localhost:3000/search?query=[:search_term] |
| returns results based off of search term | 
| POST Routes                   |
| https://frozen-sea-48679.herokuapp.com/parks/[:enter_all_required_params]
| creates a new park params required: name, address, website, phone number, and open (boolean) |
|-------------------------------|
| PATCH Routes                  |
|-------------------------------|
| https://frozen-sea-48679.herokuapp.com/parks/[:id]/[:enter_params_to_update]| creates a new park params required: name, address, website, phone number, and open (boolean)      |
|-------------------------------|
| DELETE Routes                 |
|-------------------------------|
| https://frozen-sea-48679.herokuapp.com/parks/[:id] | deletes a park |


## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: https://github.com/amackey693/Week13Review/issues_

## Technologies Used

_Ruby, Rails, Gem, Pry, Capybara, ShouldaMatchers_ 


### Licenses
*MIT LICENSE*

Copyright (c) 2020 **_Allison Mackey_**

