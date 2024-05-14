package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.VoucherDAO;
import model.Voucher;

/**
 * Servlet implementation class UseVoucher
 */
public class UseVoucher extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VoucherDAO voucherDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UseVoucher() {
        super();
        this.voucherDAO = new VoucherDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idVoucher = request.getParameter("voucherId");
		Voucher voucher = voucherDAO.findById(Integer.parseInt(idVoucher));
		
		voucher.setStatus(1);
		voucherDAO.update(voucher);
		response.sendRedirect(request.getContextPath() + "/my_vouchers.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
