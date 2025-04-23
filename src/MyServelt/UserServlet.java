package MyServelt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyClasses.UserUtility;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		String Lid=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String fname=request.getParameter("fname");
		String gen=request.getParameter("g");
		String strm=request.getParameter("stream");
		String email=request.getParameter("email");
		int cntno=Integer.parseInt(request.getParameter("cntno"));
		String DOB=request.getParameter("dob");
		
		String sql="insert into User(Login_Id,Password,Full_Name,Date_Of_Birth,Gender ,Stream,Email_Id,Contact_No) values('" +
				Lid+"','" +
				pwd+"','" +
				fname+"','" +
				DOB+"','"+				
			    gen+"','" +
				strm+"','" +
				email+"'," +
				cntno+
				")";
		System.out.println(sql);
		try {
			UserUtility.InsertUser(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
