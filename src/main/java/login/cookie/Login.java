package login.cookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/cookie/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ȸ������ �Ǿ��ִ� ������� ���̵�
		String userID="user";
		//ȸ������ �Ǿ��ִ� ������� ��й�ȣ
		String userPW="pw";
		//ȸ������ �Ǿ� �ִ� ������� �г���
		String userNickname="�����";
		
		//����ڰ� ������ id
		String id=request.getParameter("id");
		//����ڰ� ������  pw
		String pw=request.getParameter("pw");
		
		//ȸ������ �Ǿ��ִ� ���̵�� ��й�ȣ��
		//����ڰ� ����(������)���̵�� ��й�ȣ�� ���ؼ�
		if(id.equals(userID) && pw.equals(userPW)) {
			
			//���ٸ�
			//1.���̵�, ��й�ȣ, �г���(userNickname)�� �����ϴ� ��Ű ����
			Cookie cookie1=new Cookie("ID",id);
			Cookie cookie2=new Cookie("PW",pw);
			Cookie cookie3=new Cookie("nickname",userNickname);
			
			//2.Ŭ���̾�Ʈ�� ��Ű ����
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			response.addCookie(cookie3);
			
			//3.200���� �ڵ带 ��ȯ
			response.setStatus(200);
		} else {
			//�ٸ��ٸ�
			//1.400���� ���� �ڵ带 ��ȯ
			response.setStatus(400);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
