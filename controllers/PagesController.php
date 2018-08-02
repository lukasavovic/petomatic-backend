<?php

namespace App\Controllers;

use App\Core\App;

class PagesController {
    public function home(){
        $visits = App::get('database')->getAll("visits");
        echo json_encode($visits);
    }
}
