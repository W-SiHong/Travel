package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Summary;
import Service.PersonStatusService;
import Service.SubmitSummaryService;

/**
 * Servlet implementation class SummaryDetailServlet
 */
@WebServlet("/SummaryDetailServlet")
public class SummaryDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SummaryDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sno = Integer.parseInt(request.getParameter("sno"));
		SubmitSummaryService ss = new SubmitSummaryService();
		PersonStatusService p = new PersonStatusService();
		request.setAttribute("summarydetail", ss.detailSummary(sno));
		Summary s = (Summary) request.getAttribute("summarydetail");
		request.setAttribute("applicationdetail", p.cheackApplication( s.getTno()));
		RequestDispatcher dispatcher = request.getRequestDispatcher("summarydetail.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
