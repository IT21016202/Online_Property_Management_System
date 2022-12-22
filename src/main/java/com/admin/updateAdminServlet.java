package com.admin;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateAdminServlet")
public class updateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = adminDBUtil.updateAdmin(id, fName, lName, username, address, gender, dob, phone, email, password);
		
		if(isTrue == true) {
			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("AdminProfile.jsp");
			disp.forward(request, response);
		}
		else {
			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher disp = request.getRequestDispatcher("AdminProfile.jsp");
			disp.forward(request, response);
		}
	}
}
