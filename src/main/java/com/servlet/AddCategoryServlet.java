package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddCategoryDao;

@WebServlet("/AddCategory")
public class AddCategoryServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String CTitle = req.getParameter("CTitle");
		String CDescription = req.getParameter("CDescription");
		AddCategoryDao obj = new AddCategoryDao();
		obj.AddCategory(CTitle, CDescription);
		session.setAttribute("failedMsg", "Category Add Successfully");
		res.sendRedirect("AdminPage.jsp");

	}

}
