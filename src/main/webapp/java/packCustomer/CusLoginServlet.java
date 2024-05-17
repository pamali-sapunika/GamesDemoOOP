package packCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CusLoginServlet")
public class CusLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		
		try {
			
			//Calling validate() method in cusDBUtil class
			//Getting all data to an object
			List<Customer> cusDetails = CustomerDBUtil.validate(username, password);

			//If this data is correct data should be sent to a webpage
			request.setAttribute("cusDetails", cusDetails);
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		//Want to make a request from servlet to jsp page
		RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
		
		//Send all infomation to userAccount.jsp
		dis.forward(request, response);
		
	}

}
