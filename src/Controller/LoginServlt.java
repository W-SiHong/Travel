package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Bean.User;
import Service.LoginService;

/**
 * Servlet implementation class login
 */
@WebServlet("/LoginServlt")
public class LoginServlt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlt() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User u = new User();
		u.setUsername(username);
		u.setPassword(password);
		LoginService ls = new LoginService();
		if (ls.validate(u) == null) {
			response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("user", ls.validate(u));
			User user = (User) request.getAttribute("user");
			request.getSession().setAttribute("username", username);
			switch (user.getPosition()) {
			case "普通员工":
				RequestDispatcher dispatcher = request.getRequestDispatcher("staff.jsp");
				dispatcher.forward(request, response);
				break;
			case "部门经理":
				RequestDispatcher dispatcher1 = request.getRequestDispatcher("division_manager.jsp");
				dispatcher1.forward(request, response);
				break;
			case "成本控制专员":
				RequestDispatcher dispatcher2 = request.getRequestDispatcher("controlling_officer.jsp");
				dispatcher2.forward(request, response);
				break;
			case "总经理":
				RequestDispatcher dispatcher3 = request.getRequestDispatcher("general_manager.jsp");
				dispatcher3.forward(request, response);
				break;
			default:
				break;
			}

		}

	}
}
