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
 * Servlet implementation class Editetd
 */
public class Editetd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editetd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
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
		PrintWriter out = response.getWriter();
		String nom = request.getParameter("Nom");
        String prenom = request.getParameter("Prenom");
        String mail = request.getParameter("Mail");
        String phone = request.getParameter("Phone");
        String password = request.getParameter("Password");
        HttpSession session = request.getSession();
        session.setAttribute("nom", nom);
        session.setAttribute("prenom", prenom);
        session.setAttribute("mail", mail);
        session.setAttribute("phone", phone);
        session.setAttribute("password", password);
        Integer user_id2 = (Integer) session.getAttribute("ideditp");
        int userId2 = user_id2.intValue();
        et.Updet(userId2,nom,prenom,mail,phone,password);
        
        Integer user_ids = (Integer) session.getAttribute("ideditp");
        int userIds = user_ids.intValue();//
	    
	    String noms = (String) session.getAttribute("nom");
      
        String prenoms = (String) session.getAttribute("prenom");
       
        String emails = (String) session.getAttribute("mail");
       
        String phones = (String) session.getAttribute("phone");
      
        String passwords = (String) session.getAttribute("password");
        
        et.upet(userIds,noms,prenoms,emails,phones,passwords);
        response.sendRedirect("getionetuds.jsp?page=1");



	}

}
