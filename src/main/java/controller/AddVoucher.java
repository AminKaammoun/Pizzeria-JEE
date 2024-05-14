package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.time.LocalDate;

import model.Client;
import model.Voucher;
import dao.VoucherDAO;
import dao.ClientDAO;
import dao.PizzaDAO;

/**
 * Servlet implementation class AddVoucher
 */
public class AddVoucher extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VoucherDAO voucherDAO;
	private ClientDAO clientDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddVoucher() {
		super();
		clientDAO = new ClientDAO();
		voucherDAO = new VoucherDAO();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String redeemId = request.getParameter("redeemId");
		HttpSession sess = request.getSession(false);
		String username = (String) sess.getAttribute("email");
		System.out.print(username);

		Voucher voucher = new Voucher();
		Client client = clientDAO.findByLogin(username);
		voucher.setClient(client);
		voucher.setEndDate(LocalDate.now());
		voucher.setStatus(0);

		switch (redeemId) {
		case "1":
			if (client.getPtDeFidelite() >= 20) {
				voucher.setPercentage(5);
				voucherDAO.create(voucher);
				client.setPtDeFidelite(client.getPtDeFidelite() - 20);
				clientDAO.update(client);
				request.setAttribute("alertMessage", "Voucher created successfully!");
			} else {
				request.setAttribute("alertMessage", null);
			}
			break;
		case "2":
			if (client.getPtDeFidelite() >= 35) {
				voucher.setPercentage(10);
				voucherDAO.create(voucher);
				client.setPtDeFidelite(client.getPtDeFidelite() - 35);
				clientDAO.update(client);
				request.setAttribute("alertMessage", "Voucher created successfully!");
			} else {
				request.setAttribute("alertMessage", null);
			}
			break;
		case "3":
			if (client.getPtDeFidelite() >= 50) {
				voucher.setPercentage(15);
				voucherDAO.create(voucher);
				client.setPtDeFidelite(client.getPtDeFidelite() - 50);
				clientDAO.update(client);
				request.setAttribute("alertMessage", "Voucher created successfully!");
			} else {
				request.setAttribute("alertMessage", null);
			}
			break;
		case "4":
			if (client.getPtDeFidelite() >= 80) {
				voucher.setPercentage(25);
				voucherDAO.create(voucher);
				client.setPtDeFidelite(client.getPtDeFidelite() - 80);
				clientDAO.update(client);
				request.setAttribute("alertMessage", "Voucher created successfully!");
			} else {
				request.setAttribute("alertMessage", null);
			}
			break;

		case "5":
			if (client.getPtDeFidelite() >= 140) {
				voucher.setPercentage(50);
				voucherDAO.create(voucher);
				client.setPtDeFidelite(client.getPtDeFidelite() - 140);
				clientDAO.update(client);
				request.setAttribute("alertMessage", "Voucher created successfully!");
			} else {
				request.setAttribute("alertMessage", null);
			}
			break;

		}

		response.sendRedirect(request.getContextPath() + "/my_vouchers.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

	}

}
