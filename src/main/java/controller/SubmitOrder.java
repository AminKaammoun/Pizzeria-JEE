package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Commande;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Map;

import dao.ClientDAO;
import dao.CommandeDAO;
import dao.CommandePizzaDAO;
import dao.PizzaDAO;

import model.CartItem;
import model.Client;
import model.Pizza;
import model.CommandePizza;


/**
 * Servlet implementation class SubmitOrder
 */
public class SubmitOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ClientDAO clientDAO ;
	private CommandeDAO commandeDAO ;
	private CommandePizzaDAO commandePizzaDAO;
	private PizzaDAO pizzaDAO;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitOrder() {
        super();
        clientDAO = new ClientDAO();
        commandeDAO = new CommandeDAO();
        commandePizzaDAO = new CommandePizzaDAO();
        pizzaDAO = new PizzaDAO();
        
        }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String desc = request.getParameter("enquiry");
        String phone = request.getParameter("phone");

        // Create a new Commande (Order)
        Commande commande = new Commande(99, LocalDate.now(), LocalDate.now(), clientDAO.findByLogin(email));
        commandeDAO.create(commande); 

        // Retrieve the cart items from session
        HttpSession session = request.getSession(false);
        Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
       
        // Process each cart item
        for (Map.Entry<String, CartItem> entry : cart.entrySet()) {
            String itemId = entry.getKey();
            CartItem cartItem = entry.getValue();

            // Find the Pizza by itemId and make sure it's persisted
            int pizzaId = Integer.parseInt(itemId);
            Pizza pizza = pizzaDAO.findById(pizzaId);
       
      
            // Create CommandePizza and associate with Commande and Pizza
            CommandePizza commandePizza = new CommandePizza(commande, pizza, cartItem.getQuantity());
            commandePizzaDAO.create(commandePizza); // Persist the CommandePizza
        }

        // Optionally, clear the cart from session after processing
        session.removeAttribute("cart");

        // Redirect to a success page or provide feedback
        //response.sendRedirect("order-success.jsp"); // Replace with your success page URL
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
