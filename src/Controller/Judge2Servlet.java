package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.TravelList;
import Service.JudgeService;

/**
 * Servlet implementation class oncejudgeServlet2
 */
@WebServlet("/Judge2Servlet")
public class Judge2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Judge2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String status = request.getParameter("status");
		int tno = Integer.parseInt(request.getParameter("tno"));
		JudgeService oj = new JudgeService();
		TravelList list=new TravelList();
		list.setReason(request.getParameter("reason"));
		list.setTno(tno);
		if (status.equals("通过")) {
			list.setStatus(2);
			if (oj.oncejudgeservice2(list)) {
				response.sendRedirect("Examine2ApplicationServlet");
			} else {
				response.sendRedirect("fail.jsp");
			}
		} else if (status.equals("不通过")) {
			list.setStatus(-1);
			if (oj.oncejudgeservice2(list)) {
				response.sendRedirect("Examine2ApplicationServlet");
			} else {
				response.sendRedirect("fail.jsp");
			}
		} else {
			response.sendRedirect("Examine2ApplicationServlet");
		}
	}


}
