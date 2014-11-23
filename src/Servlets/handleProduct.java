package Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.Product;
import Cart.Cart;

/**
 * Servlet implementation class handleProduct
 */
@WebServlet("/handleProduct")
public class handleProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cart c = null;
       
	public handleProduct()
	{
		super();
		
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookId = Integer.parseInt(request.getParameter("bookId"));
		ArrayList<Product> uniqueProd = new ArrayList<Product>();
		
		if(c==null)
		{
			try {
				c = new Cart();
			} catch (ClassNotFoundException | SQLException e) {
				System.out.println("NU-i bine handleProduct");
				e.printStackTrace();
			}
			
		}
		
		Product p1 = c.getListOfProducts().getProductsInShop().get(bookId-1);
		
		
		
		System.out.println("Am ajuns in handle Product");
		request.getSession().setAttribute("book", p1);
		response.sendRedirect("jsp/product.jsp");
		System.out.println("Am trecut de redirect");
		
	}
}


