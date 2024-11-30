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
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
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
        
        Integer user_id = (Integer) session.getAttribute("ideditp");
        int userId = user_id.intValue();
        
        int nb = 0;
	    nb = et.UpdUserp(prof,userId);  
	    Integer user_ids = (Integer) session.getAttribute("ideditp");
        int userIds = user_ids.intValue();//
	    
	    String noms = (String) session.getAttribute("nom");
      
        String prenoms = (String) session.getAttribute("prenom");
       
        String emails = (String) session.getAttribute("mail");
       
        String phones = (String) session.getAttribute("phone");
      
        String passwords = (String) session.getAttribute("password");
     
        float salaires = (float) session.getAttribute("salaire");
       
        String matieres = (String) session.getAttribute("matiere");
     
        String niveaus = (String) session.getAttribute("niveau");
      
        Prof pr=new Prof(noms,prenoms,emails,phones,passwords,"Prof",matieres,salaires,niveaus,userIds);
	    et.updprof(pr);
	    
	    Integer user_ids1 = (Integer) session.getAttribute("ideditp");
        int userIds1 = user_ids1.intValue();//
	    
	    String noms1 = (String) session.getAttribute("nom");
      
        String prenoms1 = (String) session.getAttribute("prenom");
       
        String emails1 = (String) session.getAttribute("mail");
       
        String phones1 = (String) session.getAttribute("phone");
      
        String passwords1 = (String) session.getAttribute("password");
     
        float salaires1 = (float) session.getAttribute("salaire");
       
        String matieres1 = (String) session.getAttribute("matiere");
     
        String niveaus1 = (String) session.getAttribute("niveau");
      
        Prof pr1=new Prof(noms1,prenoms1,emails1,phones1,passwords1,"Prof",matieres1,salaires1,niveaus1,userIds1);
	    
	    
	    et.updprofus(pr1);
	    
	    
	    Integer user_ids2 = (Integer) session.getAttribute("ideditp");
        int userIds2 = user_ids2.intValue();//
        String matieres2 = (String) session.getAttribute("matiere");
        
        switch (matieres2) {
        case "MATH":
        	et.updprofmat(userIds2,1);
            break;

        case "PHYSIQUE":
        	et.updprofmat(userIds2,2);
            
            break;

        case "SVT":
        	et.updprofmat(userIds2,3);
            
            break;

        case "COMPTABILITE":
        	et.updprofmat(userIds2,4);
            
            break;

        case "PHILOSOPHIE":
        	et.updprofmat(userIds2,5);
            
            break;

        case "ANGLAIS":
        	et.updprofmat(userIds2,6);
            break;

        default:
            
            break;
    }
        
     

      
	    response.sendRedirect("gestionprofs.jsp?page=1");
	    

        //String mails = (String) session.getAttribute("mail");

	   

	        
	    }
		
		
		
		
		
}
