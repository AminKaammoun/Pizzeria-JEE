package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import model.Pizza;
import model.CartItem;

import dao.PizzaDAO;

/**
 * Servlet implementation class Details
 */
public class Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private PizzaDAO pizzaDao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Details() {
        super();
        pizzaDao = new PizzaDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	    
		
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String size = request.getParameter("size");
		 int id = Integer.parseInt(request.getParameter("id"));
		
		 double itemPrice = Double.parseDouble(request.getParameter("price"));
		
	
		// System.out.println("id : " + id);
		 //System.out.println("itemPrice : " + itemPrice);
		// System.out.println("size : " + size);
		// System.out.println("quantity : " + quantity);
		 HttpSession session = request.getSession(true); 
		 
		 
		 Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		    if (cart == null) {
		        cart = new HashMap<>();
		        session.setAttribute("cart", cart);
		    }

		    
		    CartItem cartItem = new CartItem(pizzaDao.findById(id),itemPrice,quantity,size);
		    cart.put(id+"", cartItem);
		    
		    if (cart != null) {
		        // Iterate over map entries using entrySet()
		        for (Map.Entry<String, CartItem> entry : cart.entrySet()) {
		            String itemId = entry.getKey();       // Get the key (item ID)
		            CartItem cartItm = entry.getValue(); // Get the value (CartItem)

		            // Access and process the cart item
		            System.out.println("Item ID: " + itemId);
		            System.out.println("Cart Item: " + cartItm);
		            
		            // You can access specific properties of CartItem if needed
		            System.out.println("Quantity: " + cartItm.getQuantity());
		            System.out.println("Item Price: " + cartItm.getItemPrice());
		            System.out.println("Size: " + cartItm.getSize());

		            // Perform other operations as needed
		        }
		    } else {
		        System.out.println("Cart is empty or not initialized.");
		    }

		    // Redirect to a page confirming the item was added to the cart
		    response.sendRedirect("cart.jsp");
	}

}
