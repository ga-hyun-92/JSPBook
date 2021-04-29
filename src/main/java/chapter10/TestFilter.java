package chapter10;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TestFilter implements Filter{
	//init�޼��� ���ؼ� ���Ϳ� �ʿ��� �ʱⰪ ����
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("���� ���� ��...1");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		System.out.println("JSP ó�� �� ���� ����....");
//		System.out.println("Request ���Ϳ� Response���� �� ������ �ִٰ� ����");
//		System.out.println("�� ���Ϳ� Request���Ϳ� Response���� �� ���� ��� �ۼ��� �� ����");
//		
//		System.out.println("doFilter �޼��� ���� ó���ϴ� ������ Request ������ ����");
//		
//		System.out.println("����) �α����� �ʿ��� �������� �����ϱ����� �α��� ���� Ȯ��");
//		System.out.println("�α����� �Ǿ����� �ʴٰ� ���Ͱ� �Ǵ����� ���� doFilter�޼��带 ȣ������ �ʰ�");
//		System.out.println("response.sendRedirect �Ǵ� RequestDispatcher �� ����ؼ� ��� ");
//		System.out.println("������ �ٸ� ������ �ű��");
		
		//��� ���� ���� �Ǵ� ����ڰ� ��û�� ���ҽ��� ����
		chain.doFilter(request, response);
		
		//Ŭ���̾�Ʈ <-> TestFilter <-> ���� :���͸� ���ؼ� request�� responseó��
		System.out.println("JSPó�� �� ���� ����...");
		System.out.println("doFilter�޼��� �Ʒ����ٰ� �ڵ带 �ۼ��ϸ�");
		System.out.println("������ ������� ��û�� ó���� �� ������ �� ���͸� �� �� ����");
		System.out.println("���� Ŭ������ Request�� ���ͷ�, Response�� ���ͷ� ���� ����°� �ƴϰ�");
		System.out.println("���� Ŭ������ ����� doFilter�޼��� �ȿ��� �� ��° �Ű����� (chain)�� ");
		System.out.println("doFilter��,�ķ� Request�� ó��, Response�� ó���� ���� ������. ");
		
		System.out.println("��) Mime Type�� ����������, Content-Length�� �ʹ� ���� �ʴ��� �Ǵ� gzipó���� �Ǿ��ִ���");
		
		
	}

	
	public void destroy(){
		System.out.println("���� ����...");
		
	}
}
