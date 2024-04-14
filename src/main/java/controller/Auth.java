package controller;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import util.HibernateUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

/**
 * Servlet implementation class Auth
 */
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Auth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");
        
        out.print("login : "+ login + "   pass: "+pass +"    ");

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        org.hibernate.Transaction tx = null;
        try {
            tx = session.beginTransaction();

            // Constructing the HQL query to fetch the user based on the email (login)
            String hql = "FROM User WHERE email = :login";
            Query query = session.createQuery(hql);
            query.setParameter("login", login);
            User user = (User) query.uniqueResult(); // Assuming there's only one user with the given email

            // If user exists
            if (user != null) {
                // Additional check for password
                if (user.getPsw().equals(pass.trim())) {
                    HttpSession sess = request.getSession(true);
                    sess.setAttribute("email", login);
                    sess.setAttribute("login", user.getLogin());
                    sess.setAttribute("name", user.getName());
                    sess.setAttribute("tel", user.getTel());
                    sess.setAttribute("psw", user.getPsw());
                    response.sendRedirect(request.getContextPath() + "/index.jsp");
                    tx.commit();
                } else {
                    out.print("Wrong password");
                }
            } else {
                out.print("User not found");
            }
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
