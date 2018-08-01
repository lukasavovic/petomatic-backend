<?php

namespace App\Controllers;

use App\Core\App;
//use Faker;


class PagesController
{
    public function home()
    {
        $visits = App::get('database')->getAll("visits");
        echo json_encode($visits);
    }

    public function contact()
    {
        return view('contact');
    }

    public function aboutUs()
    {
        return view('about');
    }

    public function storeTask()
    {
        return redirect('/');
    }

    public function products()
    {
        return view('products', compact('products'));
    }
}
//$faker = Faker\Factory::create();
//for($i=0;$i < 4; $i++){
//  $user = [];
//  $user['firstName'] = $faker->firstName;
//  $user['lastName'] = $faker->lastName;
//  $user['email'] = $faker->companyEmail;
//  $user['password'] = $faker->password;
//  App::get('database')->addNew("user", $user);
//}
//for ($i=1; $i < 26; $i++) {
//  $customers = [];
//  $customers['firstName'] = $faker->firstName;
//  $customers['lastName'] = $faker->lastName;
//  $customers['email'] = $faker->email;
//  $customers['phone'] = $faker->numberBetween(20670,99445);
//  App::get('database')->addNew("customers", $customers);
//  $pet = [];
//  $pet['name'] = $faker->firstName;
//  $pet['customer_id'] = $i;
//  $pet['species_id'] = rand(1,5);
//  $pet['age'] = rand(1,10);
//  $pet['vaccination'] = rand(0,1);
//  $pet['genders_id'] = rand(1,2);
//  $pet['chipped'] = rand(0,1);
//  App::get('database')->addNew("pets", $pet);
//  $visit = [];
//  $visit['date'] = $faker->date();
//  $visit['longDescription'] = $faker->realText($maxNbChars = 200, $indexSize = 2);
//  $randomnumber = rand(1,25);
//  $visit['pet_id'] = $randomnumber;
//  $visit['customers_id'] = $randomnumber;
//  $visit['visitType_id'] = rand(1,4);
//  App::get('database')->addNew('visits', $visit);
//}
//for($i=0; $i < 10; $i++){
//  $pet = [];
//  $pet['name'] = $faker->name;
//  $pet['customer_id'] = rand(1,26);
//  $pet['species_id'] = rand(1,5);
//  $pet['age'] = rand(1,10);
//  $pet['vaccination'] = rand(0,1);
//  $pet['genders_id'] = rand(1,2);
//  $pet['chipped'] = rand(0,1);
//  App::get('database')->addNew("pets", $pet);
//}
//$visitType = [];
//$visitType['title'] = 'annual';
//App::get('database')->addNew('visit_type', $visitType);
//$visitType['title'] = 'urgent';
//App::get('database')->addNew('visit_type', $visitType);
//$visitType['title'] = 'follow up';
//App::get('database')->addNew('visit_type', $visitType);
//$visitType['title'] = 'cosmetic';
//App::get('database')->addNew('visit_type', $visitType);
//
//$species = [];
//$species['title'] = 'dog';
//App::get('database')->addNew('species', $species);
//$species['title'] = 'cat';
//App::get('database')->addNew('species', $species);
//$species['title'] = 'rabbit';
//App::get('database')->addNew('species', $species);
//$species['title'] = 'bird';
//App::get('database')->addNew('species', $species);
//$species['title'] = 'hamster';
//App::get('database')->addNew('species', $species);
