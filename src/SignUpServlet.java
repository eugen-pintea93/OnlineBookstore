import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import model.User;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/SignUp")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	private static final String DB_URL = "jdbc:mysql://localhost/bookstore";//  Database credentials
	private static final String USER = "root";
	private static final String PASS = "";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username;
		 int id;
		 String password;
		 String realName;
		 String email;
		 String phoneNumber;
		 String adress;
	
		 response.setContentType("text/html");
		
		 username=request.getParameter("signUp-user");
		 password=request.getParameter("signUp-pass");
		 email=request.getParameter("signUp-email");
		realName=request.getParameter("signUp-rname");
		 adress=request.getParameter("signUp-adress");
		 phoneNumber=request.getParameter("signUp-phone");
		 
	
	//Client c=new Client(user,pass,nume,oras,adresa,email);
	
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement ps=null;
	try{
	   //STEP 2: Register JDBC driver
	   Class.forName(JDBC_DRIVER);

	   //STEP 3: Open a connection
	   System.out.println("Connecting to database...");
	   conn = (Connection) DriverManager.getConnection(DB_URL,USER,PASS);

	   //STEP 4: Execute a query
	   System.out.println("Creating statement...");
	   stmt = (Statement) conn.createStatement();
	   String sql;
	  sql = "	INSERT INTO `bookstore`.`user` (`username`, `password`, `realName`, `email`, `adress`, `phoneNumber`) "
	   		+ "VALUES ( '"+username+"', '"+password+"', '"+realName+"', '"+email+"', '"+adress+"', '"+phoneNumber+"');";
	   ps = (PreparedStatement) conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		int affectedRows= ps.executeUpdate();
		
	
	   //STEP 6: Clean-up environment
	  // rs.close();
	   stmt.close();
	   conn.close();
	}catch(SQLException se){
	   //Handle errors for JDBC
	   se.printStackTrace();
	}catch(Exception exc){
	   //Handle errors for Class.forName
	   exc.printStackTrace();
	}finally{
	   //finally block used to close resources
		response.sendRedirect("SignIn.jsp");
	   try{
	      if(stmt!=null)
	         stmt.close();
	   }catch(SQLException se2){
	   }// nothing we can do
	   try{
	      if(conn!=null)
	         conn.close();
	   }catch(SQLException se){
	      se.printStackTrace();
	   }//end finally try
	//end try
	
	}
	}
}
