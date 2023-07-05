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

import model.Question;
import util.QuestionDBUtil;

@WebServlet("/DeleteQuestionServlet")
public class DeleteQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("qid");
		
		boolean isTrue = QuestionDBUtil.deletequestion(id);
		
		if(isTrue = true) {
			List<Question> questionS = QuestionDBUtil.getQuestion();
			request.setAttribute("questionS", questionS);
			
			RequestDispatcher dis = request.getRequestDispatcher("managequestion.jsp");
			dis.forward(request, response);
			
		
		} else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccess... Back to DashBoard...!!!');");
			out.println("location='admindashboard.jsp'");
			out.println("</script>");
			
		}
		
	}

}
