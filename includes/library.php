<?php

function & dbconnect(){
   // Load configuration as an array. Use the actual location of your configuration file
    //$config = parse_ini_file(DOCROOT.'config.ini');
    //Note: on loki, you file should be located in the pwd folder (which should be in your user directory)
    //$config = parse_ini_file(DOCROOT.'pwd/config.ini');


    //create connection dsn
   $dsn = "mysql:host=loki.trentu.ca;port=3306;dbname=apollosoftware;charset=utf8";


    //make database object
    try {
        $pdo = new PDO($dsn, "apollosoftware", "cois4000Y");
    } catch (\PDOException $e) {
         throw new \PDOException($e->getMessage(), (int)$e->getCode());
    }

    return $pdo;

}
