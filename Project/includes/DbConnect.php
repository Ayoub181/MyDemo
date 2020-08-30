<?php

class DBConnect{

    private $con;

    function _construct(){


    }
    function connect(){

        include_once dirname(__FILE__).'/Constent.php';

    define('BDname','licences_system');
        $this->con = new mysqli(DBhost, DBuser, DBpass, BDname);

        if (mysqli_connect_errno()) {
            # code...

            echo 'Failed to connect to the database'.mysqli_connect_err();
        }
        else{

            echo 'Connected to db';
        }

        return $this->con;
    }

}

?>