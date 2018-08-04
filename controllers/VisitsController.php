<?php
namespace App\Controllers;

use App\Core\App;

class VisitsController
{
  public function allVisits(){
    $visits = App::get('database')->allVisits();
    echo json_encode($visits);
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
