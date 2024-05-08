package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import dao.UserDAO;

import java.io.IOException;
import java.io.PrintWriter;

public class Auth extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO; // Dependency Injection of UserDAO

    public Auth() {
        super();
        // Initialize UserDAO
        this.userDAO = new UserDAO(); // You might want to use a DI framework for managing dependencies
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");

        out.print("login : " + login + "   pass: " + pass + "    ");

        try {
            // Authenticate user using UserDAO
            User user = userDAO.findByLogin(login);

            if (user != null && user.getPsw().equals(pass.trim())) {
                // Successful authentication
                HttpSession session = request.getSession(true);
                session.setAttribute("email", login);
                session.setAttribute("login", user.getLogin());
                session.setAttribute("name", user.getName());
                session.setAttribute("tel", user.getTel());
                session.setAttribute("psw", user.getPsw());
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                // Authentication failed
                out.print("User not found or wrong password");
            }
        } catch (Exception e) {
            throw new ServletException("Error authenticating user", e);
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
