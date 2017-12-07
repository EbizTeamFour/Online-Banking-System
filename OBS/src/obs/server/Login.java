package obs.server;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.genericdao.RollbackException;

import obs.dao.Model;
import obs.dao.OBSAccountDAO;
import obs.dao.TransactionHistoryDAO;
import obs.dao.UserSecurityDAO;
import obs.bean.OBSAccount;
import obs.bean.TransactionHistory;
import obs.bean.UserSecurityBean;
import obs.form.LoginForm;

public class Login extends Action {

    private UserSecurityDAO userDAO;
    private OBSAccountDAO obsAccountDAO;
    private TransactionHistoryDAO transactionHistory;

    public Login(Model model) {
        userDAO = model.getUserSecurityDAO();
        obsAccountDAO = model.getOBSAccountDAO();
        transactionHistory = model.getTransactionHistoryDAO();
    }
    
    public String getName() {
        return "login.do";
    }

    public String perform(HttpServletRequest request) {
        HttpSession session = request.getSession();
        
        if (request.getMethod().equals("GET")) {
            return "index.jsp";
        }
        
        try {
            LoginForm form = new LoginForm(request);
            request.setAttribute("form", form);

            UserSecurityBean user = userDAO.getUserById(form.getUserId());

            if (user == null || !form.getPassword().equals(user.getPassword())) {
                return "index.jsp";
            }
            OBSAccount account = obsAccountDAO.getOBSAccount(user.getAccountNumber());
            TransactionHistory[] history = transactionHistory.getTransactions(user.getAccountNumber());
            session.setAttribute("cur_account", account);
            session.setAttribute("cur_user", user);
            session.setAttribute("history", history);
            return "account.jsp";

        } catch (RollbackException e) {
        	request.setAttribute("errors","The user does not exist!");
            return "index.jsp";
        }
    }
}