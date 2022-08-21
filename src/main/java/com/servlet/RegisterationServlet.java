	package com.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegistrationDao;


@WebServlet("/register")
public class RegisterationServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	{
		try
		{
			String Name = req.getParameter("name");
			String Email = req.getParameter("email");
			String PhoneNo = req.getParameter("phonenumber");
			String Password = req.getParameter("password");
			String Type = "User";
			RegistrationDao obj = new RegistrationDao();
			obj.Registration(Name, Email, PhoneNo, Password,Type);
			RequestDispatcher rd= req.getRequestDispatcher("Login.jsp");
			rd.forward(req, res);	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
