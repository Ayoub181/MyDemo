

package Lab2_Exam;

import static Lab2_Exam.InsertServlet.jdbcDriver;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "SelectServlet")
public class SelectServlet extends HttpServlet {
   static String  jdbcDriver = "com.mysql.jdbc.Driver";
   static String jdbcURL = "jdbc:mysql://localhost:3306/bcs?zeroDateTimeBehavior=convertToNull [root on Default schema]";
        
   private Connection mycon;  
    //Database connection   
    static  String dbname = "bcs";
    static  String dbUsername = "root";
    static  String dbPassword = "0778Ayoub@";   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String title = "Select Servlet";
        String docType =
                "<!DOCTYPE HTML\n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n"); 
        
        
        String Name = request.getParameter("name");
        String Grade = request.getParameter("grade");
        String Email = request.getParameter("email");
        

        try {
            
            Class.forName(jdbcDriver);//Create a driver class
            mycon=(DriverManager.getConnection(jdbcURL+dbname,dbUsername,dbPassword));

            //creating connection with the database
            PreparedStatement ps = mycon.prepareStatement("select * from walimu where name=Ayoub, grade=A and email=ayoubomar53@gmail.com");
            
            ps.setString(1, Name);
            ps.setString(2, Grade);
            ps.setString(2, Email);
            
            ResultSet ResultSet =ps.executeQuery();
            
           while (ResultSet.next()) {

                Name = ResultSet.getString("Name");
                Grade = ResultSet.getString("grade");
                Email =ResultSet.getString("email");
                //Display values
                out.println("Name is: " + Name + "<br>");
                out.println("Grade is: " + Grade + "<br>");
                out.println("Email is: " + Email + "<br>");
            }
             out.println("</body></html>");
             
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
