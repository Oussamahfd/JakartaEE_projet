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
 * Servlet implementation class searchetudsabs
 */
public class searchetudsabs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchetudsabs() {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String ids = request.getParameter("grp");
		int idgrp = 0;
		HttpSession session = request.getSession();
		String nv = request.getParameter("niv");
		try {
			idgrp = Integer.parseInt(ids);

		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		session.setAttribute("nv", nv);
		

		response.sendRedirect("absenceetudssearc.jsp?page=1");
	}

}
