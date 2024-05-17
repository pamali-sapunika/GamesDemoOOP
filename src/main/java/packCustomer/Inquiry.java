package packCustomer;

public class Inquiry extends Payment{
	
	private int id;
	private String cusName;
	private String cusEmail;
	private String cusInquiry;
	
	public Inquiry(int id, String name, String email, String inquiry) {
		
		this.id = id;
		this.cusName = name;
		this.cusEmail = email;
		this.cusInquiry = inquiry;
	}

	@Override
	public int getId() {
		return id;
	}

	public String getCusName() {
		return cusName;
	}


	public String getCusEmail() {
		return cusEmail;
	}


	public String getCusInquiry() {
		return cusInquiry;
	}

	



}
