package obs.form;

import javax.servlet.http.HttpServletRequest;

public class ExternalTransferForm {
	private String fromAccount;
	private String toAccount;
	private String date;
	private String message;
	private float amount;

	public ExternalTransferForm(HttpServletRequest request) {
		fromAccount = request.getParameter("fromAcc");
		toAccount = request.getParameter("toAcc");
		amount = Float.parseFloat(request.getParameter("amount"));
		date = request.getParameter("date");
		message = request.getParameter("message");
	}
	public String getFromAccount() {
		return fromAccount;
	}
	public String getToAccount() {
		return toAccount;
	}
	public float getAmount() {
		return amount;
	}
	public String getDate() {
		return date;
	}
	public String getMessage() {
		return message;
	}
}