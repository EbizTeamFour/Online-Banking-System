package obs.server;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.genericdao.RollbackException;

import obs.dao.Model;
import obs.dao.OBSAccountDAO;
import obs.dao.TransactionHistoryDAO;
import obs.bean.OBSAccount;
import obs.bean.TransactionHistory;
import obs.bean.UserSecurityBean;
import obs.form.InternalTransferForm;

public class InternalTransfer extends Action {

    private OBSAccountDAO obsAccountDAO;
    private TransactionHistoryDAO transactionHistoryDAO;

    public InternalTransfer(Model model) {
        obsAccountDAO = model.getOBSAccountDAO();
        transactionHistoryDAO = model.getTransactionHistoryDAO();
    }
    
    public String getName() {
        return "internalTransfer.do";
    }

    public String perform(HttpServletRequest request) {
    	HttpSession session = request.getSession();
        if (request.getMethod().equals("GET")) {
            return "account.jsp";
        }
        try {
	        InternalTransferForm form = new InternalTransferForm(request);
	        UserSecurityBean user = (UserSecurityBean) session.getAttribute("cur_user");
	        OBSAccount acc = obsAccountDAO.getOBSAccount(user.getAccountNumber());
	        Float checkingBal = acc.getCheckingBalance();
	        Float savingBal = acc.getSavingBalance();
	        TransactionHistory transaction = new TransactionHistory();
	        transaction.setDate(new Date());
	        transaction.setAccountNumber(user.getAccountNumber());
	        transaction.setCategory("Internal Transfer");
	        transaction.setUserId(user.getUserId());
	        transaction.setTransFromAccNum(form.getFromAccount());
        	transaction.setTransToAccNum(form.getToAccount());
        	transaction.setAmount(form.getAmount());
        	transaction.setDescription("Transfer from " + form.getFromAccount() + " to " + form.getToAccount());;
        	transactionHistoryDAO.create(transaction);
	        if (form.getFromAccount().startsWith("Checking") && form.getToAccount().startsWith("Saving")) {
	        	Float amount = form.getAmount();
	        	checkingBal -= amount;
	        	savingBal += amount;
	        	acc.setCheckingBalance(checkingBal);
	        	acc.setSavingBalance(savingBal);
	        	obsAccountDAO.update(acc);
	        } else if (form.getFromAccount().startsWith("Saving") && form.getToAccount().startsWith("Checking")) {
	        	Float amount = form.getAmount();
	        	checkingBal += amount;
	        	savingBal -= amount;
	        	acc.setCheckingBalance(checkingBal);
	        	acc.setSavingBalance(savingBal);
	        	obsAccountDAO.update(acc);
	        }
	        session.setAttribute("cur_account", obsAccountDAO.getOBSAccount(user.getAccountNumber()));
	        session.setAttribute("history", transactionHistoryDAO.getTransactions(user.getAccountNumber()));
	        return "account.jsp";
        } catch (RollbackException e) {
        	request.setAttribute("errors",e.getMessage());
            return "error.jsp";
        }
    }
}