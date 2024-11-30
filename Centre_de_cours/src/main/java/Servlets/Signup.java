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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DAO.etudao;
import classes.Etud;

/**
 * Servlet implementation class Signup
 */
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	etudao et;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    

	    String nom = request.getParameter("nom");
	    String prenom = request.getParameter("prenom");
	    String email = request.getParameter("Email");
	    String phone = request.getParameter("Phone");
	    String password = request.getParameter("Password");
	    String niv = request.getParameter("niveauScolaire");
	    
	    String[] matieresSelectionnees = request.getParameterValues("Matieres");
	    
	    Etud etudiant = new Etud(nom, prenom, email, phone, password, "Etudiant",niv);
	    

	    HttpSession session = request.getSession();
	    session.setAttribute("nom", nom);
	    session.setAttribute("prenom", prenom);
	    session.setAttribute("email", email);
	    session.setAttribute("phone", phone);
	    session.setAttribute("password", password);
	    session.setAttribute("niv", niv);
	    session.setAttribute("matieresSelectionnees", matieresSelectionnees);


	    String emails = (String) session.getAttribute("email");

	    int nb = 0;
	    nb = et.addUser(etudiant);

	    if (nb == 1) {
	        ResultSet rs = et.findemail(emails);
	        try {
	            while (rs.next()) {
	                int n = rs.getInt("id");
	                session.setAttribute("n", n);
	                String noms = (String) session.getAttribute("nom");
	                String prenoms = (String) session.getAttribute("prenom");
	                emails = (String) session.getAttribute("email");
	                String phones = (String) session.getAttribute("phone");
	                String passwords = (String) session.getAttribute("password");
	                String nivs = (String) session.getAttribute("niv");
	                
	                if (nivs.equals("1-bac-sm")) {
	                    nivs ="1-bac";
	                } else if (nivs.equals("1-bac-eco")) {
	                    // Traitement si nivs est égal à "1-bac-eco"
	                	nivs ="1-bac";
	                } else if (nivs.equals("1-bac-x")) {
	                    // Traitement si nivs est égal à "1-bac-x"
	                	nivs ="1-bac";
	                }
	                
	                Etud etudiant1 = new Etud(noms, prenoms, emails, phones, passwords, "Etudiant", n,nivs);
	                int v = et.addetud(etudiant1);
	                if (v == 1)
	                {
	                	 for (String matiere : matieresSelectionnees) {
	                		 switch (matiere) {
	                         case "MATH":
	                             et.addmat(n, 1);
	                             String nisv = (String) session.getAttribute("niv");
	                             ResultSet rses = et.verifgroup1(nisv,1);
	                             try {
	                 				while(rses.next()) {
	                 				 int i= rses.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),1);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),1);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;

	                         case "PHYSIQUE":
	                        	 et.addmat(n, 2);
	                             String nisvp = (String) session.getAttribute("niv");
	                             ResultSet rsesp = et.verifgroup1(nisvp,1);
	                             try {
	                 				while(rsesp.next()) {
	                 				 int i= rsesp.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),2);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),2);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;

	                         case "SVT":
	                        	 et.addmat(n, 3);
	                             String nisv3 = (String) session.getAttribute("niv");
	                             ResultSet rses3 = et.verifgroup1(nisv3,1);
	                             try {
	                 				while(rses3.next()) {
	                 				 int i= rses3.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),3);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),3);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;

	                         case "COMPTABILITE":
	                        	 et.addmat(n, 4);
	                             String nisv4 = (String) session.getAttribute("niv");
	                             ResultSet rses4 = et.verifgroup1(nisv4,1);
	                             try {
	                 				while(rses4.next()) {
	                 				 int i= rses4.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),4);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),4);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;

	                         case "PHILOSOPHIE":
	                        	 et.addmat(n, 5);
	                             String nisv5 = (String) session.getAttribute("niv");
	                             ResultSet rses5 = et.verifgroup1(nisv5,1);
	                             try {
	                 				while(rses5.next()) {
	                 				 int i= rses5.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),5);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),5);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;

	                         case "ANGLAIS":
	                        	 et.addmat(n, 6);
	                             String nisv6 = (String) session.getAttribute("niv");
	                             ResultSet rses6 = et.verifgroup1(nisv6,1);
	                             try {
	                 				while(rses6.next()) {
	                 				 int i= rses6.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),6);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),6);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;
	                             
	                         case "INGENIEUR":
	                             et.addmat(n, 7);
	                             String nisv7 = (String) session.getAttribute("niv");
	                             ResultSet rses7 = et.verifgroup1(nisv7,1);
	                             try {
	                 				while(rses7.next()) {
	                 				 int i= rses7.getInt(1);
	                 				if (i<50)
		                             {
		                            	 et.addgrpet(1,n,(String) session.getAttribute("niv"),7);
		                             
		                             }
	                 				else {
	                 					String nisv2 = (String) session.getAttribute("niv");
	   	                             ResultSet rses2 = et.verifgroup1(nisv2,2);
	   	                             try {
	   	                            	while(rses2.next()) {
	   	                 				 int i2= rses2.getInt(1);
	   	                 				if (i2<50)
	   		                             {
	   		                            	 et.addgrpet(2,n,(String) session.getAttribute("niv"),1);
	   		                             
	   		                             }              }
	   	                            	 
	   	                             }
	   	                          catch (SQLException e) {
		                 				// TODO Auto-generated catch block
		                 				e.printStackTrace();
		                 			}
	                 					
	                 				}
	                 				
	                 				 
	                 				}
	                 			} catch (SQLException e) {
	                 				// TODO Auto-generated catch block
	                 				e.printStackTrace();
	                 			}
	                        
	                             break;
	                         case "ECOGENERAL":
	                        	 et.addmat(n, 8);
	                        	 String nisv8 = (String) session.getAttribute("niv");
	                        	 ResultSet rses8 = et.verifgroup1(nisv8,1);
	                        	 try {
	                        		 while(rses8.next()) {
	                        			 int i= rses8.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,(String) session.getAttribute("niv"),8);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1(nisv2,2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,(String) session.getAttribute("niv"),1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;
	                         case "ECOORGANISATION":
	                        	 et.addmat(n, 9);
	                        	 String nisv9 = (String) session.getAttribute("niv");
	                        	 ResultSet rses9 = et.verifgroup1(nisv9,1);
	                        	 try {
	                        		 while(rses9.next()) {
	                        			 int i= rses9.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,(String) session.getAttribute("niv"),9);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1(nisv2,2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,(String) session.getAttribute("niv"),1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;
	                         case "ARABE":
	                        	 et.addmat(n, 10);
	                        	 String nisv10 = (String) session.getAttribute("niv");
	                        	 nisv10="1-bac";
	                        	 ResultSet rses10 = et.verifgroup1("1-bac",1);
	                        	 try {
	                        		 while(rses10.next()) {
	                        			 int i= rses10.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,"1-bac",10);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1("1-bac",2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,"1-bac",1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;
	                         case "FRANCAIS":
	                        	 et.addmat(n, 11);
	                        	 String nisv11 = (String) session.getAttribute("niv");
	                        	 ResultSet rses11 = et.verifgroup1("1-bac",1);
	                        	 try {
	                        		 while(rses11.next()) {
	                        			 int i= rses11.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,"1-bac",11);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1("1-bac",2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,"1-bac",1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;
	                         case "SOCIOLOGIE":
	                        	 et.addmat(n, 12);
	                        	 String nisv12 = (String) session.getAttribute("niv");
	                        	 ResultSet rses12 = et.verifgroup1("1-bac",1);
	                        	 try {
	                        		 while(rses12.next()) {
	                        			 int i= rses12.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,"1-bac",12);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1("1-bac",2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,"1-bac",1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;
	                         case "ISLAMIQUE":
	                        	 et.addmat(n, 13);
	                        	 String nisv13 = (String) session.getAttribute("niv");
	                        	 ResultSet rses13 = et.verifgroup1("1-bac",1);
	                        	 try {
	                        		 while(rses13.next()) {
	                        			 int i= rses13.getInt(1);
	                        			 if (i<50)
	                        			 {
	                        				 et.addgrpet(1,n,"1-bac",13);
	                        				 
	                        			 }
	                        			 else {
	                        				 String nisv2 = (String) session.getAttribute("niv");
	                        				 ResultSet rses2 = et.verifgroup1("1-bac",2);
	                        				 try {
	                        					 while(rses2.next()) {
	                        						 int i2= rses2.getInt(1);
	                        						 if (i2<50)
	                        						 {
	                        							 et.addgrpet(2,n,"1-bac",1);
	                        							 
	                        						 }              }
	                        					 
	                        				 }
	                        				 catch (SQLException e) {
	                        					 // TODO Auto-generated catch block
	                        					 e.printStackTrace();
	                        				 }
	                        				 
	                        			 }
	                        			 
	                        			 
	                        		 }
	                        	 } catch (SQLException e) {
	                        		 // TODO Auto-generated catch block
	                        		 e.printStackTrace();
	                        	 }
	                        	 
	                        	 break;

	                         default:
	                             
	                             break;
	                     }
	                	        
	                	    }
	                	 
	                	 et.addpai(n);
	                	 et.addabs(n);
	                	 String idsss = (String) session.getAttribute("fullnm");
	                	 session.setAttribute("fullid", n);
	                	    if (idsss != null) {
	                	        response.sendRedirect("getionetuds.jsp?page=1");
	                	    }
	                	    else
	                	    {response.sendRedirect("premiereetudin.jsp");}
	                
	                	
	                }
	                	
	                    
	            }

	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	    }
	}
}
	


