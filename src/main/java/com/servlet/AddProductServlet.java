package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

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
		ServletFileUpload fp = new ServletFileUpload(new DiskFileItemFactory());
		try {
			List<FileItem> multifiles = fp.parseRequest(req);
			for (FileItem item : multifiles) {
				item.write(new File("/Users/prince/Documents/ebook/src/main/webapp/ProductImages/" + item.getName()));
				System.out.println("File Uploaded");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		AddProductDao obj = new AddProductDao();
		obj.AddProduct(PName, PDescription, PPrice, PQuantity, PCategory, PImageFileName);
		session.setAttribute("failedMsg", "Product Add Successfully");
		res.sendRedirect("AdminPage.jsp");

	}

}
