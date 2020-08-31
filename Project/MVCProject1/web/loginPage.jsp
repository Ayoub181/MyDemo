<%-- 
    Document   : loginAdmin
    Created on : 02-Aug-2020, 17:31:20
    Author     : user
--%>


<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>LoginAdmin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="js/loginAdmin.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        
        <!--Start Sweet Alart-->
        
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
        <script src="sweetalert2.min.js"></script>
        <link rel="stylesheet" href="sweetalert2.min.css">
        
        <script>
            $(document).ready(function(){
            Swal.fire({
                    position: 'top-center',
                    icon: 'success',
                    title: 'Login Now',
                    showConfirmButton: false,
                    timer: 2000
                  })
              });
       </script>
        
        <!--End Sweet alart-->
    </head>
     <style>
        body{
            background-image: url("BackColor/backColor2.jpg");
            background-attachment: fixed;
            background-size: cover;
            font-weight: bold;
        }
    </style>
    <body>
        <div class="AdminForm">
              <h3 style="text-align: center;">Login Admin</h3>
            <form action="LoginServletAdmin" method="Post">
                    <input class="form-control" type="text" name="text_username" placeholder="Enter User Name" style="margin-top: 10px;">
                <div/>
                <div class="form-group">
                    <input class="form-control" type="password" name="text_password" placeholder="Enter Your Passwords" style="margin-top: 5px;">
                <div/>  
                
                <input class="btn btn-lg btn-info" type="submit" name="login" value="LOGIN" style="font-weight: bold;">
                <a href="index.jsp"><h10>Create New Account</h10></a>
            </form>
        </div>
    </body>
</html>

