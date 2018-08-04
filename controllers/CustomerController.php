<?php
namespace App\Controllers;

use App\Core\App;

class CustomerController
{
  public function allCustomers(){
    $columns = 'firstName, lastName, email, pets.customers_id, pets.id, name, age, genders_id';
    $customers = App::get('database')->leftJoin('customers','pets', 'id', 'customers_id', $columns);
    echo json_encode($customers);
  }

  public function oneCustomer($params){
    $customer = App::get('database')->getOne('customers', $params['customerId']);
    echo json_encode($customer);
  }

  /**
   *
   */
  public function addCustomer(){
    $data = trim(file_get_contents("php://input"));
    $decoded = json_decode($data, true);
    App::get('database')->addNew('customers', $decoded);
  }
}


