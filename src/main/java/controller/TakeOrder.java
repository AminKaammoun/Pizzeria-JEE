package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import main.OrderStatus;
import model.Commande;

import java.io.IOException;

import dao.CommandeDAO;

/**
 * Servlet implementation class TakeOrder
 */
public class TakeOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private CommandeDAO commandeDAO;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TakeOrder() {
        super();
        commandeDAO = new CommandeDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderId = request.getParameter("orderId");
		Commande c = commandeDAO.findById(Integer.parseInt(orderId));
		c.setStatus(OrderStatus.DELIVERING);
		commandeDAO.update(c);
		 response.sendRedirect(request.getContextPath() + "/readyOrderLivreur.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
