package classes;

public class Annonce {
	private String nom;
	private String prenom;
	private String Email;
	private String Date;
	private String Cont;
	private int id;
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getCont() {
		return Cont;
	}
	public void setCont(String cont) {
		Cont = cont;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Annonce(String nom, String prenom, String date, String cont, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
	
		Date = date;
		Cont = cont;
		this.id = id;
	}
	
	
}
