

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {

            //Here we need to create a connection and take the jsp form values so as to put them in our database
            String fname = request.getParameter("text_fullname");
            String username = request.getParameter("text_username");
            String email = request.getParameter("text_email");
            String password = request.getParameter("text_password");
            String comfpassword = request.getParameter("cpassword");

          //Here we take values from jsp with the help of jdbc connection
        try{
        
            if(fname.equals("")||username.equals("")||email.equals("")||password.equals("")||comfpassword.equals("")){
                
                RequestDispatcher rd = request.getRequestDispatcher("ErrorLogin.jsp");
                rd.forward(request, response);
                
            }else{
            Connection conn;
            
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
           
            System.out.println("Connected");

            //Now we are connected with the database
            String sql = "insert into licences_system.registrationadmin(fullname,username,email,password,confirmpassword) VALUES(?,?,?,?,?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            
           
            ps.setString(1, fname);
            ps.setString(2, username);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, comfpassword);

            ps.executeUpdate();
            
            RequestDispatcher requestDisp = request.getRequestDispatcher("loginPage.jsp");
            
            requestDisp.forward(request, response);
            
        }
        
        }catch(Exception e){
        
            //Pring Massege for error connection
            System.out.println("ERROR :: " +e.getMessage());
        }
        
        
       
            
            
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        
        
       
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        processRequest(request, response);
        
        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
        
        
    }// </editor-fold>

}
