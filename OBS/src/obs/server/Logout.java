package obs.server;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import obs.dao.Model;

public class Logout extends Action {

    public Logout(Model model) {
    }

    public String getName() {
        return "logout.do";
    }
    public String perform(HttpServletRequest request) {
        HttpSession session = request.getSession();
    	List<String> errors = new ArrayList<String>();
        request.setAttribute("errors", errors);
        session.setAttribute("cur_user", null);
        return "index.jsp";
    }
}