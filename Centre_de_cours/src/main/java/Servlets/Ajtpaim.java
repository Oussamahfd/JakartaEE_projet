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

import DAO.etudao;

/**
 * Servlet implementation class Ajtpaim
 */
public class Ajtpaim extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajtpaim() {
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

		Integer user_id = (Integer) session.getAttribute("ideditp");
        int userId = user_id.intValue();
        String m=request.getParameter("moi");
        
        if(et.ajtpai(userId,m)==1) {
        	Integer user_id1 = (Integer) session.getAttribute("ideditp");
            int userId1 = user_id1.intValue();
            ResultSet rs = et.collecrole(userId1);
            try {
				while(rs.next()) {
				try {
					String value = rs.getString(1);
					if ("Prof".equals(rs.getString(1))) {
						response.sendRedirect("paimentprofs.jsp?page=1");
						 
					}
					else if ("etudiant".equals(value)) {
						response.sendRedirect("paimentetuds.jsp?page=1");
					}
				} catch (SQLException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
      }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}}
		
		
		
	}

}
