package obs.form;

import javax.servlet.http.HttpServletRequest;

public class InternalTransferForm {
	private String fromAccount;
	private String toAccount;
	private String date;
	private float amount;

	public InternalTransferForm(HttpServletRequest request) {
		fromAccount = request.getParameter("fromAcc");
		toAccount = request.getParameter("toAcc");
		amount = Float.parseFloat(request.getParameter("amountTransfer"));
		date = request.getParameter("dateTransfer");
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
}