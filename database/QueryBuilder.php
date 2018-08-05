<?php
namespace App\Database;
/**
 * Class QueryBuilder - it makes queries to database
 */
class QueryBuilder
{
    protected $pdo;

    public function __construct($pdo){
        $this->pdo = $pdo;
    }

    public function getAll($table){
        $query = $this->pdo->prepare("SELECT * FROM {$table}");
        $query->execute();
        return $query->fetchAll(\PDO::FETCH_OBJ);
    }

    public function addNew($table, $payload){
        $sql = sprintf("INSERT INTO %s (%s) VALUES (%s)",
          $table,
          implode(", ", array_keys($payload)),
          ":" . implode(", :", array_keys($payload))
        );
        $query = $this->pdo->prepare($sql);
        if($query->execute($payload) == true){
          echo 1;
        } else {
          echo 'something went wrong';
        }

    }

    public function getOne($table, $id){
      $query = $this->pdo->prepare("SELECT * FROM {$table} WHERE id='{$id}'");
        $query->execute();
        return $query->fetch(\PDO::FETCH_OBJ);
    }

    public function getOneUser($table, $email, $model = ""){
      $query = $this->pdo->prepare("SELECT * FROM {$table} WHERE email='{$email}'");
      $query->execute();
      if($model) {
        return $query->fetch(\PDO::FETCH_CLASS, $model);
      } else {
        return $query->fetch(\PDO::FETCH_OBJ);
      }
    }

    public function destroy($table, $id){
        $query = $this->pdo->prepare("DELETE FROM {$table} WHERE id='{$id}'");
        $query->execute();
    }

    public function leftJoin($table1, $table2, $table1Column, $table2Column, $additional = "*"){
        $query = $this->pdo->prepare("SELECT {$additional} FROM {$table1} LEFT JOIN {$table2} ON {$table1}.{$table1Column} = {$table2}.{$table2Column}");
        $query->execute();
        return $query->fetchAll(\PDO::FETCH_OBJ);
    }

    public function allVisits(){
        $query = $this->pdo->prepare("SELECT visits.date, visits.id AS id, longDescription, customers.id AS customerId, customers.firstName, customers.LastName, pets.name AS petName, pets.id as petID, pets.age, visit_type.title AS visit_type, species.title AS species
                                      FROM visits 
                                      LEFT JOIN pets
                                      ON visits.pets_id = pets.id
                                      LEFT JOIN customers
                                      ON visits.customers_id = customers.id
                                      LEFT JOIN visit_type
                                      ON visits.visit_type_id = visit_type.id
                                      LEFT JOIN species
                                      ON pets.species_id = species.id
                                      ORDER BY visits.date DESC");
        $query->execute();
        return $query->fetchAll(\PDO::FETCH_OBJ);
    }

    public function allVisitTypes(){
      $query = $this->pdo->prepare("SELECT * FROM visit_type");
      $query->execute();
      return $query->fetchAll(\PDO::FETCH_OBJ);
    }

    public function customersNameAndId(){
      $query = $this->pdo->prepare("SELECT customers.id AS customerId, customers.firstName, customers.LastName FROM cutomers");
      $query->execute();
      return $query->fetchAll(\PDO::FETCH_OBJ);
    }

    public function petsFromCustomers($id){
      $query = $this->pdo->prepare("SELECT name, id FROM pets WHERE customers_id = $id");
      $query->execute();
      return $query->fetchAll(\PDO::FETCH_OBJ);
    }
}
