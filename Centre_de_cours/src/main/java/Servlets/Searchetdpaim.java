package Servlets;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.ResultSet;

import DAO.etudao;

/**
 * Servlet implementation class Searchetdpaim
 */
public class Searchetdpaim extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Searchetdpaim() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		et = new etudao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String ids = request.getParameter("grpe");
		int idgrp = 0;
		HttpSession session = request.getSession();
		String nv = request.getParameter("nive");
		try {
			idgrp = Integer.parseInt(ids);

		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		ResultSet rs = et.findgropnivetdpaim(idgrp, nv);
		session.setAttribute("rs", rs);

		response.sendRedirect("profpaimsearch.jsp?page=1");
	}

}
