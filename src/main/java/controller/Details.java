package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.math.BigDecimal;
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
	private Pizza pizza;
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
		 
		 pizza = pizzaDao.findById(id);
		 double itemPrice = pizza.getSizeToPrice().get(size).doubleValue();
		
	
		 HttpSession session = request.getSession(true); 
		 
		 
		 Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
		    if (cart == null) {
		        cart = new HashMap<>();
		        session.setAttribute("cart", cart);
		    }

		    
		    CartItem cartItem = new CartItem(pizzaDao.findById(id),itemPrice,quantity,size);
		    cart.put(id+"", cartItem);
		    
	

		    // Redirect to a page confirming the item was added to the cart
		    response.sendRedirect("cart.jsp");
	} 

}
