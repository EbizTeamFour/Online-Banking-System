package obs.form;

import javax.servlet.http.HttpServletRequest;

public class LoginForm {
	private String userId;
	private String password;

	public LoginForm(HttpServletRequest request) {
		userId = request.getParameter("userId");
		password = request.getParameter("password");
	}
	public String getUserId() {
		return userId;
	}
	public String getPassword() {
		return password;
	}
}