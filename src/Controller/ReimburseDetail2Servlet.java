package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.ExamineReimburseService;

/**
 * Servlet implementation class ReimburseDetail2Servlet
 */
@WebServlet("/ReimburseDetail2Servlet")
public class ReimburseDetail2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReimburseDetail2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int rno=Integer.parseInt(request.getParameter("rno"));
		ExamineReimburseService es=new ExamineReimburseService();
		request.setAttribute("reimbursedetail",es.detailReimburse(rno));
		RequestDispatcher dispatcher=
			     request.getRequestDispatcher("reimbursedetail2.jsp");		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
