<%-- 
    Document   : index
    Created on : 13-Aug-2020, 01:07:41 
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="js/Registration.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
         <!--Sweet Alart-->
        
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
                    title: 'Register Now',
                    showConfirmButton: false,
                    timer: 3000
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
        .AdminForm{
            animation-duration: 2s;
            display: inline-block;
            animation: bounce;
         
        }
    </style>
    <body>
        <div class="AdminForm animated animate_bounce">
            <h3 style="text-align: center;">Registration Admin</h3>
            <form action="Register" method="Post">
                <div class="form-group">
                    <input class="form-control" type="text" name="text_fullname" placeholder="Enter Full Name" style="margin-top: 10px; ">
                <div/>
                <div class="form-group">
                    <input class="form-control" type="text" name="text_username" placeholder="Enter User Name" style="margin-top: 5px;">
                <div/>
                <div class="form-group">
                    <input class="form-control" type="email" name="text_email" placeholder="Enter Your Email" style="margin-top: 5px;">
                <div/>
                <div class="form-group">
                    <input class="form-control" type="password" name="text_password" placeholder="Enter Your Passwords" style="margin-top: 5px;">
                <div/>
                <div class="form-group">
                    <input class="form-control" type="password" name="cpassword" placeholder="Enter Comfirm Password" style="margin-top: 5px;">
                <div/>
                <input class="btn btn-lg btn-info" type="submit" value="REGISTER" style="font-weight: bold;">
                <a href="loginPage.jsp" class="btn btn-lg btn-primary"style="font-weight: bold;">LOGIN</a>
            </form>
    </body>
</html>
