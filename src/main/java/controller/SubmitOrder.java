package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import main.CartItem;
import model.Commande;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Map;

import dao.ClientDAO;
import dao.CommandeDAO;
import dao.CommandePizzaDAO;
import dao.PizzaDAO;
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
      
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String desc = request.getParameter("enquiry");
        String phone = request.getParameter("phone");
        double total = Double.parseDouble(request.getParameter("total"));

        System.out.println("Total amount received: " + total);
        
        Commande commande = new Commande(total, LocalDate.now(), null, clientDAO.findByLogin(email));
        commandeDAO.create(commande); 

      
        HttpSession session = request.getSession(false);
        Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
       
        for (Map.Entry<String, CartItem> entry : cart.entrySet()) {
            String itemId = entry.getKey();
            CartItem cartItem = entry.getValue();

            int pizzaId = Integer.parseInt(itemId);
            Pizza pizza = pizzaDAO.findById(pizzaId);
       
      
            CommandePizza commandePizza = new CommandePizza(commande, pizza, cartItem.getQuantity(), cartItem.getSize(), cartItem.getItemPrice());
            commandePizzaDAO.create(commandePizza); 
        }

        session.removeAttribute("cart");

       
        response.sendRedirect("cart.jsp");
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
