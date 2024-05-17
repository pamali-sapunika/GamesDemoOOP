package packCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InquiryServlet")
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//want to save the caught data here
		String name = request.getParameter("cusName");
		String email = request.getParameter("cusEmail");
		String inquiry = request.getParameter("cusInquiry");
		
		//e boolean value eka blnna mokkd kiyl
		boolean isTrueInq = InquiryDBUtil.createInquiry(name, email, inquiry);
		
		
		if(isTrueInq == true) {
			
			/**
			 * If true (data okkom insert nn) from servlet to another new jsp
			 * If want to navigate from servlet to jsp => requstDispacher
			 */
			
			List<Inquiry> inqDetails = InquiryDBUtil.getInquiry(name);
			request.setAttribute("inqDetails", inqDetails);
			
			
			RequestDispatcher dis1 = request.getRequestDispatcher("inquirySuccess.jsp");
			dis1.forward(request, response);
			
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("inquiryUnsuccess.jsp");
			dis2.forward(request, response);
			
		}
	
		
	}

}
