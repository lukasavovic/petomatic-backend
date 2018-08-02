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

    public function getAll($table, $model = ""){
        $query = $this->pdo->prepare("SELECT * FROM {$table}");
        $query->execute();


        if($model) {
            return $query->fetchAll(\PDO::FETCH_CLASS, $model);
        } else {
            return $query->fetchAll(\PDO::FETCH_OBJ);
        }
    }

    public function addNew($table, $payload){
        $sql = sprintf("INSERT INTO %s (%s) VALUES (%s)",
          $table,
          implode(", ", array_keys($payload)),
          ":" . implode(", :", array_keys($payload))
        );
        $query = $this->pdo->prepare($sql);
        $query->execute($payload);
    }

    public function getOne($table, $id){
        $query = $this->pdo->prepare("SELECT * FROM {$table} WHERE id='{$id}'");
        $query->execute();
        return $query->fetch(\PDO::FETCH_OBJ);
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
}
