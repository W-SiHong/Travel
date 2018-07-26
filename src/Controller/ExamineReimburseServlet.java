package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User;
import Service.ExamineReimburseService;

/**
 * Servlet implementation class ExamineReimburseServlet
 */
@WebServlet("/ExamineReimburseServlet")
public class ExamineReimburseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExamineReimburseServlet() {
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
		
		ExamineReimburseService er=new ExamineReimburseService();
		request.setAttribute("examinereimburse",er.examineReimburse(user));
		RequestDispatcher dispatcher=
			     request.getRequestDispatcher("examinereimburse.jsp");		
		dispatcher.forward(request, response);	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
