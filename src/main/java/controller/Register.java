package controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transaction;
import model.Client;

import model.User;
import util.HibernateUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.io.IOException;

import dao.ClientDAO;

/**
 * Servlet implementation class Register
 */

public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ClientDAO userDao;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	public Register() {
		super();
		   userDao=new ClientDAO();
	} 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		  try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            Transaction transaction = (Transaction) session.beginTransaction();

	            // Perform database operations (e.g., save, update, query)

	            transaction.commit();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    
		
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
		Client u = new Client(name, login, email, tel, psw);
		userDao.create(u);
		  response.sendRedirect(request.getContextPath() + "/login.jsp");
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
