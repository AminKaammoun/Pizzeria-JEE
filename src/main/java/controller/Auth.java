package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Client;


import java.io.IOException;
import java.io.PrintWriter;



import dao.ClientDAO;

public class Auth extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClientDAO userDAO; // Dependency Injection of UserDAO

    public Auth() {
        super();
        // Initialize UserDAO
        this.userDAO = new ClientDAO(); // You might want to use a DI framework for managing dependencies
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String login = request.getParameter("login");
        String pass = request.getParameter("pass");

        out.print("login : " + login + "   pass: " + pass + "    ");

        try {
            // Authenticate user using UserDAO
            Client user = userDAO.findByLogin(login);

            if (user != null && user.getPsw().equals(pass.trim())) {
                // Successful authentication
                HttpSession session = request.getSession(true);
                session.setAttribute("email", user.getEmail());
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
            // Handle authentication error
            out.print("Error authenticating user: " + e.getMessage());
            throw new ServletException("Error authenticating user", e);
        } finally {
            out.close(); // Close PrintWriter
        }
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
