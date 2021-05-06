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
		

		//����ڰ� �Է��� ���̵�
		String id=request.getParameter("id");
		//����ڰ� �Է��� ��й�ȣ
		String pw=request.getParameter("pw");
		

		//ȸ������ �Ǿ��ִ� ������� ���̵�
		String userID="id";
		//ȸ������ �Ǿ��ִ� ������� ��й�ȣ
		String userPW="pw";
		//ȸ������ �Ǿ��ִ� ������� �г���
		String nickname=" �����";
		
		if(id.equals(userID) && pw.equals(userPW)) {
			
			//���ǿ� isLogin=true�� ����->�α��� �Ǿ��ִٴ� �ǹ�
			//������ ���
			HttpSession session=request.getSession();//request��ü�� �ִ� session�� ������ ���
			session.setAttribute("isLogin", true);
			//���ǿ� nickname=ȸ�����ԵǾ� �ִ� ������� �г���->���� �α����� ������� �г����� ����
			session.setAttribute("nickname", nickname);
			

		} else {
			//�ٸ��ٸ�
			//1.400���� ���� �ڵ带 ��ȯ
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
