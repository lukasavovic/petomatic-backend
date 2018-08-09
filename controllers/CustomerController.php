<?php
namespace App\Controllers;

use App\Core\App;

class CustomerController
{
  public function allCustomers(){
    $customers = App::get('database')->getAll('customers');
    echo json_encode($customers);
  }

  public function allCustomersWithPets(){
    $customers = App::get('database')->customersWithPets();
    echo json_encode($customers);
  }

  public function oneCustomer($params){
    $customer = App::get('database')->getOne('customers', $params['customerId']);
    echo json_encode($customer);
  }
  public function petsFromCustomers(){
    $data = trim(file_get_contents("php://input"));
    $id = json_decode($data, true);
    $pets = App::get('database')->petsFromCustomers($id);
    echo json_encode($pets);
  }

  /**
   *
   */
  public function addCustomer(){
    $data = trim(file_get_contents("php://input"));
    $decoded = json_decode($data, true);
    App::get('database')->addCustomer($decoded);
  }

  public function getSpecies(){
    $species = App::get('database')->getAll('species');
    echo json_encode($species);
  }
  public function getGenders(){
    $genders = App::get('database')->getAll('genders');
    echo json_encode($genders);
  }
}


