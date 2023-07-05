package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnect;
import model.Question;

public class QuestionDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Question> getQuestion(){
		
		ArrayList<Question> que = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM questionnaire";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int qid = rs.getInt(1);
				String question = rs.getString(2);
				String answer = rs.getString(3);
				
				Question q = new Question(qid,question,answer);
				que.add(q);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return que;
	}
	
	public static boolean insertQuestion(String question, String answer) {
		isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO questionnaire VALUES (0, '"+question+"', '"+answer+"')";
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
	
	public static boolean updatequestion(String id, String question, String answer) {
		
		int  convertedID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE questionnaire SET question = '"+question+"', answer = '"+answer+"' WHERE qid = '"+convertedID+"'";
			
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
	
	public static boolean deletequestion(String id) {
		
		int  convertedID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM questionnaire WHERE qid = '"+convertedID+"'";
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
