<?php
namespace App\Controllers;

use App\Core\App;

class VisitsController
{
  public function allVisits(){
    $columns = 'date, longDescription, visits.customers_id, pets.id, name';
    $visits = App::get('database')->leftJoin('visits','pets', 'pet_id', 'id',$columns);
    echo "<pre>" . json_encode($visits) . "</pre>";
  }

  public function oneVisit(){
    $visit = App::get('database')->getOne('visits', $_GET['id']);
    echo "<pre>" . json_encode($visit) . "</pre>";
  }

  public function addVisit(){
    App::get('database')->addNew('visit', $_POST);
    echo json_encode('sucess');
  }

}
