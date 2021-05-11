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
				//로그인 시, 입력한 아이디, 비밀번호로 회원 정보를 찾았다면은
				//로그인처리
				// -사용자의 닉네임 세션에 저장
				String name=rs.getString("name"); //db에 저장된 rs가 가리키는 name칼럼에 있는 값을 (String으로)꺼내와라.
				
				// -사용자의 식별값 세션에 저장
				int idx=rs.getInt("idx");
				
				session.setAttribute("name", name);
				session.setAttribute("idx", idx);
				
				// -응답코드200
				response.setStatus(200);//기본 응답처리가 200이므로 굳이 쓰지 않아도 됨
			}else{
				//로그인 시 입력한 아이디, 비밀번호로 회원 정보를 찾지못했다면은
				//로그인 실패 처리
				//응답코드 401 : 미승인
				response.setStatus(401);
			}
			
		} catch(SQLException | ClassNotFoundException e){
			//예외처리
			// 응답코드 500(우리 서버의 문제가 있다)
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
