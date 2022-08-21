package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.OrderPlacedDao;

@WebServlet("/OrderPlaced")
public class OrderPlacedServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String Name = req.getParameter("Name");
		String PhoneNo = req.getParameter("PhoneNo");
		String Email = req.getParameter("Email");
		String Address = req.getParameter("Address");
		String Landmark = req.getParameter("Landmark");
		String City = req.getParameter("City");
		String State = req.getParameter("State");
		String Pincode = req.getParameter("Pincode");
		String PaymentType = req.getParameter("PaymentType");
		OrderPlacedDao obj = new OrderPlacedDao();
		obj.OrderPlaced(Name,PhoneNo,Email,Address,Landmark,City,State,Pincode,PaymentType);
		session.setAttribute("failedMs", "OrderPlaced Successfully");
		res.sendRedirect("UserPage.jsp");

	}

}
