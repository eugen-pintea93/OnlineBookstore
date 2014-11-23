package Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ListOfProducts;
import product.Product;
import Cart.Cart;

/**
 * Servlet implementation class addToCartServlet
 */
@WebServlet("/addToCart")
public class addToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cart c = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		boolean productExists = false;
		System.out.println("Am intrat in addToCart");
		
		if(c==null)
		{
			try {
				c = new Cart();
			} catch (ClassNotFoundException | SQLException e) {
				System.out.println("NU-i bine handleProduct");
				e.printStackTrace();
			}
			
		}	
			
		Product pr = c.getListOfProducts().getProductsInShop().get(productId-1);
		for(int i=0;i<c.getProducts().size();i++)
		{
			if(pr.getProductId()==c.getProducts().get(i).getProductId())productExists = true;
		}
		if(productExists==false)
		{
			c.addProduct(pr);
		}
		else
		{
			for(Product p:c.getProducts())
			{
				if(p.getProductId()==pr.getProductId())
				{
					p.setQuantity(p.getQuantity()+1);
				}
			}
		}
		
		
		//Product pr = c.getProducts().get(productId);
		
		
		System.out.println("Fii atent aici!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
	
		
		
		
		System.out.println("Am ajuns in add to cart");
		request.getSession().setAttribute("cart", c);
		request.getRequestDispatcher("jsp/viewProductsInCart.jsp").forward(request,response);
		//response.sendRedirect("jsp/viewProductsInCart.jsp");
		return;
		
	}

}
