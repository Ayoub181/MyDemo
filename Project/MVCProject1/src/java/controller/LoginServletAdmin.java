

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServletAdmin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
            
             //We need to request for both para username and password
        String username = request.getParameter("text_username");
        String password = request.getParameter("text_password");
        
        //Creating a connections
        try{
 
            if(username.isEmpty() || username.equals("") && password.isEmpty()|| password.equals("")){

               RequestDispatcher rd = request.getRequestDispatcher("ErrorLogin.jsp");
                rd.forward(request, response);
                
            }else{
           //Start connection
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");
            
            String sql = "select *from licences_system.registrationadmin where username=? and password=?";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
 
            String userDB ="";
            String passDB ="";
            
            ResultSet rs = ps.executeQuery();

            //We are going to take the whole database inside the while loop statement
            while(rs.next()){
                
                userDB = rs.getString("username");
                passDB = rs.getString("password");
                
                System.out.println("Database Username ::: "+userDB);
                System.out.println("Database Password :: "+passDB);

            }//End Loop 
           
            //Validate the user input 
           
            if(username.equals(userDB)&& password.equals(passDB)){
            
                System.out.println("Inside If statement");
                
                RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
                rd.forward(request, response);

              }
              // System.out.println("Connected");
          else{
              System.out.println("Inside else statement");

               RequestDispatcher rd = request.getRequestDispatcher("ErrorLogin.jsp");
                rd.forward(request, response);

            }//End Validation 
          } //end validation
            
        }catch(Exception e){
                
                System.out.println("Error Connection"+e.getMessage());
            }
           
        } finally {
            out.close();
        }
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
        
        PrintWriter out = response.getWriter();
  
    }


  
}
