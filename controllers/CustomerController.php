<?php
namespace App\Controllers;

use App\Core\App;

class CustomerController
{
  public function allCustomers(){
    $columns = 'firstName, lastName, email, pets.customers_id, pets.id, name, age, genders_id';
    $customers = App::get('database')->leftJoin('customers','pets', 'id', 'customers_id', $columns);
    echo "<pre>" . json_encode($customers) . "</pre>";
  }

  public function oneCustomer($params){
    $customer = App::get('database')->getOne('customers', $params['customerId']);
    echo "<pre>" . json_encode($customer) . "</pre>";
  }

  public function addCustomer(){
    App::get('database')->addNew('customers', $_POST);
    echo json_encode('sucess');
  }
}
