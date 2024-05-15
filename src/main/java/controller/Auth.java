package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Client;
import model.Chef;
import dao.ClientDAO;
import dao.ChefDAO;
import java.io.IOException;
import java.io.PrintWriter;

public class Auth extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClientDAO clientDAO; 
    private ChefDAO chefDAO;
    
    public Auth() {
        super();
        // Initialize DAO instances
        this.clientDAO = new ClientDAO(); 
        this.chefDAO = new ChefDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String login = request.getParameter("login");
            String pass = request.getParameter("pass");

            // Authenticate user
            Client client = clientDAO.findByLogin(login);
            Chef chef = chefDAO.findByLogin(login);

            if (client != null && client.getPsw().equals(pass.trim())) {
                // Successful client authentication
                HttpSession session = request.getSession(true);
                setClientSessionAttributes(session, client);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else if (chef != null && chef.getPsw().equals(pass.trim())) {
                // Successful chef authentication
                HttpSession session = request.getSession(true);
                setChefSessionAttributes(session, chef);
                response.sendRedirect(request.getContextPath() + "/order_list.jsp");
            } else {
                // Invalid credentials
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
            }
        } finally {
            out.close(); // Close PrintWriter
        }
    }

    private void setClientSessionAttributes(HttpSession session, Client client) {
        session.setAttribute("email", client.getEmail());
        session.setAttribute("login", client.getLogin());
        session.setAttribute("name", client.getName());
        session.setAttribute("tel", client.getTel());
        session.setAttribute("psw", client.getPsw());
        session.setAttribute("Address", client.getAdresse());
    }

    private void setChefSessionAttributes(HttpSession session, Chef chef) {
        session.setAttribute("email", chef.getEmail());
        session.setAttribute("login", chef.getLogin());
        session.setAttribute("name", chef.getName());
        session.setAttribute("psw", chef.getPsw());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
