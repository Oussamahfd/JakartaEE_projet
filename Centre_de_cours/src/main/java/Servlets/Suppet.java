package Servlets;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import DAO.etudao;

/**
 * Servlet implementation class Suppet
 */
public class Suppet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Suppet() {
        super();
		et = new etudao();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		 
		 
		 String  strid = request.getParameter("userIddd");
			int idf = Integer.parseInt(strid);
			session.setAttribute("ideditp", idf);
			
			et.delusr(idf);
			
			Integer user_id = (Integer) session.getAttribute("ideditp");
	          int userId = user_id.intValue();
	  		et.deletd(userId);
	          
	          Integer user_id1 = (Integer) session.getAttribute("ideditp");
	          int userId1 = user_id1.intValue();
	  		et.deletdabs(userId1);
	  		
	  		Integer user_id2 = (Integer) session.getAttribute("ideditp");
	          int userId2 = user_id2.intValue();
	  		et.deletdpm(userId2);
	  		
	  		Integer user_id3 = (Integer) session.getAttribute("ideditp");
	          int userId3 = user_id3.intValue();
	  		et.deletdmat(userId3);
	  		
	  		Integer user_id4 = (Integer) session.getAttribute("ideditp");
	  		int userId4 = user_id4.intValue();
	  		et.deletdgrp(userId4);
	  		
	  		
	  		response.sendRedirect("getionetuds.jsp?page=1");
			
	
	}

}
