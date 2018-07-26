package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User;
import Service.SubmitSummaryService;

/**
 * Servlet implementation class ExamineSummaryServlet
 */
@WebServlet("/ExamineSummaryServlet")
public class ExamineSummaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamineSummaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=new User();
		user.setUsername(request.getSession().getAttribute("username").toString());
		SubmitSummaryService ss=new SubmitSummaryService();
		request.setAttribute("examinesummary",ss.examineSummary(user));
		RequestDispatcher dispatcher=
			     request.getRequestDispatcher("examinesummary.jsp");		
		dispatcher.forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
