package ch11;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerDo
 */
//@WebServlet("*.do")  //aaa.do 확장자 do이면 실행하는 servlet
public class ControllerDo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Map<String, CommandHandler> commandHandlerMap = 
	    		new HashMap<>();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerDo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		getHandler(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		getHandler(request, response);
	}
	
	protected void getHandler(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURI();
		
		System.out.println(request.getContextPath().length());
		url=url.substring(request.getContextPath().length());
		CommandHandler  com = null;
		if (url.equals("/hello.do")) {
			com = new HelloHandler();
		} else if (url.equals("/joininfo.do")) {
			com = new Joininfo();
		} else {
			com = new HelloHandler();
		}
		String view = com.process(request, response);
		
		RequestDispatcher  disp = 
		        request.getRequestDispatcher(view);
				disp.forward(request, response);
		
		response.getWriter().append("Served at: ").append(url);
	}

}
