package _4.check;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_4.check_values/choiceFruit2")
public class ChoiceFruitServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ChoiceFruitServlet3() {
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
		
		  System.out.println("ó������ ������ ����2 " + request.getParameter("fruit"));
	      String[] f = request.getParameterValues("fruit");
	      
	      out.println("<html><head><style>");
	      out.println("body{background:black;}");
	      out.println("table{background:yellow; margin:0 auto;top:30% "
	    		  	+ "position:relative}");
			out.println("td{color:red; font-size:20px;text-align:center; "
					+	 "border:1px solid black;height:2em;width:200px}");
			out.println("</style></head>");
			out.println("<body><table>,tr>");
		
		for(String fruit : f ) 
			out.println("<td>" + fruit + "</td>");
			
		out.println("</tr><tr>");	
		
		for(String fruit : f ) 
			out.println("<td><img width=128 height=128 src='../../image/" + fruit + "'></td>");
		
		out.println("</tr></table></body></html>");
		out.close();
		
	}
}
