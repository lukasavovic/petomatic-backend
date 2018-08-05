<?php
namespace App\Controllers;

use App\Core\App;

class PetsController
{
  public function allPets(){
    $pets = App::get('database')->getAll('pets');
    echo json_encode($pets);
  }
}

