package MyServelt;

import MyClasses.*;

import java.awt.Dialog;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminValid
 */
@WebServlet("/AdminValid")
public class AdminValid extends HttpServlet {
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
		String sql="select count(*) as usercount from Admin where Login_Id='"+adminnm+"' and Password='"+adminpass+"'";
		HttpSession session=request.getSession(true);
		try {
			try {
				if(AdminUtility.IsValiduser(sql))
				{
                    session.setAttribute("user",adminnm);
					response.sendRedirect("Admin.jsp");	
			    }
				else
				{	
						
					response.sendRedirect("AdminLogin.jsp");
				  
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
