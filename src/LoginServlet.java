import java.io.IOException;
import java.io.PrintWriter;

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
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password;
		int userId;
	
		String password2,username,adress,phone,email;
		int userId2;
		
		 response.setContentType("text/html");
		 //   String un = request.getParameter("signUp-name");
		 //   System.out.println(un);
		
		String userType=request.getParameter("userType");
		System.out.println(userType);
		username=request.getParameter("username");
		password=request.getParameter("password");
		 System.out.println(username);
		 System.out.println(password);
		System.out.println("Macar aci ajungi?");
		LoginService loginService=new LoginService();
		boolean result=loginService.authenticate(username, password,userType);
		System.out.println(result);
		if(result)
		{
			
			
			User user = loginService.getUserDetails(username);
			request.getSession().setAttribute("user", user);
			response.sendRedirect("success.jsp");
		//	RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
		//	dispatcher.forward(request,response);
			return ;
		}
		else {
			//PrintWriter writer=response.getWriter();
			response.sendRedirect("SignIn.jsp");
			//writer.println("<h3>You failde! HAHA!!!<h3>");
		}
		return ;
	}

}

