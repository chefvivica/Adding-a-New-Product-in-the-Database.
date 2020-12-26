package com.client;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Products;
import com.utility.HibernateUtility;




@WebServlet("/ViewAll")
public class ViewAll extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Session session = HibernateUtility.getSession();
		Transaction tx = session.beginTransaction();
		
		Query query = session.createQuery("from Products");
		List<Products> list = query.list();
		tx.commit();
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("viewproducts.jsp").forward(request, response);
		System.out.println("request: " + request);
		System.out.println("list: " + list);
		session.close();
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
