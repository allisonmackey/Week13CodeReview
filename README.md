# _Parks API_
#### _A practice application using Ruby & Rails. 6.12.2020_

#### By _**Allison Mackey**_

## Description

_This application will allow a user to retrieve information from it by using the calls listed below in an app._

---

## Setup/Installation Requirements
_See detailed setup instructions [here](INSTALL.md)_

* _View this project live on Heroku [here](https://frozen-sea-48679.herokuapp.com/parks)_
* _View & Clone Repository on GitHub [here](https://github.com/amackey693/Week13Review)_


---

## API Routes & Endpoints
Click links to see live examples of request data
<p>download & make api call requests to your local server with PostMan or send requests to the live server <a href="https://frozen-sea-48679.herokuapp.com/">here</a><p>

| GET Request Endpoints|
|-------------------------------|
| - GET [/parks](https://frozen-sea-48679.herokuapp.com/parks) returns all parks| 
| - GET [/page?number=[enter_page_1-14]](https://frozen-sea-48679.herokuapp.com/page?number=1) navigate parks by page, 15 results at a time |
| - GET [/parks/:id](https://frozen-sea-48679.herokuapp.com/parks/200 ) returns a specific park based on :id number
| SEARCH Endpoint |
| - GET [/parks/search?query=[search_term]](https://frozen-sea-48679.herokuapp.com/search?query=washington) returns results based off of search term
| - GET [/search?query=state](https://frozen-sea-48679.herokuapp.com/search?query=state) to find all state parks **or** [/search?query=national](https://frozen-sea-48679.herokuapp.com/search?query=national) to find all national parks |
| RANDOM Endpoint|
| - GET [/random]( https://frozen-sea-48679.herokuapp.com/random) returns a random park each time you submit a request

<br>

| POST Requests Endpoints               |
|-------------------------------|
| POST ```/parks/[:enter_all_required_params]``` creates a new park **params required: name, address, website, phone number, and open (boolean)**|

<br>

| **PATCH/PUT Request Endpointss**             |
|-------------------------------|
| PATCH/PUT ```/parks/:id/[:enter_params_to_update]``` updates a park by :id **at least one param required: name, address, website, phone number, and open (boolean)**|

<br>

| **DELETE Requests Endpoints**                |
|-------------------------------|
| DELETE ```/parks/:id``` deletes a park    |




## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: https://github.com/amackey693/Week13Review/issues_

## Technologies Used

_Ruby, Rails, Gem, Pry, ShouldaMatchers_ 


### Licenses
*MIT LICENSE*

Copyright (c) 2020 **_Allison Mackey_**

    