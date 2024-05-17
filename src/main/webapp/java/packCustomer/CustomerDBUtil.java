package packCustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	
	//Validate login
	
	public static List<Customer> validate(String userName, String password){
		
		//ArrayList of Customer
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/gamesapp";
		String user = "root";
		String pass = "Sapunika@02";
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			//Database ekt ktha krnnai ynne
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stat = con.createStatement();
			
			String sql = "select * from Customer where username = '"+userName+"' and password='"+password+"' "; 
			
			//SQL query eka run krnna hdgnnw results set ekk
			ResultSet rs = stat.executeQuery(sql);
			
			
			//If correct fetch data 
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				Customer c = new Customer(id, name, email, phone, userU, passU);
				cus.add(c);		
			} 	
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return cus;
	}
	

	
	
	public static boolean newRegister (String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/gamesapp";
		String user = "root";
		String pass = "Sapunika@02";
		
		try {
		
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stat = con.createStatement();
			
			String sql = "insert into customer values (0, '"+name+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
			
			int rs =  stat.executeUpdate(sql);
			
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
