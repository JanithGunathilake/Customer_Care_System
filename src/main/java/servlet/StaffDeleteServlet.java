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


@WebServlet("/StaffDeleteServlet")
public class StaffDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String sid = request.getParameter("sid");
		
		boolean isTrue = StaffDBUtil.deletestaff(sid);
		
		if(isTrue = true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Successfully Deleted... Back to DashBoard...!!!');");
			out.println("location='admindashboard.jsp'");
			out.println("</script>");
		} else {
			List<Staff> staDetails = StaffDBUtil.getStaff();
			request.setAttribute("staDetails", staDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("admindashboard.jsp");
			dis.forward(request, response);
		}
		
	}

}
