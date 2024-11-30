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
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;

import DAO.etudao;

/**
 * Servlet implementation class Editabs
 */
public class Editabs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editabs() {
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
		doGet(request, response);
		String nom = request.getParameter("Nom");
        String prenom = request.getParameter("Prenom");
        String dateAbsenceString = request.getParameter("date_a");
        HttpSession session = request.getSession();

        Integer user_id = (Integer) session.getAttribute("ideditp");
        int userId = user_id.intValue();
        
        LocalDate dateAbsence = LocalDate.parse(dateAbsenceString);
        Month moisAbsence = dateAbsence.getMonth();
        switch (moisAbsence) {
        case JANUARY:
        	et.ajtabs(userId,"janvier");
            break;
        case FEBRUARY:
        	et.ajtabs(userId,"fevrier");
            break;
        case MARCH:
        	et.ajtabs(userId,"mars");
            break;
        case APRIL:
        	et.ajtabs(userId,"avril");
            break;
        case MAY:
        	et.ajtabs(userId,"mai");
            break;
        case JUNE:
        	et.ajtabs(userId,"juin");
            break;
        case OCTOBER:
        	et.ajtabs(userId,"octorbe");
            break;
        case NOVEMBER:
        	et.ajtabs(userId,"novembre");
            break;
        case DECEMBER:
        	et.ajtabs(userId,"decembre");
            break;
        default:
        	break;
    }

        Integer user_id2 = (Integer) session.getAttribute("ideditp");
        int userId2 = user_id2.intValue();
       ResultSet rs = et.finduser(userId2);
       try {
		while(rs.next())
		   {
			String rl = rs.getString("role");
			if ("Prof".equals(rl))
			{
			    response.sendRedirect("absenceprofs.jsp?page=1");

			}
			else if ("etudiant".equals(rl))
			{
			    response.sendRedirect("absencetuds.jsp?page=1");

			}
			   
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}

}
