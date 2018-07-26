package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Reimburse;
import Bean.Summary;
import Service.ApplicationReimburseService;
import Service.SubmitSummaryService;
import Service.UploadService;

/**
 * Servlet implementation class ApplicationReimburseServlet
 */
@WebServlet("/ApplicationReimburseServlet")
@MultipartConfig(maxFileSize = 30*1024*1024)
public class ApplicationReimburseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationReimburseServlet() {
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
		Reimburse re=new Reimburse();
		re.setUsername(request.getSession().getAttribute("username").toString());
		re.setInfo(request.getParameter("info"));
		re.setSno(Integer.parseInt(request.getParameter("sno")));
		re.setCarmoney(Integer.parseInt(request.getParameter("carmoney")));
		re.setHotelmoney(Integer.parseInt(request.getParameter("hotelmoney")));
		re.setFoodmoney(Integer.parseInt(request.getParameter("foodmoney")));
		Part part1=request.getPart("carimg");
		Part part2=request.getPart("hotelimg");
		Part part3=request.getPart("foodimg");
		String root =request.getServletContext().getRealPath("./upload");
		UploadService up=new UploadService();
		re.setCarimg(up.upload(part1, root,0));
		re.setHotelimg(up.upload(part2, root,1));
		re.setFoodimg(up.upload(part3, root,2));
		
		SubmitSummaryService ss=new SubmitSummaryService();
		Summary s=new Summary();
		s.setStatus(2);
		s.setSno(Integer.parseInt(request.getParameter("sno")));
		ss.judge2(s);
		ApplicationReimburseService ar=new ApplicationReimburseService();
		if (!ar.applicationReimburse(re)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("fail.jsp");
		}
		
			
		
	}

}
