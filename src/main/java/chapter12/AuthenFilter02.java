package chapter12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter02 implements Filter{


	
	private FilterConfig config=null;
	
	@Override
	//필터가 등록될떄 딱 한번 시행되는 생성자 역할을 함 ->init
	public void init(FilterConfig filterConfig) throws ServletException {
		config=filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filetr02 수행..");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		String initParam1 = config.getInitParameter("param1");
		String initParma2 = config.getInitParameter("param2");
		
		String message;
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=response.getWriter();
		
		if(id.equals(initParam1) && pw.equals(initParma2)) {
			message="로그인에 성공했습니다.";
		} else {
			message="로그인에 실패했습니다.";
		}
		
		writer.print(message);
		
		chain.doFilter(request, response);
		
	}

}
