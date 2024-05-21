package ch11;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch08.KicMember;
import ch08.KicMemberDAO;

public class Joininfo implements  CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
				String id = "sd";
				KicMemberDAO dao=new KicMemberDAO();
				KicMember mem = dao.getMember(id);
		        request.setAttribute("mem", mem);
		        return "/ch11_model2/joinInfo.jsp";
	}

}
