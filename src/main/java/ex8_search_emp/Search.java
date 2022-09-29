package ex8_search_emp;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ex8_emp.Emp;

//http://localhost:8088/JSP/search_emp
@WebServlet("/col_select")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Search() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		int field = Integer.parseInt(request.getParameter("field"));
		String search_word = request.getParameter("search");
		ArrayList<Emp> list = dao.select(field, search_word);
		
		RequestDispatcher disaptcher = request.getRequestDispatcher("/ex8_db/_2.list.emp/list.jsp");
		request.setAttribute("list", list);
		disaptcher.forward(request, response);
	}
}
