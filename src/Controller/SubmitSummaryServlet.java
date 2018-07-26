package Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Summary;
import Bean.TravelList;
import Service.JudgeService;
import Service.SubmitSummaryService;

/**
 * Servlet implementation class SubmitSummary
 */
@WebServlet("/SubmitSummaryServlet")
public class SubmitSummaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubmitSummaryServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		Summary ss = new Summary();
		ss.setUsername(request.getSession().getAttribute("username").toString());
		ss.setTno(Integer.parseInt(request.getParameter("tno")));
		ss.setRealleavetime(Date.valueOf(request.getParameter("realleavetime")));
		ss.setRealbacktime(Date.valueOf(request.getParameter("realbacktime")));
		ss.setRealexpense(Integer.parseInt(request.getParameter("realexpense")));
		ss.setSummary(request.getParameter("realsummary"));
		SubmitSummaryService su=new SubmitSummaryService();
		TravelList list=new TravelList();
		JudgeService oj = new JudgeService();
		list.setStatus(4);
		list.setTno(Integer.parseInt(request.getParameter("tno")));
		oj.oncejudgeservice3(list);
		if(!su.submitSummary(ss)) {
			response.sendRedirect("success.jsp");
		}
		else {
			response.sendRedirect("fail.jsp");
		}

	}

}
