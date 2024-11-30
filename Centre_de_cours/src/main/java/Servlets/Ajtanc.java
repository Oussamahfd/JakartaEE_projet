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

import DAO.etudao;

/**
 * Servlet implementation class Ajtanc
 */
public class Ajtanc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajtanc() {
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		
       
        
        
        HttpSession session = request.getSession();
        Integer id=(Integer) session.getAttribute("fullid");
        String anc = request.getParameter("formation");
        int userIds = id.intValue();//
        String nm = (String) session.getAttribute("fullnm");
        String pnm = (String) session.getAttribute("fullpn");
		PrintWriter out = response.getWriter();
		out.print(userIds+anc+nm+pnm);

        
    et.addanc(userIds,anc,nm,pnm);
    String fullRole = (String) session.getAttribute("fullrl");

 if (fullRole != null) {
	 if(fullRole.equals("Prof"))
	    {
	    	response.sendRedirect("intprofann.jsp");
	    	return;
	    }

 } 
response.sendRedirect("annonces.jsp?page=1");
        
	}

}
