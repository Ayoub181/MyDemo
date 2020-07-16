package Lab2_Exam;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(urlPatterns = {"/InsertServlet"})
public class InsertServlet extends HttpServlet {
    
    private Connection mycon;    
    static String  jdbcDriver = "com.mysql.jdbc.Driver";
    static String jdbcURL = "jdbc:mysql://localhost:3306/bcs?zeroDateTimeBehavior=convertToNull [root on Default schema]";
        
    //Database connection   
    static  String dbname = "bcs";
    static  String dbUsername = "root";
    static  String dbPassword = "0778Ayoub@";   
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         response.setContentType("text/html;charset=UTF-8");

        //Starting Point of Code To Servlet
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter output = response.getWriter();
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String grade = request.getParameter("grade");
        String phoneNumber = request.getParameter("phoneNumber");
        String regNumber = request.getParameter("regNumber");
       String email = request.getParameter("email");
       String gender = request.getParameter("gender");
       String seminerinfo = request.getParameter("seminerinfo");
       
    
        try{
            
            Class.forName(jdbcDriver);//Create a driver class
            mycon=(DriverManager.getConnection(jdbcURL+dbname,dbUsername,dbPassword));
            
            output.println("Driver loaded successfully");
            
            //To create statement
            PreparedStatement stmnt = mycon.prepareStatement("INSERT INTO walimu values(002,'saleh','Bita/2/18/045/Tz','C','07734333329','saleh53@gmail.com','Male','Present'");
                       
            stmnt.setString(1,id);
            stmnt.setString(2,name);
            stmnt.setString(3,grade);
            stmnt.setString(4,phoneNumber);
            stmnt.setString(5,regNumber);
            stmnt.setString(6,email);
            stmnt.setString(7,gender);
            stmnt.setString(8,seminerinfo);

            
            int i = stmnt.executeUpdate();
            
            if(i > 0 ){
                
                output.println("Your Are successfullly Registered");
            }
            else{
                
                output.println("You Are Not Registered");
            }

            stmnt.close();
            mycon.close();
              
            
        } catch(SQLException ex)
        {
            ex.printStackTrace();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
                //finally
        }
    //end of initialization of servlet Connection

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
