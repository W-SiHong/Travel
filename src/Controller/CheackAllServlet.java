package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.PersonStatusService;

/**
 * Servlet implementation class CheackAllServlet
 */
@WebServlet("/CheackAllServlet")
public class CheackAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheackAllServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PersonStatusService pr=new PersonStatusService();
		String username=request.getSession().getAttribute("username").toString();
		request.setAttribute("cheakapplicationstatus",pr.cheakApplicationStatus(username));
		request.setAttribute("cheaksummarystatus",pr.cheakSummaryStatus(username));
		request.setAttribute("cheakreimbursestatus",pr.cheakReimburseStatus(username));
		RequestDispatcher dispatcher=
			     request.getRequestDispatcher("cheakallstatus.jsp");		
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
