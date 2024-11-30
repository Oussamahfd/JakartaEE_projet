package Servlets;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import DAO.etudao;

/**
 * Servlet implementation class Serchgrpsemplois
 */
public class Serchgrpsemplois extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serchgrpsemplois() {
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
String ids = request.getParameter("grpe"); int idgrp =0;HttpSession session = request.getSession();
String nv = request.getParameter("nive"); 
		
		try {
		    idgrp = Integer.parseInt(ids);
		    
		} catch (NumberFormatException e) {
		    e.printStackTrace();
		}
ResultSet rs = et.findemploiet(idgrp, nv);
session.setAttribute("rs", rs);
		
response.sendRedirect("Admsercetudempl.jsp");
	}
	

}
