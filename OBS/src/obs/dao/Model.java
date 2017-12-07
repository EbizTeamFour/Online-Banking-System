package obs.dao;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;

public class Model {
    private UserSecurityDAO userSecurity;
    private UserBasicDAO userBasic;
    private OBSAccountDAO obsAccount;
    private TransactionHistoryDAO transactionHistory;
    
    public Model(ServletConfig config) throws ServletException {
        try {
            String jdbcDriver = config.getInitParameter("jdbcDriverName");
            String jdbcURL = config.getInitParameter("jdbcURL");

            ConnectionPool pool = new ConnectionPool(jdbcDriver, jdbcURL);

            userSecurity = new UserSecurityDAO(pool, "user_security");
            userBasic = new UserBasicDAO(pool, "user_basic");
            obsAccount = new OBSAccountDAO(pool, "obsAccount");
            transactionHistory = new TransactionHistoryDAO(pool, "transactions");
        } catch (DAOException e) {
            throw new ServletException(e);
        }
    }

    public UserSecurityDAO getUserSecurityDAO() {
        return userSecurity;
    }
    public UserBasicDAO getUserBasicDAO() {
        return userBasic;
    }
    public OBSAccountDAO getOBSAccountDAO() {
        return obsAccount;
    }
    public TransactionHistoryDAO getTransactionHistoryDAO() {
    	return transactionHistory;
    }
}
