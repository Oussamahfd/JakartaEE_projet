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
 * Servlet implementation class Serchprofgets
 */
public class Serchprofgets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serchprofgets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
        et = new etudao();

		// TODO Auto-generated method stub
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
		String nv = request.getParameter("niv");
        String grps = request.getParameter("grp");
        int grp = Integer.parseInt(grps);
        
        ResultSet rs = et.allprofsrch(grp, nv);
	
        HttpSession session = request.getSession();
        session.setAttribute("rs", rs);
        response.sendRedirect("gestprofsearch.jsp?page=1");
	
	}

}
