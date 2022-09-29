package ex2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ex2_jsp/_2.include_ex/login_ok")
public class Login extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   public Login() {
      super();
   }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) 
               throws ServletException, IOException {
	   //응답하는 데이터 xk입이 html타입이고
	   //charset=euc-kr로 지정하면서 응답되는 데이터들의 한글 처리를 한 부분입니다.
	  response.setContentType("text/html;charset=euc-kr");
	  	  
	  //파라미터 id와 passwd의 값 가져오기
      String id = request.getParameter("id");
      
      
      //파라미터에 'id'라는 이름이 없는 경우
      //예)http://locaalhost:8088/JSP/ex2_jsp/_2.include_ex/login?passwd=1234
      if(id==null) {
    	  System.out.println("null입니다.");
      }
      
      //파라미터 'id' 의 값이 없는 경우
      //예)http://locaalhost:8088/JSP/ex2_jsp/_2.include_ex/login?id=passwd=1234
      if(id!= null && id.equals("")) {
    	  System.out.println("공백입니다.");
      }
      
      
    	  //세션 생성
    	  HttpSession session = request.getSession();
    	  //세션 객체에 id라는 속성으로 id값을 저장
    	  session.setAttribute("id", id);
    	  
    	  response.sendRedirect("template.jsp");
      }
      
}


