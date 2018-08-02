<?php

$router->get('', 'PagesController@home');
//authenticate
$router->post('login', "Authenticate@validate");
$router->get('logout', "Authenticate@logout");
//Users
$router->get('users', 'UsersController@allUsers');
$router->get('users/show', 'UsersController@oneUser');
$router->post('users', 'Authenticate@addUser');
//Customers
$router->get('customers', 'CustomerController@allCustomers');
$router->get('customers/show', 'CustomerController@oneCustomer');
$router->post('customers/', 'CustomerController@addCustomer');
//Visits
$router->get('visits', 'VisitsController@allVisits');
$router->get('visits/show', 'CustomerController@oneCustomer');
$router->post('visits/', 'CustomerController@addCustomer');
