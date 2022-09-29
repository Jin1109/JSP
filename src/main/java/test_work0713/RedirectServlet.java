package test_work0713;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/test_work0713/send")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public RedirectServlet() {
		super();
	}
	
	/* 페이지 이동 방버
	 Dispatcher 방식
	  - 클라이언트로부터 요청 받은 Servlet 프로그램이 응답을 하지 않고
	    다른 서블릿이나 JSP 페이지 등에 요청을 전달합니다.(요청 재지정)
	  - 이 방식으로 이동하면 주소 표시줄의 주소가 변경되지 않습니다.
	  - request 영역을 공유하게 됩니다.
	  - 방법 : RequestDispatcher에서 제공하는 메소드(forward())를 사용하여 요청을 제지정합니다.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
					throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String jumin = request.getParameter("jumin1") + "-" + request.getParameter("jumin2");
		String email = request.getParameter("email") + "@" + request.getParameter("domain"); 
		String gender = request.getParameter("gender");		
		String[] hobby = request.getParameterValues("hobby");
		String hobbys = Arrays.toString(hobby);
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("jumin", jumin);
		request.setAttribute("email", email);
		request.setAttribute("gender", gender);
		request.setAttribute("habbys", hobbys);
		request.setAttribute("post1", post1);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);
	    
		RequestDispatcher dispatcher = request.getRequestDispatcher("send.jsp");
				
		dispatcher.forward(request, response);
	   }

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException{
	      request.setCharacterEncoding("euc-kr");
	      doGet(request, response);
	   }

}
