package obs.dao;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;
import org.genericdao.GenericDAO;
import org.genericdao.MatchArg;
import org.genericdao.RollbackException;

import obs.bean.UserSecurityBean;

public class UserSecurityDAO extends GenericDAO<UserSecurityBean> {
    public UserSecurityDAO(ConnectionPool cp, String tableName) throws DAOException {
        super(UserSecurityBean.class, tableName, cp);
    }
    
    public UserSecurityBean getUser(String s) throws RollbackException {
    	UserSecurityBean[] user = this.match(MatchArg.equals("accountNumber", s));
    	return user[0];
    }
    
    public UserSecurityBean getUserById(String id) throws RollbackException {
    	UserSecurityBean[] user = this.match(MatchArg.equals("userId", id));
    	return user[0];
    }
}