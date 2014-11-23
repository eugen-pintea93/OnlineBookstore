/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package product;
import Database.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 	@author Cristi
 */
public class Product {

    private int productId; 
    private String name;
    private int price;
    private int quantity;
    private String category;
    private String description;
    private String author;
    private String language;
    private String genre;
    private String country;
    private String video;
    private String mainImage;
    private String sideImage;

	
    public Product()
    {
    	
    }
    
    
    
	



	public Product(int productId, String name, int price, int quantity,String category,
			String description, String author, String language, String genre,
			String country, String video, String mainImage, String sideImage) {
		super();
		this.productId = productId;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.category = category;
		this.description = description;
		this.author = author;
		this.language = language;
		this.genre = genre;
		this.country = country;
		this.video = video;
		this.mainImage = mainImage;
		this.sideImage = sideImage;
	}







	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	
	public String getVideo() {
		return video;
	}



	public void setVideo(String video) {
		this.video = video;
	}


	public String getMainImage() {
		return mainImage;
	}


	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public String getSideImage() {
		return sideImage;
	}




	public void setSideImage(String sideImage) {
		this.sideImage = sideImage;
	}







	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name
				+ ", price=" + price + ", quantity=" + quantity + ", category="
				+ category + ", description=" + description + ", author="
				+ author + ", language=" + language + ", genre=" + genre
				+ ", country=" + country + ", video=" + video + ", mainImage="
				+ mainImage + ", sideImage=" + sideImage + "]";
	}








	
    
    
    
}
