package packCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue = CustomerDBUtil.newRegister(name, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(username, password);
			request.setAttribute("cusDetails", cusDetails);
			
			
			RequestDispatcher dis1 = request.getRequestDispatcher("userAccount.jsp");
			dis1.forward(request, response);
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("registerUnsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
	}

}
