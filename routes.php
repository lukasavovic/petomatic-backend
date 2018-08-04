<?php
//Home
$router->get('', 'VisitsController@allVisits');
//Authenticate
$router->post('login', "Authenticate@validate");
$router->get('login', "Authenticate@loggedIn");
$router->get('logout', "Authenticate@logout");
//Users
$router->get('users', 'UsersController@allUsers');
$router->get('users/{userId}', 'UsersController@oneUser');
$router->post('users', 'Authenticate@addUser');
//Customers
$router->get('customers', 'CustomerController@allCustomers');
$router->get('customers/{customerId}', 'CustomerController@oneCustomer');
$router->post('customers', 'CustomerController@addCustomer');
$router->get('customers/{customerId}/customers', 'CustomerController@oneCustomer');

//Visits
$router->get('visits', 'VisitsController@allVisits');
$router->get('visits/{customerId}', 'VisitsController@oneVisit');
$router->post('visits/', 'VisitsController@addVisit');
//Pets
$router->get('pets/{petId}','PetsController@onePet');
$router->post('pets','PetsController@addPet');
