package obs.form;

import javax.servlet.http.HttpServletRequest;

public class RegisterForm1 {
	private String SSN;
	private String accountPIN;
	private String accountNumber;

	public RegisterForm1(HttpServletRequest request) {
		SSN = request.getParameter("SSN");
		accountPIN = request.getParameter("accountPIN");
		accountNumber = request.getParameter("accountNumber");
	}
	public String getSSN() {
		return SSN;
	}
	public String getAccountPIN() {
		return accountPIN;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
}
