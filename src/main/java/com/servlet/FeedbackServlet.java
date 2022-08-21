package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FeedbackDao;

@WebServlet("/Feedback")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String Name = req.getParameter("Name");
		String Email = req.getParameter("Email");
		String PhoneNo = req.getParameter("PhoneNo");
		String Message = req.getParameter("Message");
		FeedbackDao obj = new FeedbackDao();
		obj.Feedback(Name, Email, PhoneNo, Message);
		RequestDispatcher rd = req.getRequestDispatcher("Feedback.jsp");
		rd.forward(req, res);

	}
}