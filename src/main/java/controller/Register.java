package controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transaction;
import model.Role;
import model.User;
import util.HibernateUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;

import dao.UserDAO;

/**
 * Servlet implementation class Register
 */

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDAO userDao;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	public Register() {
		super();
		   userDao=new UserDAO();
	} 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String login = request.getParameter("login");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String psw = request.getParameter("pass");
		String confPsw = request.getParameter("confPass");

		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		org.hibernate.Transaction tx = null;
		//Role r = new Role("CLIENT");
		User u = new User(1,name, login, email, tel, psw);
		userDao.create(u);

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
