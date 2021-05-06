package login.cookie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/cookie/logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Ŭ���̾�Ʈ�� �����ִ� ��� ��Ű�� ������
		Cookie[] cookies = request.getCookies();

		for(Cookie cookie : cookies) {
			String name = cookie.getName();
			
			if(name.equals("ID") || name.equals("PW") || name.equals("nickname")) {
				// ��Ű�� Ÿ�̸�(��ȿ�ð�)�� 0�ʷ� ����
				cookie.setMaxAge(0);
				// Ÿ�̸Ӱ� �� �� ��Ű�� Ŭ���̾�Ʈ���� ����
				// (Ŭ���̾�Ʈ�� Ÿ�̸Ӱ� �� �� ��Ű�� ������ ���� ó���� ��)
				response.addCookie(cookie);
			} // end if
		} // end for		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
