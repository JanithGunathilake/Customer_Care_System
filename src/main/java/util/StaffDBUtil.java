package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import model.Staff;

public class StaffDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean validate(String email, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM staff_details WHERE email = '"+email+"' AND password = '"+password+"'";
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
	
	
	public static List<Staff> getStaff(){
		
		ArrayList<Staff> sta = new ArrayList<>();
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM staff_details";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int sid = rs.getInt(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String phone_number = rs.getString(4);
				String email = rs.getString(5);
				String address = rs.getString(6);
				String password = rs.getString(7);
				
				
				Staff s = new Staff(sid,firstname,lastname,phone_number,email,address,password);
				sta.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return sta;
	}


	public static boolean insertstaff(String firstname, String lastname, String phone_number, String email, String address, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO staff_details VALUES (0, '"+firstname+"', '"+lastname+"', '"+phone_number+"', '"+email+"', '"+address+"', '"+password+"')";
		
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
	
	public static boolean updatestaff(String sid, String firstname, String lastname, String phone_number, String email, String address, String password) {
		
		int  convertedID = Integer.parseInt(sid);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE staff_details SET firstname = '"+firstname+"', lastname = '"+lastname+"', phone_number = '"+phone_number+"', email = '"+email+"', address = '"+address+"', password = '"+password+"' WHERE sid = '"+convertedID+"' ";
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
	
	public static boolean deletestaff(String id) {
		
		int convertID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM staff_details WHERE sid = '"+convertID+"'";
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
