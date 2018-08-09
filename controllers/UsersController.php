<?php
namespace App\Controllers;

use App\Core\App;

class UsersController
{
  public function allUsers(){
    $users = App::get('database')->getAll('users');
    echo json_encode($users);
  }

  public function oneUser($params){
    $user = App::get('database')->getOne('users', $params);
    echo json_encode($user);
  }

  public function addUser(){
    $data = trim(file_get_contents("php://input"));
    $decoded = json_decode($data, true);
    $decoded['password'] = hashPassword($decoded);
    App::get('database')->addNew("users", $decoded);
  }

}

