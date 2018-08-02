<?php

namespace App\Controllers;
use \App\Core\App;

class Authenticate {

    public function validate(){
        $credentials = $_POST;
        $email = $credentials['email'];
        $user = App::get('database')->getOneUser("users", $email);
        if(!$user){
            echo "That email doesnt exist!";
        }
        $password = hashPassword($credentials);

        if($password === $user->password) {
            $_SESSION['auth'] = $user;
            echo "Everything good, Welcome!";
        }else{
            echo "Wrong email or password!";
        }
    }

    public function logout(){
        unset($_SESSION["auth"]);
        echo "User logged out";
    }

}
