package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.ExamineApplicationService;

/**
 * Servlet implementation class Examine1ApplicationServlet
 */
@WebServlet("/Examine1ApplicationServlet")
public class Examine1ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Examine1ApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ExamineApplicationService ex=new ExamineApplicationService();
		String username=request.getSession().getAttribute("username").toString();
		request.setAttribute("examineapplication",ex.examineAllList(0,username));
		RequestDispatcher dispatcher=
			     request.getRequestDispatcher("examine1application.jsp");		
		dispatcher.forward(request, response);
	}

}
