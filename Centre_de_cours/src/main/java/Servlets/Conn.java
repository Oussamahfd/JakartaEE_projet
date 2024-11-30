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

/**
 * Servlet implementation class Conn
 */
public class Conn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Conn() {
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
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("email", email);
        session.setAttribute("password", password);
        
		ResultSet rs=et.findemail(email);
    	try {
			while(rs.next()) {
				String pwd=rs.getString("mdp");
	
				String em=rs.getString("mail");
			
				String rl=rs.getString("role");
				
				int idf = rs.getInt("id");
				
				String opwd = (String) session.getAttribute("password");
				String oem = (String) session.getAttribute("email");
				if (opwd.equals(pwd) && em.equals(oem)) {
					
					session.setAttribute("fullid", idf);
					session.setAttribute("fullnm", rs.getString("nom"));
					session.setAttribute("fullpn", rs.getString("prenom"));
					session.setAttribute("fullmail", rs.getString("mail"));
					session.setAttribute("fullrl", rs.getString("role"));
					
				    if(rl.equals("etudiant"))
				    {
				    	response.sendRedirect("premiereetudin.jsp");
				    }
				    if(rl.equals("Prof"))
				    {
				    	response.sendRedirect("premiereprofs.jsp");
				    }
				    if(rl.equals("admin"))
				    {
				    	response.sendRedirect("Dashboard.jsp");
				    }
				} else {
					response.sendRedirect("form/Login.jsp");
				}
				
				
			}
				
			    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
