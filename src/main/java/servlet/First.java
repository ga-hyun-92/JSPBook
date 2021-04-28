package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException;

/**
 * Servlet implementation class First
 */
@WebServlet("/first")
public class First extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public First() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset = UTF-8");
		
		String contentType = request.getParameter("contentType");
		
		if(contentType.equals("html")) {
			// HTML�� ���õ� ������ �����ִ� �� ������ ����
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>�������� ����</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>HTML�� ���������� ����� ����Դϴ�.</strong>");
			out.println("<p>�׷��� HTML�� �� �������� ��������...</p>");
			out.println("<p>������� ��û�� ���� �� �������� ������ ���� �����ϴ�.</p>");
			out.println("<p>�׷��� HTML�� ������ �� ������ ����� �մϴ�.</p>");
			out.println("</body>");
			out.println("</html>");
		} else if(contentType.equals("css")) {
			// css�� ���õ� ������ �����ִ� �� ������ ����
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>�������� ����</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>CSS�� ���������� �������� ����� ����Դϴ�.</strong>");
			out.println("<p>HTML�� ���븦 ��� CSS�� �������� �����ϴ�.</p>");
			out.println("</body>");
			out.println("</html>");
		} else if(contentType.equals("js")) {
			// JavaScript�� ���õ� ������ �����ִ� �� ������ ����
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>�������� ����</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>JavaScript�� ���������� �������� �� �� �ִ� ����Դϴ�.</strong>");
			out.println("<p>HTML�� �������� ����ٱ� ���ٴ�... HTML�� �����ִ� �̹����� �����̰� ����ų�</p>");
			out.println("<p>������� �̺�Ʈ(Ŭ��,�巡��, Ű �Է� ��)�� �����ؼ�</p>");
			out.println("<p>�׿� ���� ������ HTML�� �ִϸ��̼��� �� �� �ֽ��ϴ�.</p>");
			out.println("</body>");
			out.println("</html>");
		} else {
			// HTML, css, JavaScript�� ���õ� ������ �����ִ� �� ������ ����
			PrintWriter out = response.getWriter();
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>�������� ����</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<strong>HTML�� ���������� ����� ����Դϴ�.</strong>");
			out.println("<p>�׷��� HTML�� �� �������� ��������...</p>");
			out.println("<p>������� ��û�� ���� �� �������� ������ ���� �����ϴ�.</p>");
			out.println("<p>�׷��� HTML�� ������ �� ������ ����� �մϴ�.</p>");
			out.println("<hr>");
			
			out.println("<strong>CSS�� ���������� �������� ����� ����Դϴ�.</strong>");
			out.println("<p>HTML�� ���븦 ��� CSS�� �������� �����ϴ�.</p>");
			out.println("<hr>");
			
			out.println("<strong>JavaScript�� ���������� �������� �� �� �ִ� ����Դϴ�.</strong>");
			out.println("<p>HTML�� �������� ����ٱ� ���ٴ�... HTML�� �����ִ� �̹����� �����̰� ����ų�</p>");
			out.println("<p>������� �̺�Ʈ(Ŭ��,�巡��, Ű �Է� ��)�� �����ؼ�</p>");
			out.println("<p>�׿� ���� ������ HTML�� �ִϸ��̼��� �� �� �ֽ��ϴ�.</p>");
			
			out.println("</body>");
			out.println("</html>");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("����ڰ� /JSPBook/first ��θ� POST������� �����Ͽ���");
		doGet(request, response);
	}

}
