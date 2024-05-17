package packCustomer;

public abstract class Payment {
	
	public static final int payid = 0;
	public static final String name = "";
	public static final String bank = "";
	public static final String branch = "";
	public static final String accountNo = "";
	public static final String secCode = "";
	
	
	/*
	 * REMEBER being overridden
	 * Only getters are needed
	 */
	public  int getId() {
		return payid;
	}
	
	public static String getName() {
		return name;
	}
	
	public static String getBank() {
		return bank;
	}
	
	public static String getBranch() {
		return branch;
	}
	
	public static String getAccountno() {
		return accountNo;
	}
	
	public static String getSeccode() {
		return secCode;
	}
	
	
	

}
