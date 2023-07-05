package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Staff;
import util.StaffDBUtil;


@WebServlet("/StaffUpdateServlet")
public class StaffUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sid = request.getParameter("sid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = StaffDBUtil.updatestaff(sid, firstname, lastname, phone_number, email, address, password);
		
		if(isTrue == true) {
			
			List<Staff> staDetails = StaffDBUtil.getStaff();
			request.setAttribute("staDetails", staDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		
	}

}
