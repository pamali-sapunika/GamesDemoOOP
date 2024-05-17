package packCustomer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.w3c.dom.views.AbstractView;

@WebServlet("/InquiryDeleteServlet")
public class InquiryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inqid = request.getParameter("inqid");
		/*
		 * Api gnne ID eka withri.Then query eka liynw row
		 * ekm delete krnna ID eka parameter ekk widiht aran
		 */
		
		boolean isTrue = InquiryDBUtil.deleteInquiry(inqid);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("inquiryUnsuccess.jsp");
			dis.forward(request, response);
		}
		else
		{
			
//			List<Inquiry> inqDetails = InquiryDBUtil.getInquiry(name);
//			request.setAttribute("inqDetails", inqDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("inquiryUnsuccess.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
