package MyServelt;

import java.awt.image.ConvolveOp;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.xml.ws.Response;

import MyClasses.QuestionUtility;

/**
 * Servlet implementation class QuestionForm
 */
@WebServlet("/QuestionForm")
public class QuestionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionForm() {
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
		 
		    ArrayList<Integer> arrayOfQuestsNo =  new ArrayList<Integer>();
			ArrayList<String> arrayOfuserSelectedAns =  new ArrayList<String>();
			
			for(int i=1;i<=QuestionUtility.totalQuseNo;i++)
			{
				int qid=Integer.parseInt(request.getParameter("questid"+i));
				String userSelectedAnswer=request.getParameter(Integer.toString(i));
				System.out.println("startdoPost"+qid); 
				arrayOfQuestsNo.add(qid);
				arrayOfuserSelectedAns.add(userSelectedAnswer);
				
			}
			System.out.println("doPost"); 
		QuestionUtility.GetCorrectAnswerCount(arrayOfQuestsNo,arrayOfuserSelectedAns);
		/*out.println("<p align=right><a href=Home.html>Log Out</a></p>");
		out.println("<center>");
		out.println("<table border=1>");
		out.println("<tr><td>Total Question Attempted</td><td><label id=lblTQA style=length: 50px></label></td></tr>");
		out.println("<tr><td>Total Correct Answer</td><td><label id=lblTCA style=length: 50px></label></td></tr>");
		out.println("<tr><td>Total Wrong Answer</td><td><label id=lblTWA style=length: 50px></label></td></tr>");
		out.println("<tr><td>Total Time</td><td><label id=lblTT style=length: 50px></label></td></tr>");
		out.println("<tr><td>Result</td><td><label id=lblRES style=length: 50px></label></td></tr>");
		out.println("<tr><td><p align=center><a href=feedback.jsp>Feedback</a></p></td></tr>");
		out.println("</table>");
		out.println("</center>");*/
		
		int ttw = QuestionUtility.totalQuseNo - QuestionUtility.userCorrectAns;
		
		request.setAttribute("lblTQA",QuestionUtility.totalQuseNo);
		request.setAttribute("lblTCA",QuestionUtility.userCorrectAns);
		request.setAttribute("lblTWA",ttw);
		request.setAttribute("lblTT","30");
		request.setAttribute("lblRES","Pass");			
		
		getServletContext().getRequestDispatcher("/Result.jsp").forward(request, response);

				
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

}
