package model;
	

public class Customer {
    private int cid;
    private String name;
    private String phone_number;
    private String email;
    private String type;
    private String password;
    
    

    public Customer(int cid, String name, String phone_number, String email, String type , String password) {
	
		this.cid = cid;
		this.name = name;
		this.phone_number = phone_number;
		this.email = email;
		this.type = type;
		this.password = password;
		
	}


	public int getCid() {
		return cid;
	}


	public String getName() {
		return name;
	}


	public String getPhone_number() {
		return phone_number;
	}


	public String getEmail() {
		return email;
	}


	public String getType() {
		return type;
	}
	
	public String getPassword() {
		return password;
	}
	    
}
