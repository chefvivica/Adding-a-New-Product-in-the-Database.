package com.client;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Products;
import com.utility.HibernateUtility;

@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Products p = new Products();
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			String price = request.getParameter("price");
			String category = request.getParameter("category");

			if (name == null || name.equals("") || description == null || name.equals("") || (price == null)
					|| category == null || category.equals("")) {
				request.setAttribute("errMsg", "some fields are empty, please provide all mandatory field");
				request.getRequestDispatcher("errormessage.jsp").forward(request, response);
			} else {
				Session session = HibernateUtility.getSession();
				Transaction tx = session.beginTransaction();
				p.setName(name);
				p.setDescription(description);
				p.setPrice(new BigDecimal(price));
				p.setcategory(category);
				session.save(p);
				tx.commit();
				request.setAttribute("product", p);
				request.getRequestDispatcher("add-success.jsp").forward(request, response);
				session.close();
			}

		} catch (Exception e) {
			request.setAttribute("e", e);
			request.getRequestDispatcher("errormessage.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
