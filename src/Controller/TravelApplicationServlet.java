package Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.TravelList;

import Service.TravelApplicationService;

/**
 * Servlet implementation class addlistServlet
 */
@WebServlet("/TravelApplicationServlet")
@MultipartConfig(maxFileSize = 30*1024*1024)
public class TravelApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TravelApplicationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@SuppressWarnings("resource")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		TravelList list = new TravelList();
		list.setPurposes(request.getParameter("purposes"));
		String s=request.getParameter("expense");
			list.setExpense(Integer.parseInt(s));
		list.setDestination(request.getParameter("destination"));
		list.setLeavetime(Date.valueOf(request.getParameter("leavetime")));
		list.setBacktime(Date.valueOf(request.getParameter("backtime")));
		list.setType(request.getParameter("type"));
		list.setPlan(request.getParameter("plan"));
		list .setNum(request.getParameter("num"));
		list .setTelphone(request.getParameter("telphone"));
		Part part = request.getPart("img");
		String name = part.getHeader("content-disposition");
		String str = name.substring(name.lastIndexOf("."), name.length() - 1);
			String root =request.getServletContext().getRealPath("./upload");
			java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
			String img= "\\" +currentDate.getTime() + str;
			String filename = root + img;
			part.write(filename);
			list.setImg(img);
		list.setUsername(request.getSession().getAttribute("username").toString());
		TravelApplicationService ta = new TravelApplicationService();
		if (!ta.travelapplication(list)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}

	}

}
