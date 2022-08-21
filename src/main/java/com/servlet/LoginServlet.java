package com.servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.LoginDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		HttpSession session = request.getSession();	
//		PrintWriter out = response.getWriter();
		LoginDao Login = new LoginDao();
		if(Login.verify(Email,Password)) {	
			if(Login.getType(Email ,Password).equals("Admin"))
			{
				
				System.out.println("Verifying admin");
				session.setAttribute("AdminType",Login.getType(Email,Password));
				session.setAttribute("Admin", Login.getName(Email, Password));
				
				response.sendRedirect("AdminPage.jsp");
			}
			else if(Login.getType(Email, Password).equals("User"))
					{
				System.out.println("Verifying user");
				session.setAttribute("UserType",Login.getType(Email,Password));
				session.setAttribute("User", Login.getName(Email, Password));
				response.sendRedirect("UserPage.jsp");
			}
		}		
		else {	
			session.setAttribute("failedMsg", "Email & Password Invalid");
			response.sendRedirect("Login.jsp");
		}
}				
}
