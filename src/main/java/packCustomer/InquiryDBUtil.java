package packCustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InquiryDBUtil {

//	private static Connection con = null;
//	private static Statement stat = null;
//	private static ResultSet rs = null;

	//Inquiry 
	
	public static boolean createInquiry(String cusName, String cusEmail, String cusInquiry) {
		
		boolean isSuccessInq = false;
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/gamesapp";
		String user = "root";
		String pass = "Sapunika@02";
		
		try {
			
//			con = DBConnect.getDBConnection();
//			stat = con.createStatement();
			
			
			Class.forName("com.mysql.jdbc.Driver");
			
			//Database ekt ktha krnnai ynne
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stat = con.createStatement();
			
			String sql = "insert into inquiry values (0, '"+cusName+"', '"+cusEmail+"', '"+cusInquiry+"')";
//			rs = stat.execute(sql);
		
			
			/*
			 * not like prevoius execution...Using an integer value we are passing value
			 * If this statemnt executes successfully rs becomes 1
			 * Not using resultset class
			 */
			int rs = stat.executeUpdate(sql);
			
			
			if(rs > 0) { //Ape wade successd blnna rs = 0 or rs = 1 only
				
				isSuccessInq = true;
			}
			else {
				isSuccessInq = false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccessInq;
		
	}
	
	
	
//	public static List<Inquiry> updateInquiry(String name){
//		
//		ArrayList<Inquiry> inqui = new ArrayList<>();
//		
//		String url = "jdbc:mysql://localhost:3306/gamesapp";
//		String user = "root";
//		String pass = "Sapunika@02";
//		
//		try {
//			
//			Class.forName("com.mysql.jdbc.Driver");
//			
//			Connection con = DriverManager.getConnection(url, user, pass);
//			Statement stat = con.createStatement();
//			
//			String sql = "select * from inquiry where name like '"+name+"'";
//			
//			ResultSet rs = stat.executeQuery(sql);
//			
//			if(rs.next()) {
//				
//				int id = rs.getInt(1);
//				String cname = rs.getString(2);
//				String cemail = rs.getString(3);
//				String des = rs.getString(4);
//				
//				Inquiry i = new Inquiry(id, cname, cemail, des);
//				inqui.add(i);
//			}
//			
//		} catch (Exception e) {
//			
//			e.printStackTrace();
//		}
//		
//		return inqui;
//	}
	
	
	public static List<Inquiry> getInquiry(String cusName) {
	    List<Inquiry> inquiries = new ArrayList<>();

	    String url = "jdbc:mysql://localhost:3306/gamesapp";
	    String user = "root";
	    String pass = "Sapunika@02";

	    try {
	        Class.forName("com.mysql.jdbc.Driver");
	        
	        Connection con = DriverManager.getConnection(url, user, pass);
	        Statement stat = con.createStatement();

	        String sql = "SELECT * FROM inquiry where cusName = '"+cusName+"'";

	        ResultSet rs = stat.executeQuery(sql);

	        if(rs.next()) {
	            int id = rs.getInt(1);
	            String cName = rs.getString(2);
	            String cEmail = rs.getString(3);
	            String cInquiry = rs.getString(4);

	            Inquiry inquiryObj = new Inquiry(id, cName, cEmail, cInquiry);
	            inquiries.add(inquiryObj);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return inquiries;
	}


	
	
	
	
	public static boolean updateInquiry(String inqid, String name, String email, String inquiry){
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/gamesapp";
	    String user = "root";
	    String pass = "Sapunika@02";
	    
	    try {
	    	
	    	Class.forName("com.mysql.jdbc.Driver");
	    	
	    	Connection con = DriverManager.getConnection(url, user, pass);
	    	Statement stat = con.createStatement();
	    	
	    	String sql = "update inquiry set cusName = '"+name+"', cusEmail = '"+email+"', inquiry = '"+inquiry+"' where inquiryID = '"+inqid+"'";
	    	
	    	int rs = stat.executeUpdate(sql);
	    	
	    	if(rs > 0) {
	    		
	    		isSuccess = true;
	    	}
	    	else {
	    		
	    		isSuccess = false;
	    	}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	    
	    return isSuccess;
		
	}
	
	
	
	public static boolean deleteInquiry(String inqid) {
		
		boolean isSuccess = false;
		int convId = Integer.parseInt(inqid);//Wrapper class
		
		String url = "jdbc:mysql://localhost:3306/gamesapp";
	    String user = "root";
	    String pass = "Sapunika@02";
	    
	    try {
	    	
	    	Class.forName("com.mysql.jdbc.Driver");
	    	
	    	Connection con = DriverManager.getConnection(url, user, pass);
	    	Statement stat = con.createStatement();
	    	
	    	String sql = "delete from inquiry where inquiryID = '"+convId+"'";
	    	
	    	int rs = stat.executeUpdate(sql);
	    	
	    	if(rs > 0) {
	    		
	    		isSuccess = true;
	    	}
	    	else {
	    		
	    		isSuccess = false;
	    	}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
