package obs.server;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.genericdao.RollbackException;

import obs.dao.Model;
import obs.dao.TransactionHistoryDAO;
import obs.bean.TransactionHistory;
import obs.bean.UserSecurityBean;

public class ShowTransaction extends Action {
    private TransactionHistoryDAO transactionHistoryDAO;

    public ShowTransaction(Model model) {
        transactionHistoryDAO = model.getTransactionHistoryDAO();
    }
    
    public String getName() {
        return "showTransaction.do";
    }

    public String perform(HttpServletRequest request) {
    	HttpSession session = request.getSession();
        try {
	        UserSecurityBean user = (UserSecurityBean) session.getAttribute("cur_user");
	        TransactionHistory[] transaction = transactionHistoryDAO.getTransactions(user.getAccountNumber());
	        session.setAttribute("history", transaction);
	        return "TransactionHistory.jsp";
        } catch (RollbackException e) {
        	request.setAttribute("errors",e.getMessage());
            return "error.jsp";
        }
    }
}