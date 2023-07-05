package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.Staff;
import util.StaffDBUtil;


@WebServlet("/StaffLoginServlet")
public class StaffLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isTrue = false;
		
		isTrue = StaffDBUtil.validate(email, password);
		
		if(isTrue == true) {
			List<Staff> staDetails = StaffDBUtil.getStaff();
			request.setAttribute("staDetails", staDetails); 
			
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='stafflogin.jsp'");
			out.println("</script>");
		
		}
	}
}