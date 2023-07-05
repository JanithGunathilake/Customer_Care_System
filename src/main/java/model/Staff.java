package model;

public class Staff {
	private int sid;
	private String firstname;
	private String lastname;
	private String phone_number;
	private String email;
	private String address;
	private String password;
	
	
	public Staff(int sid, String firstname, String lastname, String phone_number, String email, String address,
			String password) {
		
		this.sid = sid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phone_number = phone_number;
		this.email = email;
		this.address = address;
		this.password = password;
	}


	public int getSid() {
		return sid;
	}


	public String getFirstname() {
		return firstname;
	}


	public String getLastname() {
		return lastname;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public String getEmail() {
		return email;
	}


	public String getAddress() {
		return address;
	}


	public String getPassword() {
		return password;
	}


	
	
	
	
	
	
	
}
