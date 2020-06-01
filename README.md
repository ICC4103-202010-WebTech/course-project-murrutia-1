Martín Urrutia

ruby -v: ruby 2.6.1p33

#MPLEMENTED FEATURES:

-all models, controllers and views.

-api/v1 controllers for events and comments.

-routes

-fix main problems, the application opens the home page and is interactive (without CSS)

-by pressing on the logo of the webpage  the user comes back to the home page

-login and signup are buttons (not functional)

- corrected dependencies

-

#PENDING FEATURES:

-add records(I had a few problems. Also try rake db:populate_fake_data but didn't work)

-I put the css file from lab 7 and added more things but it is not seen in the final view (I must fix it)

-postman (I couldn't do it without records)

-improve models in general to facilitate work

-errors in the links



1- events belong to an user 
2-select an organization and see his members
3 -4- events have an attribute ("private") to define whether they are private or public
5-select an event and see his guest
6- guests vote by the class "votes" which belong to an event
7-select an event and see his comments
8-select an user and see his comments
9- select all admin_org
10- select all system_admin
11- the validation it's there
12- the validation it's there
13- Cascading should remove votes too, I don't know if it is implicit in my model's database
14-events should continue to belong to the user's profile (according to what I understood from statement 1.1)
15-everything related to the user should be removed, I don't know if it is implicit in my model's database
