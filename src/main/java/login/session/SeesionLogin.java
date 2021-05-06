package login.session;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SeesionLogin
 */
@WebServlet("/session/login")
public class SeesionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeesionLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		//사용자가 입력한 아이디
		String id=request.getParameter("id");
		//사용자가 입력한 비밀번호
		String pw=request.getParameter("pw");
		

		//회원가입 되어있는 사용자의 아이디
		String userID="id";
		//회원가입 되어있는 사용자의 비밀번호
		String userPW="pw";
		//회원가입 되어있는 사용자의 닉네임
		String nickname=" 사용자";
		
		if(id.equals(userID) && pw.equals(userPW)) {
			
			//세션에 isLogin=true로 저장->로그인 되어있다는 의미
			//세션을 사용
			HttpSession session=request.getSession();//request객체에 있는 session을 꺼내서 사용
			session.setAttribute("isLogin", true);
			//세션에 nickname=회원가입되어 있는 사용자의 닉네임->현재 로그인한 사용자의 닉네임을 저장
			session.setAttribute("nickname", nickname);
			

		} else {
			//다르다면
			//1.400번대 응답 코드를 반환
			response.setStatus(400);
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("/chapter13/session01_success.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
