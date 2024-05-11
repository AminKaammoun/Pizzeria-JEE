package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.ClientDAO;
import model.Client;

/**
 * Servlet implementation class UpdateProfile
 */
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClientDAO clientDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateProfile() {
		super();
		this.clientDAO = new ClientDAO();
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
		// doGet(request, response);

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("tel");

		HttpSession session = request.getSession(false);
		String emailAdr = (String) session.getAttribute("email");

		System.out.println(email);
		Client c = clientDAO.findByLogin(emailAdr);
		

		c.setName(name);
		c.setEmail(email);
		c.setTel(phone);
		session.setAttribute("email", c.getEmail());
		session.setAttribute("login", c.getLogin());
		session.setAttribute("name", c.getName());
		session.setAttribute("tel", c.getTel());
		session.setAttribute("psw", c.getPsw());
		session.setAttribute("Address", c.getAdresse());
		
	    clientDAO.update(c);
	    response.sendRedirect(request.getContextPath() + "/my_account.jsp");

	}

}
