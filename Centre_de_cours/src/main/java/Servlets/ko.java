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

/**
 * Servlet implementation class ko
 */
public class ko extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ko() {
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
		doGet(request, response);
		
		doGet(request, response);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		
					 out.println();
				
      
		
		
//		String vn = "2-bac-sm";
//		int ii=1;
//		HttpSession session = request.getSession();
//		String i = request.getParameter("userIddd");
//		
//		PrintWriter out = response.getWriter();
//		int idf = Integer.parseInt(i);
//		out.print(i);
//		ResultSet rs = et.collectmoinp(idf);
//		
//		try {
//		    while (rs.next()) {
//		        // Pour chaque ligne
//		        
//
//		        out.println(rs.getString(1)); // Passer à la ligne suivante après chaque ligne
//		    }
//		} catch (SQLException e) {
//		    // Gérer l'exception (par exemple, imprimer la trace de la pile)
//		    e.printStackTrace();
//		}

		
//		ResultSet rses = et.verifgroup1(vn,ii);
//		
//			try {
//				while(rses.next()) {
//				 int i= rses.getInt(1);
//				 session.setAttribute("i",i);
//					PrintWriter out = response.getWriter();
//				    out.print(i);
//				
//				 
//				}
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		
		

		
	}

}
