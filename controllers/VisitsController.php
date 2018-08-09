<?php
namespace App\Controllers;

use App\Core\App;

class VisitsController
{
  public function allVisits(){
    $visits = App::get('database')->allVisits();
    echo json_encode($visits);
  }

  public function oneVisit($id){
    $visit = App::get('database')->getOne('visits', $id);
    echo "<pre>" . json_encode($visit) . "</pre>";
  }

  public function addVisit(){
    $data = trim(file_get_contents("php://input"));
    $visit = json_decode($data, true);
    App::get('database')->addNew('visits', $visit);
  }

  public function visitTypes(){
    $visits = App::get('database')->allVisitTypes();
    echo json_encode($visits);
  }
  public function editVisit(){
    $visits = App::get('database')->allVisitTypes();
    echo json_encode($visits);
  }
}
