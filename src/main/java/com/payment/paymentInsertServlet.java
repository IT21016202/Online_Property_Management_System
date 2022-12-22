package com.payment;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/paymentInsertServlet")
public class paymentInsertServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardType = request.getParameter("cardType");
		String name = request.getParameter("cardName");
		String number = request.getParameter("cardNumber");
		String expireDate = request.getParameter("expDate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue = paymentDBUtil.insertPayment(cardType, name, number, expireDate, cvv);
		
		if(isTrue == true) {
			RequestDispatcher disp1 = request.getRequestDispatcher("PaySuccess.jsp");
			disp1.forward(request, response);
		}
		else {
			RequestDispatcher disp2 = request.getRequestDispatcher("PayUnSuccess.jsp");
			disp2.forward(request, response);
		}
		
	}
	

}
