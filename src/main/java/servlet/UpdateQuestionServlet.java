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

@WebServlet("/UpdateQuestionServlet")
public class UpdateQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String qid = request.getParameter("qid");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		
		boolean isTrue;
		
		isTrue = QuestionDBUtil.updatequestion(qid, question, answer);
		
		if(isTrue == true) {
			List<Question> quetionS = QuestionDBUtil.getQuestion();
			request.setAttribute("questionS", quetionS);
			
			RequestDispatcher dis = request.getRequestDispatcher("managequestion.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("managequestion.jsp");
			dis2.forward(request, response);
		}
		
	}

}
