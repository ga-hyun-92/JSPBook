package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberDelete
 */
@WebServlet("/member/delete")
public class MemberDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int idx=(int)session.getAttribute("idx");
		
		Connection conn=null;
		
		
		try {
			
			Class.forName("org.mariadb.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
			
			PreparedStatement pstmt=conn.prepareStatement("DELETE FROM memeber WHERE idx=?");
			
			pstmt.setInt(1, idx);
			
			int deleteRow=pstmt.executeUpdate();
			
			if(deleteRow==1) {
				//���������� Ż�� ó���� �Ǿ��ٸ�
				//�ƹ��͵� ���� ����
			} else {
				//Ż�� ó���� ���� �ʾҴٸ� 500���� ��ȯ
				response.setStatus(500);
			}
		} catch(SQLException|ClassNotFoundException e){
			
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch(SQLException e) {
					
				}//end try
			}//end if
		}//end try
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
