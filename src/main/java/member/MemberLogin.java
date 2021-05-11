package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/member/login")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		HttpSession session=request.getSession();
		
		Connection conn =null;
		
		try{
			
			Class.forName("org.mariadb.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			//Statement stmt=conn.createStatement();
			
			PreparedStatement pstmt=conn.prepareStatement("SELECT * FROM memeber WHERE id=? AND pw = ?");
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			
			ResultSet rs=pstmt.executeQuery();
			
			boolean isExist=rs.next();
			if(isExist){
				//�α��� ��, �Է��� ���̵�, ��й�ȣ�� ȸ�� ������ ã�Ҵٸ���
				//�α���ó��
				// -������� �г��� ���ǿ� ����
				String name=rs.getString("name"); //db�� ����� rs�� ����Ű�� nameĮ���� �ִ� ���� (String����)�����Ͷ�.
				
				// -������� �ĺ��� ���ǿ� ����
				int idx=rs.getInt("idx");
				
				session.setAttribute("name", name);
				session.setAttribute("idx", idx);
				
				// -�����ڵ�200
				response.setStatus(200);//�⺻ ����ó���� 200�̹Ƿ� ���� ���� �ʾƵ� ��
			}else{
				//�α��� �� �Է��� ���̵�, ��й�ȣ�� ȸ�� ������ ã�����ߴٸ���
				//�α��� ���� ó��
				//�����ڵ� 401 : �̽���
				response.setStatus(401);
			}
			
		} catch(SQLException | ClassNotFoundException e){
			//����ó��
			// �����ڵ� 500(�츮 ������ ������ �ִ�)
			response.setStatus(500);
		} finally{
			if(conn!=null){
				try{
					conn.close();
					
				} catch(SQLException e){
					
				}
			}
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
