package model;

public class Question {

		private int qid;
		private String question;
		private String answer;
		
		public Question(int qid, String question, String answer) {
			super();
			this.qid = qid;
			this.question = question;
			this.answer = answer;
		}

		public int getQid() {
			return qid;
		}

		public String getQuestion() {
			return question;
		}

		public String getAnswer() {
			return answer;
		}

}
