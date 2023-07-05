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


@WebServlet("/StaffManageServlet")
public class StaffManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		StaffDBUtil.getStaff();
		try {
			List<Staff> staDetails = StaffDBUtil.getStaff();
			request.setAttribute("staDetails", staDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("staffmanage.jsp");
		dis.forward(request, response);
		
		}
	}
	


