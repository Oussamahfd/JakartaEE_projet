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
import java.sql.SQLException;

import DAO.etudao;
import classes.Etud;
import classes.Prof;

/**
 * Servlet implementation class Ajtprf
 */
public class Ajtprf extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajtprf() {
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
		PrintWriter out = response.getWriter();
		String nom = request.getParameter("Nom");
        String prenom = request.getParameter("Prenom");
        String mail = request.getParameter("Mail");
        String phone = request.getParameter("Phone");
        String password = request.getParameter("Password");
        String salaireStr = request.getParameter("Salaire");
        Float salaire = Float.parseFloat(salaireStr);

        String matiere = request.getParameter("Matiere");
        String niveau = request.getParameter("Niveau");
        
        Etud prof = new Etud(nom, prenom, mail, phone, password, "Prof");
        
        
        HttpSession session = request.getSession();
        session.setAttribute("nom", nom);
        session.setAttribute("prenom", prenom);
        session.setAttribute("mail", mail);
        session.setAttribute("phone", phone);
        session.setAttribute("password", password);
        session.setAttribute("salaire", salaire);
        session.setAttribute("matiere", matiere);
        session.setAttribute("niveau", niveau);
        
        int nb = 0;
	    nb = et.addUserp(prof);
	    out.print(nb);

        String mails = (String) session.getAttribute("mail");

	    if (nb == 1) {
	        ResultSet rs = et.findemail(mails);
	        try {
	            while (rs.next()) {
	                int n = rs.getInt("id");
	                session.setAttribute("id", n);
	                
	                String noms = (String) session.getAttribute("nom");
	                
	                String prenoms = (String) session.getAttribute("prenom");
	                
	                String emails = (String) session.getAttribute("mail");
	                
	                String phones = (String) session.getAttribute("phone");
	                
	                String passwords = (String) session.getAttribute("password");
	                
	                float salaires = (float) session.getAttribute("salaire");
	                
	                String matieres = (String) session.getAttribute("matiere");
	                
	                
	                String niveaus = (String) session.getAttribute("niveau");
	                
	                Prof pr=new Prof(noms,prenoms,emails,phones,passwords,"Prof",matieres,salaires,niveaus,n);
	                
	                int v =0;v= et.addprof(pr);
	                if (v == 1)
	                	et.addpai(n);
               	 et.addabs(n);
               	String matieress = (String) session.getAttribute("matiere");
               	switch (matieress) {
                case "MATH":
                    et.addpmat(n, 1);
                    break;

                case "PHYSIQUE":
               	 et.addpmat(n, 2);
                    break;

                case "SVT":
               	 et.addpmat(n, 3);
                    break;

                case "COMPTABILITE":
               	 et.addpmat(n, 4);
                    break;

                case "PHILOSOPHIE":
               	 et.addpmat(n, 5);
                    break;

                case "ANGLAIS":
               	 et.addpmat(n, 6);
                    break;

                default:
                    
                    break;
            }
	                
                
	               
	            }

	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	    }
	    response.sendRedirect("gestionprofs.jsp?page=1");
        
	}



}
