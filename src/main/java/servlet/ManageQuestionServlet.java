package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Question;
import util.QuestionDBUtil;


@WebServlet("/ManageQuestionServlet")
public class ManageQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		QuestionDBUtil.getQuestion();
		try {
			List<Question> questionS = QuestionDBUtil.getQuestion();
			request.setAttribute("questionS", questionS);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("managequestion.jsp");
		dis.forward(request, response);
		
	}

}
