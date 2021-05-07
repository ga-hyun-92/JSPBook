package login.session;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLogout
 */
@WebServlet("/session/logout")
public class SessionLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionLogout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();//request객체에 있는 session을 꺼내서 사용

		session.setAttribute("isLogin", false);
		session.removeAttribute("nickname");
		
		//RequestDispatcher->포워딩을 하면 URL이 바뀌지 않음
//		RequestDispatcher dis= request.getRequestDispatcher("/chapter14/sessionLogin.jsp");
//		dis.forward(request, response);
		//sendRedirect->포워딩을 하면 URL이 바뀐다.
//		response.sendRedirect("/JSPBook/chapter14/sessionLogin.jsp");
		
		//Location헤더에 이동해야될 URL을 명시
//		response.addHeader("Location", "/JSPBook/chapter14/sessionLogin.jsp");
		//303응답코드를 반환
//		response.setStatus(303);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().print("<script>alert(\"로그아웃 되었습니다.\\n로그인 페이지로 이동합니다.\");location.href='/JSPBook/chapter14/sessionLogin.jsp'</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
