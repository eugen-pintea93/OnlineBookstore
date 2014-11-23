package model;

public class User {
	private String username;
	private int id;
	private String password;
	private String realName;
	private String email;
	private String phoneNumber;
	private String adress;
	
	public User()
	{
		
	}
public User(String username, int id, String password,String realName, String email,
			String phoneNumber, String adress) {
		super();
		this.username = username;
		this.id = id;
		this.password = password;
		this.realName=realName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.adress = adress;
	}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getAdress() {
	return adress;
}
public void setAdress(String adress) {
	this.adress = adress;
}
public String getRealName() {
	return realName;
}
public void setRealName(String realName) {
	this.realName = realName;
}

}
