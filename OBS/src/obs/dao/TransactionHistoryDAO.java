package obs.dao;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;
import org.genericdao.GenericDAO;
import org.genericdao.MatchArg;
import org.genericdao.RollbackException;

import obs.bean.TransactionHistory;

public class TransactionHistoryDAO extends GenericDAO<TransactionHistory> {
    public TransactionHistoryDAO(ConnectionPool cp, String tableName) throws DAOException {
        super(TransactionHistory.class, tableName, cp);
    }
    
    public TransactionHistory[] getTransactions(String s) throws RollbackException {
    	TransactionHistory[] transactions = this.match(MatchArg.equals("accountNumber", s));
    	return transactions;
    }
}