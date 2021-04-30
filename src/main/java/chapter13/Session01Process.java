package chapter13;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session01Process
 */
@WebServlet("/session01Process")
public class Session01Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Session01Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션을 사용
		HttpSession session=request.getSession();//request객체에 있는 session을 꺼내서 사용
		
		//setAttribute 를 사용해서 데이터를 저장할 때
		//세션이 생성되지 않았으면 세션을 생성
		//
		//세션에 이름=값 의 형태로 데이터를 저장
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		
		//세션의 유지시간을 10초로 설정
		session.setMaxInactiveInterval(10);
		
		RequestDispatcher dis=request.getRequestDispatcher("/chapter13/session01_success.jsp");
		dis.forward(request, response);
		
//		PrintWriter out=response.getWriter();
//		
//		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//		out.println("<strong>success</strong>");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
