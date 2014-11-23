package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Database.DB_Conn;

public class ListOfProducts {

	private ArrayList<Product> productsInShop = new ArrayList<Product>();
	Connection con;
	
	public ListOfProducts()
	{
		
	}
	
	public void getFromDB() throws ClassNotFoundException, SQLException
	{
		DB_Conn c = new DB_Conn();
		con = c.getConnection();
		
		String getProducts = "SELECT  * from product" ;
                
		PreparedStatement psmt = con.prepareStatement(getProducts);
		ResultSet executeQuery = psmt.executeQuery();
		while (executeQuery.next()){
			int id = executeQuery.getInt("product_id");
			String name = executeQuery.getString("product-name");
			int price = executeQuery.getInt("price");
			String category = executeQuery.getString("category-name");
			String description = executeQuery.getString("description");
			String author = executeQuery.getString("author");
			String language = executeQuery.getString("language");
			String country = executeQuery.getString("country");
			String genre = executeQuery.getString("genre");
			String video = executeQuery.getString("video");
			String mainImage = executeQuery.getString("mainImage");
			String sideImage = executeQuery.getString("sideImage");
			
			productsInShop.add(new Product(id,name,price,1,category,description,author,language,country,genre,video,mainImage,sideImage));

		
		}
	}

	public ArrayList<Product> getProductsInShop() {
		return productsInShop;
	}

	public void setProductsInShop(ArrayList<Product> productsInShop) {
		this.productsInShop = productsInShop;
	}
	
	
	
	

	
	
}
