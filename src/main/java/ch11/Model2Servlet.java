package ch11;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ch08.KicMember;
import ch08.KicMemberDAO;

/**
 * Servlet implementation class Model2Servlet
 */
@WebServlet("/joinInfo")
public class Model2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		//HttpSession  session = request.getSession();
		//String id = (String)session.getAttribute("id");
		String id = "sd";
		KicMemberDAO dao=new KicMemberDAO();
		KicMember mem = dao.getMember(id);
        request.setAttribute("mem", mem);
        RequestDispatcher  disp = 
        request.getRequestDispatcher("/ch11_model2/joinInfo.jsp");
		disp.forward(request, response);
	}

	

}
