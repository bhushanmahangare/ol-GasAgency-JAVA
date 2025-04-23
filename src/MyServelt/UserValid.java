package MyServelt;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MyClasses.AdminUtility;

/**
 * Servlet implementation class UserValid
 */
@WebServlet("/UserValid")
public class UserValid extends HttpServlet {
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

		String adminnm=request.getParameter("login");
		String adminpass=request.getParameter("pass");
		HttpSession session = request.getSession(true);
		String sql="select count(*) as usercount from User where Login_Id='"+adminnm+"' and Password='"+adminpass+"'";
		try {
			try {
				if(AdminUtility.IsValiduser(sql))
				{
									
					/*sql="select Full_Name from User where Login_Id='"+adminnm+"'";
					String Name=AdminUtility.GetName(sql);*/
					session.setAttribute("UserNM",adminnm);
					response.sendRedirect("WelcomeUser.jsp");	
				}
				else
				{	
					request.setAttribute("alertMsg","You are Not Valid User");
					response.sendRedirect("UserLogin.jsp");
				  
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


