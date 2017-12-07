package obs.server;

import javax.servlet.http.HttpServletRequest;

import org.genericdao.RollbackException;

import obs.dao.Model;
import obs.dao.UserBasicDAO;
import obs.bean.UserBasicBean;
import obs.form.RegisterForm1;

public class RegisterValid extends Action {

    private UserBasicDAO userDAO;

    public RegisterValid(Model model) {
        userDAO = model.getUserBasicDAO();
    }
    
    public String getName() {
        return "registerValid.do";
    }

    public String perform(HttpServletRequest request) {
        if (request.getMethod().equals("GET")) {
            return "register_step1.jsp";
        }
        
        try {
            RegisterForm1 form = new RegisterForm1(request);
            request.setAttribute("form", form);

            UserBasicBean user = userDAO.getUser(form.getAccountNumber());

            if (!form.getAccountPIN().equals(user.getAccountPIN()) || !form.getSSN().equals(user.getSSN())) {
                return "register_step1.jsp";
            }
            request.setAttribute("accountNumber", form.getAccountNumber());
            return "register_step2.jsp";

        } catch (RollbackException e) {
        	request.setAttribute("errors","The user does not exist!");
            return "index.jsp";
        }
    }
}
