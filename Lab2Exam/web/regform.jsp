<%-- 
    Document   : regform
    Created on : 09-Jul-2020, 17:55:13
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://unpkg.com/bootstrap@4.3.1/dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/propper.js" type="text/javascript"></script>
        <script src="jquery/jquery.min.js" type="text/javascript"></script>
        <script src="js/propper.min.js" type="text/javascript"></script>
    </head>
    <body>
        <form action="InsertServlet" method="post" class="col-md-6 mt-3">
             <div class="form-group">
                <input type="text" class="form-control " name="id"  >
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Enter Student Name">
            </div>
            
            <div class="form-group">
                <input type="text" class="form-control" name="grade" placeholder="Enter Grade">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="phoneNumber" placeholder="Enter Phone Number">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="regNumber" placeholder="Enter Registration Number">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Enter Email">
            </div>
            <div class="form-group">
                MALE: <input type="radio"  name="gender" value="Male">
                FEMALE: <input type="radio"  name="gender" value="Female">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="seminerinfo" placeholder="Enter Registration Number">
            </div>
            <input type="submit" name="submit" class="btn btn-info btn-md" value="Sumit Form">
        </form>
    </body>
</html>
