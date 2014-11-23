	package Cart;

	import java.sql.*;
import java.util.*;

import product.ListOfProducts;
import product.Product;

	/**
	 *
	 * @author Cristi
	 */

	
	public class Cart {
		private ArrayList<Product> products = new ArrayList<Product>();
		private ListOfProducts listOfProducts ;
		public Cart() throws ClassNotFoundException, SQLException
		{
			listOfProducts = new ListOfProducts();
			listOfProducts.getFromDB();
		}
		
	   
	   
	   public void addProduct(Product p)
	   {
		   products.add(p);
		  	   
	   }
	   public double showTotalPrice()
	   {
		   double sum = 0;
		   for(Product p:products)
		   {
			   sum+=p.getPrice();
		   }
		   return sum;
	   }



	public ArrayList<Product> getProducts() {
		return products;
	}



	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}



	public ListOfProducts getListOfProducts() {
		return listOfProducts;
	}



	public void setListOfProducts(ListOfProducts listOfProducts) {
		this.listOfProducts = listOfProducts;
	}

	   
	}

