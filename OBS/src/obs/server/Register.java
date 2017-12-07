package obs.server;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.genericdao.RollbackException;

import obs.dao.Model;
import obs.dao.UserBasicDAO;
import obs.dao.UserSecurityDAO;
import obs.bean.UserBasicBean;
import obs.bean.UserSecurityBean;
import obs.form.RegisterForm2;

public class Register extends Action {

    private UserSecurityDAO userSecurityDAO;
    private UserBasicDAO userBasicDAO;

    public Register(Model model) {
        userSecurityDAO = model.getUserSecurityDAO();
        userBasicDAO = model.getUserBasicDAO();
    }
    
    public String getName() {
        return "register.do";
    }

    public String perform(HttpServletRequest request) {
        if (request.getMethod().equals("GET")) {
            return "register_step2.jsp";
        }
        
        try {
        	HttpSession session = request.getSession();
            RegisterForm2 form = new RegisterForm2(request);
            request.setAttribute("form", form);

            UserSecurityBean user = userSecurityDAO.read(form.getAccountNumber());
            UserBasicBean nextUser = userBasicDAO.read(form.getAccountNumber());
            nextUser.setUserId(form.getUserId());
            user.setUserId(form.getUserId());
            user.setPassword(form.getPassword());
            user.setSecurityQuestion1(form.getSecurityQuestion1());
            user.setSecurityAnswer1(form.getSecurityAnswer1());
            user.setSecurityQuestion2(form.getSecurityQuestion2());
            user.setSecurityAnswer2(form.getSecurityAnswer2());
            userSecurityDAO.update(user);
            userBasicDAO.update(nextUser);
            session.setAttribute("cur_user", user);
            return "register_step3.jsp";

        } catch (RollbackException e) {
        	request.setAttribute("errors","The user does not exist!");
            return "index.jsp";
        }
    }
}