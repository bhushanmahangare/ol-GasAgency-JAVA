package MyServelt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyClasses.QuestionUtility;

/**
 * Servlet implementation class AddQuestion
 */
@WebServlet("/AddQuestion")
public class AddQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
		
		int Sub_No=Integer.parseInt(request.getParameter("subject"));
		String Question=request.getParameter("que");
		String op1=request.getParameter("op1");
		String op2=request.getParameter("op2");
		String op3=request.getParameter("op3");
		String op4=request.getParameter("op4");
		String correctAns=request.getParameter("correctAns");
		int Level_Id=Integer.parseInt(request.getParameter("level"));
		String ImageName="image1.jpeg";
		
		
		String sql="insert into Question(Question,Image,Op1,Op2,Op3,Op4,Correct_Ans,Level_Id,Sub_No) values('"
										   +Question+"','"+ImageName+"','"+op1+"','"+op2+"','"+op3+"','"+op4+"','"+correctAns+"',"+Level_Id+","+Sub_No+")";
		QuestionUtility.InsertQuestion(sql);
		response.addHeader("success","Question Added Successfully");
		response.sendRedirect("AddQuestion.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
