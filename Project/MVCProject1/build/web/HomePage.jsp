<%-- 
    Document   : DashBoard
    Created on : 03-Aug-2020, 15:58:15
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DashBoard</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link href="js/DashConatiner.css" rel="stylesheet" type="text/css"/>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
    </head>
    <style>
        body{
            background-image: url("BackColor/backColor2.jpg");
            background-attachment: fixed;
            background-size: cover;
            font-weight: bold;
            color: black;
            font-family: times-new-roman;
        }
        .list-unstyled{
          margin-right: 20px;
        }
        
    </style>
    <body>
        <div class="container-fluid">
            <div class="row DashConatiner">
                <div class="col-md-2 left-bar">
                    <img class="rounded-circle" src="BackColor/admin.png" width="60px" height="60px" style="left: 4em;position: absolute;top: 30px;">
                     <h7 style="left: 4.5em;position: absolute;top: 90px;">Admin</h7>
                     <hr style="background-color: #42a0b8;top: 90px;margin-top: 120px;width: 10em;height: 1px;">
                     <!--<img class="rounded" src="" width="70px" height="70px" >-->
                     <ul class="A row">
                        <li class="active list-unstyled">
                            <span class="fas fa-calendar-alt fa-md ">
                                <a href="#">Dash Board</a></span>
                        </li>
                        <li class="current list-unstyled">
                            <span class="fas fa-user"> <a href="PersonalDetails.jsp">P Details</a></span>
                        </li>
                        <li class="current list-unstyled">
                            <span class="fas fa-beer"><a href="#">Bar licence</a></span>
                        </li>
                        <li class="current list-unstyled">
                            <span class="fas fa-home"><a href="#">Shop Licence</a></span>
                        </li>
                        <li class="current list-unstyled">
                            <span class="fas fa-database"><a href="#">View Data</a></span>
                        </li>
                     </ul>
                    
                </div>
                <div class="col-md-10">
                    
                    <div class="row tab mt-4">
                        <div class="col-md-4">
                            <div >
                                <div class="card">
                                    <div class="card-header">
                                        <h7>Issued Licences</h7> 
                                    </div>
                                    <div class="card-body">
                                        
                                    </div>
                                    <div class="card-footer">
                                         <button class="btn btn-success ml-1">
                                           <div class="spinner-border spinner-border-sm"></div>  
                                           Loading....
                                         </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div id="center-tab">
                                 <div class="card">
                                    <div class="card-header">
                                          <h7>Expired Licences</h7>
                                    </div>
                                    <div class="card-body">
                                        
                                    </div>
                                    <div class="card-footer">
                                       
                                         <button class="btn btn-danger">
                                           <div class="spinner-border spinner-border-sm"></div>  
                                           Loading....
                                         </button>
                                    </div>
                                </div>  
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div id="right-tab">
                                
                                <div class="card">
                                    <div class="card-header">
                                        <h7>Total Licences</h7>
                                    </div>
                                    <div class="card-body">
                                        
                                    </div>
                                    <div class="card-footer">
                              
                                         <button class="btn btn-secondary">
                                           <div class="spinner-border spinner-border-sm"></div>  
                                           Loading....
                                         </button>
                                    </div>
                                </div>  
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                                
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
