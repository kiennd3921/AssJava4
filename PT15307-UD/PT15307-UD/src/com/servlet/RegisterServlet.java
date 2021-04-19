package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.persistence.Entity;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.mbeans.MBeanUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Hibernate;
import org.hibernate.Session;

import com.entity.User;
import com.utils.HibernateUtils;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/views/buoi3/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User entity = new User();
		try {
			BeanUtils.populate(entity, request.getParameterMap());

		} catch (Exception e) {
			e.printStackTrace();
		}

		Session session = HibernateUtils.getSession();
		session.beginTransaction();
		session.save(entity);
		session.getTransaction().commit();

		doGet(request, response);
	}

	@Override
	public void init() throws ServletException {
		System.out.println("Inital...");
		super.init();

	}

	@Override
	public void destroy() {
		System.out.println("Destroy...");
		super.destroy();
	}

	
}