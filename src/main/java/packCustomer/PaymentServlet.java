package packCustomer;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		String cusname = request.getParameter("name");	
		String bank = request.getParameter("bank");	
		String branch = request.getParameter("branch");	
		String account = request.getParameter("account");	
		String security = request.getParameter("sec");	
		
		boolean isSuccess = CustomerDBUtil.payment( cusname, bank, branch, account, security);
		
		
		if(isSuccess == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentSuccess.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("paymentUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
	}

}
