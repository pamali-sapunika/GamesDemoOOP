package packCustomer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InquiryUpdateServlet")
public class InquiryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inqid = request.getParameter("inqid");
		String name = request.getParameter("cusname");
		String email = request.getParameter("cusemail");
		String inquiry = request.getParameter("cusinq");
		
		
		boolean isTrue = InquiryDBUtil.updateInquiry(inqid, name, email, inquiry);
		
		if(isTrue == true) {
			
			
			List<Inquiry> inqDetails = InquiryDBUtil.getInquiry(name);
			request.setAttribute("inqDetails", inqDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("inquirySuccess.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("inquiryUnsuccess.jsp");
			dis.forward(request, response);
		}
		
		
		
		
	}

}
