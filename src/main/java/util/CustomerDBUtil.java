package util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import model.Customer;





public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String email, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM customer_details WHERE email = '"+email+"' AND password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			} 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Customer> getCustomer(){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM customer_details";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int cid = rs.getInt(1);
				String name = rs.getString(2);
				String phone_number = rs.getString(3);
				String email = rs.getString(4);
				String type = rs.getString(5);
				String password = rs.getString(6);
				
				
				Customer cus = new Customer(cid,name,phone_number,email,type,password);
				customer.add(cus);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return customer;
	}
	
	public static boolean registerCustomer(String name, String phone_number,String email, String type, String password) {
		
		isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO customer_details VALUES (0, '"+name+"', '"+phone_number+"', '"+email+"', '"+type+"', '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
}

