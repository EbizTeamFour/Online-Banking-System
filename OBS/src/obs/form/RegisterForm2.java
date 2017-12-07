package obs.form;

import javax.servlet.http.HttpServletRequest;

public class RegisterForm2 {
	private String accountNumber;
	private String userId;
	private String password;
	private String securityQuestion1;
	private String securityQuestion2;
	private String securityAnswer1;
	private String securityAnswer2;

	public RegisterForm2(HttpServletRequest request) {
		accountNumber = request.getParameter("accountNumber");
		userId = request.getParameter("userId");
		password = request.getParameter("password");
		securityQuestion1 = request.getParameter("securityQuestion1");
		securityQuestion2 = request.getParameter("securityQuestion2");
		securityAnswer1 = request.getParameter("securityAnswer1");
		securityAnswer2 = request.getParameter("securityAnswer2");
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public String getUserId() {
		return userId;
	}
	public String getPassword() {
		return password;
	}
	public String getSecurityQuestion1() {
		return securityQuestion1;
	}
	public String getSecurityQuestion2() {
		return securityQuestion2;
	}
	public String getSecurityAnswer1() {
		return securityAnswer1;
	}
	public String getSecurityAnswer2() {
		return securityAnswer2;
	}
}
