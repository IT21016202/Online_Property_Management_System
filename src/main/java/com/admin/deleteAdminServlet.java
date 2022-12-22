package com.admin;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteAdminServlet")
public class deleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		boolean isTrue;
		isTrue = adminDBUtil.deleteAdmin(id, password);
		
		if(isTrue == true) {
			RequestDispatcher disp = request.getRequestDispatcher("Login.jsp");
			disp.forward(request, response);
		}
		else{			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("AdminProfile.jsp");
			disp.forward(request, response);			
		}		
	}
}
