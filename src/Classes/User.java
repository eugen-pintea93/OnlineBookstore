package Classes;

public class User {

	private String userName;
	private String userId;
	public String address;
    public String gender;
    public String userImage;
    public String mobileNum;
    public String userEmail;
	
    public User()
    {
    	
    }

    
    public User(String userName, String userId, String address, String gender,
			String userImage, String mobileNum, String userEmail) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.address = address;
		this.gender = gender;
		this.userImage = userImage;
		this.mobileNum = mobileNum;
		this.userEmail = userEmail;
	}
    
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public String getMobileNum() {
		return mobileNum;
	}
	public void setMobileNum(String mobileNum) {
		this.mobileNum = mobileNum;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
	
}
