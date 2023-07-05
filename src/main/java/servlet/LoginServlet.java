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

import model.Customer;
import util.CustomerDBUtil;





@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isTrue = false;
		
		isTrue = CustomerDBUtil.validate(email, password);
		
		if(isTrue == true) {
			List<Customer> cusDetails = CustomerDBUtil.getCustomer();
			request.setAttribute("cusDetails", cusDetails); 
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		} else {
		//	RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			//dis.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
