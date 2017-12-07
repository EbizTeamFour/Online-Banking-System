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
import obs.form.ExternalTransferForm;

public class ExternalTransfer extends Action {

    private OBSAccountDAO obsAccountDAO;
    private TransactionHistoryDAO transactionHistoryDAO;

    public ExternalTransfer(Model model) {
        obsAccountDAO = model.getOBSAccountDAO();
        transactionHistoryDAO = model.getTransactionHistoryDAO();
    }
    
    public String getName() {
        return "externalTransfer.do";
    }

    public String perform(HttpServletRequest request) {
    	HttpSession session = request.getSession();
        if (request.getMethod().equals("GET")) {
            return "external_transfer.jsp";
        }
        try {
	        ExternalTransferForm form = new ExternalTransferForm(request);
	        UserSecurityBean user = (UserSecurityBean) session.getAttribute("cur_user");
	        OBSAccount acc = obsAccountDAO.getOBSAccount(user.getAccountNumber());
	        OBSAccount toAcc = obsAccountDAO.getOBSAccountByCheck(form.getToAccount());
	        Float checkingBal = acc.getCheckingBalance();
	        TransactionHistory transaction = new TransactionHistory();
	        transaction.setDate(new Date());
	        transaction.setAccountNumber(user.getAccountNumber());
	        transaction.setCategory("External Transfer");
	        transaction.setUserId(user.getUserId());
	        transaction.setTransFromAccNum("My Checking Account: " + acc.getCheckingNumber());
        	transaction.setTransToAccNum("(External Account) " + form.getToAccount());
        	transaction.setAmount(-form.getAmount());
        	transaction.setDescription("Transfer from " + acc.getCheckingNumber()+ " to " + form.getToAccount());;
        	transactionHistoryDAO.create(transaction);
        	TransactionHistory transactionTo = new TransactionHistory();
	        transactionTo.setDate(new Date());
	        transactionTo.setAccountNumber(toAcc.getAccountNumber());
	        transactionTo.setCategory("External Transfer");
	        transactionTo.setUserId(user.getUserId());
	        transactionTo.setTransFromAccNum("External Account "+acc.getCheckingNumber());
        	transactionTo.setTransToAccNum(form.getToAccount());
        	transactionTo.setAmount(form.getAmount());
        	transactionTo.setDescription("Transfer from External Account " + acc.getCheckingNumber() + " to " + form.getToAccount());;
        	transactionHistoryDAO.create(transactionTo);
        	Float amount = form.getAmount();
        	checkingBal -= amount;
        	acc.setCheckingBalance(checkingBal);
        	toAcc.setCheckingBalance(toAcc.getCheckingBalance() + amount);
        	obsAccountDAO.update(acc);
        	obsAccountDAO.update(toAcc);
	        session.setAttribute("cur_account", obsAccountDAO.getOBSAccount(user.getAccountNumber()));
	        session.setAttribute("history", transactionHistoryDAO.getTransactions(user.getAccountNumber()));
	        return "account.jsp";
        } catch (RollbackException e) {
        	request.setAttribute("errors",e.getMessage());
            return "error.jsp";
        }
    }
}