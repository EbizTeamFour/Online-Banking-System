package obs.dao;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;
import org.genericdao.GenericDAO;
import org.genericdao.MatchArg;
import org.genericdao.RollbackException;

import obs.bean.OBSAccount;

public class OBSAccountDAO extends GenericDAO<OBSAccount> {
    public OBSAccountDAO(ConnectionPool cp, String tableName) throws DAOException {
        super(OBSAccount.class, tableName, cp);
    }
    
    public OBSAccount getOBSAccount(String s) throws RollbackException {
    	OBSAccount[] account = this.match(MatchArg.equals("accountNumber", s));
    	return account[0];
    }
    
    public OBSAccount getOBSAccountByCheck(String s) throws RollbackException {
    	OBSAccount[] account = this.match(MatchArg.equals("checkingNumber", s));
    	return account[0];
    }
}