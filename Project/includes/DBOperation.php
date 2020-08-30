<?php

    class DBOperation{


        private $con;

        function _Construct(){

            require_once dirname(__FILE__).'DBConnect.php';

            $db = new DBConnect();

            $this->con = $db->connect();
        }

        /** Perform CRUD with android */

        function createUser($First_Name,$Last_Name,$User_Name,$Email,$Password){
            //First_Name	Last_Name	User_Name	Email	Password
            $pass = md5($Password);

            $stmnt = $this->con -> prepare ("INSERT INTO userregistration ('First_Name', 'Last_Name', 'User_Name', 'Email', 'Password') VALUES (?,?,?,?,?,?);");

            $stmnt->bind_param("sss",$fname,$lname,$username,$emails,$passwords);

           if($stmnt->execute()) {
               # code...

               return true;
           } else {
               return false;
           }
        }
    }



?>