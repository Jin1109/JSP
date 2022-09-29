package _4.check;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_4.check_values/choiceFruit")
public class ChoiceFruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ChoiceFruitServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		/*
		 1. getParameterValues()
		 		��) fruit=apple.png&fruit=grape.png&fruit=strawberry.png&fruit=water-melon.png
		 		 	�ϳ��� �ĸ����� �̸�(fruit)���� ���� ���� �� ���۵Ǿ� �� ��쿡 ����ϴ� �޼ҵ�
		 		 	üũ �ڽ��� �̸��� ���������� fruit�� �����Ǿ� �����Ƿ� �� üũ �ڽ��� ������
		 		 	���� �̹��� ���ϸ��� �����Ͽ� �Ķ���� ������ ���� �̹��� �̸��� ���۵ǵ��� �ϰ� �ֽ��ϴ�.
		 2. getParamter() : �ϳ��� �Ķ���ͷ� �ϳ��� ���� ���� ��� ����ϴ� �޼ҵ�
		 		 	�ϳ��� �ĸ����� �̸�(fruit)���� ���� ���� �� ���۵Ǿ� �� ��쿡 �� �޼��带 ����ϸ� 
		 		 	 ó���� ������ ���� �� �� �ֽ��ϴ�.
		 		 	 ��) fruit=apple.png&fruit=grape.png&fruit=starawberry.png&fruit=water-melong.png
		 		 	     fruit=apple.png���� ���� �����ɴϴ�.
		 */
		
		System.out.println("ó������ ������ ���� " + request.getParameter("fruit"));
	      String[] f = request.getParameterValues("fruit");
		
		for(String fruit : f ) {
			System.out.println(fruit);
		}
	}
}
