package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddProductDao;
@WebServlet("/AddProduct")
public class AddProductServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String PName = req.getParameter("PName");
		String PDescription = req.getParameter("PDescription");
		String PPrice = req.getParameter("PPrice");
		String PQuantity = req.getParameter("PQuantity");
		String PCategory = req.getParameter("PCategory");
		String PImageFileName = req.getParameter("PPic");
		AddProductDao obj = new AddProductDao();
		obj.AddProduct(PName, PDescription, PPrice, PQuantity, PCategory, PImageFileName);
		session.setAttribute("failedMsg", "Product Add Successfully");
		res.sendRedirect("AdminPage.jsp");

	}

}
