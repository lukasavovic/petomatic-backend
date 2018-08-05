<?php
namespace App\Controllers;
use \App\Core\App;

class Authenticate {

    public function validate(){
        $data = trim(file_get_contents("php://input"));
        $decoded = json_decode($data, true);
        $email = $decoded['email'];
        $user = App::get('database')->getOneUser("users", $email);
        if(!$user){
            echo "That email doesnt exist!";
        }
        $password = hashPassword($decoded);
        if($password === $user->password) {
            $_SESSION['auth'] = $user;
            echo 1;
        }else{
            echo "Wrong email or password!";
        }
    }

    public function loggedIn(){
        var_dump($_SESSION);
    }

    public function logout(){
        unset($_SESSION["auth"]);
        echo "User logged out";
    }

}
