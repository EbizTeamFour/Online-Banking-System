package obs.dao;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;
import org.genericdao.GenericDAO;
import org.genericdao.MatchArg;
import org.genericdao.RollbackException;

import obs.bean.UserBasicBean;

public class UserBasicDAO extends GenericDAO<UserBasicBean> {
    public UserBasicDAO(ConnectionPool cp, String tableName) throws DAOException {
        super(UserBasicBean.class, tableName, cp);
    }
    
    public UserBasicBean getUser(String s) throws RollbackException {
    	UserBasicBean[] user = this.match(MatchArg.equals("accountNumber", s));
    	return user[0];
    }
}