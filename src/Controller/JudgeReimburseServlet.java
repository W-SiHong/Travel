package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Reimburse;

import Service.ExamineReimburseService;
/**
 * Servlet implementation class JudgeReimburseServlet
 */
@WebServlet("/JudgeReimburseServlet")
public class JudgeReimburseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JudgeReimburseServlet() {
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
		int rno = Integer.parseInt(request.getParameter("rno"));
	ExamineReimburseService ss=new ExamineReimburseService();
		Reimburse s=new Reimburse();
		s.setReason(request.getParameter("reason"));
		s.setRno(rno);
		if (status.equals("通过")) {
			s.setStatus(1);
			if (ss.judge(s)) {
				response.sendRedirect("ExamineReimburseServlet");
			} else {
				response.sendRedirect("fail.jsp");
			}
		} else if (status.equals("不通过")) {
			s.setStatus(-1);
			if (ss.judge(s)) {
				response.sendRedirect("ExamineReimburseServlet");
			} else {
				response.sendRedirect("fail.jsp");
			}
		} else {
			response.sendRedirect("ExamineReimburseServlet");
		}
	}

}
