

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import model.User;



public class LoginService {
	
	private HashMap<String,User> users=new HashMap<String,User>();
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	private static final String DB_URL = "jdbc:mysql://localhost/bookStore";//  Database credentials
	private static final String USER = "root";
	private static final String PASS = "";

	
	public LoginService()
	{
		
	}
	
	public boolean authenticate(String user,String pass,String userType)
	{
		Connection conn = null;
		Statement stmt = null;
		boolean ok=true;
		
		
		try{
			
		   //STEP 2: Register JDBC driver
		   Class.forName("com.mysql.jdbc.Driver");

		   //STEP 3: Open a connection
		   System.out.println("Connecting to database...");
		   conn = DriverManager.getConnection(DB_URL,USER,PASS);

		   //STEP 4: Execute a query
		   System.out.println("Creating statement...");
		   stmt = conn.createStatement();
		   String sql;
		   ResultSet rs=null;
		   if(userType.equals("user"))
		   {   
		   sql = "SELECT * from user where username='"+user+"' and password='"+pass+"'";
		   rs = stmt.executeQuery(sql);
		   
		   //STEP 5: Extract data from result set
		   if(rs.next()){
		      //Retrieve by column name
		      int id  = rs.getInt("id");
		      String username = rs.getString("username");
		       String password  = rs.getString("password");
		       String realName=rs.getString("realName");
		      String email = rs.getString("email");
		      String adress = rs.getString("adress");
		      String phoneNumber=rs.getString("phoneNumber");
		      
		      System.out.println(id+" "+username+" "+password+" "+email+" "+adress);
		      
		      User usr=new User(username,id,password,realName,email,phoneNumber,adress);
		      users.put(username,usr);
		          
		   }
		   else{
			   ok=false;
		   }
		   }
		
		   else if(userType.equals("admin")){
			   sql = "SELECT * from admin where username='"+user+"' and password='"+pass+"'";
			   rs=stmt.executeQuery(sql);
			   if(rs.next())
			   {
			   int id  = rs.getInt("id");
			      String username = rs.getString("username");
			       String password  = rs.getString("password");
			       System.out.println(id+" "+username);
			   }
			   else {
				   ok=false;
			   }
		   }
		   //STEP 6: Clean-up environment
		   rs.close();
		   stmt.close();
		   conn.close();
			}
		catch(SQLException se){
		   //Handle errors for JDBC
		   se.printStackTrace();
		}
		catch(Exception e){
		   //Handle errors for Class.forName
		   e.printStackTrace();
		}
		finally{
		   //finally block used to close resources
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
		}//end try
		
		return ok;
	}//end inarca
	
	
	
	public User getUserDetails(String username)
	{
		User user=new User();
		user.setUsername(users.get(username).getUsername());
		return user;
	}
}