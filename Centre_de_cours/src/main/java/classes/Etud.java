package classes;

public class Etud {

	@Override
	public String toString() {
		return "Etud [nom=" + nom + ", prenom=" + prenom + ", Email=" + Email + ", tel=" + tel + ", Mdp=" + Mdp
				+ ", Role=" + Role + "]";
	}


	private String nom;
	private String prenom;
	private String Email;
	private String tel;
	private String Mdp;
	private String Role;
	private String Nv;
	private int id;
	
	public Etud(String nom, String prenom, String email, String tel, String mdp, String role, String nv, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Mdp = mdp;
		Role = role;
		Nv = nv;
		this.id = id;
	}
	
	public Etud( int id,String nom, String prenom, String email, String tel, String role, String nv) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		this.Role = role;
		this.Nv = nv;
		this.id = id;
	}










	public String getNv() {
		return Nv;
	}










	public void setNv(String nv) {
		Nv = nv;
	}










	public Etud(String nom, String prenom, String email, String tel, String mdp, String role, String nv) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.Email = email;
		this.tel = tel;
		this.Mdp = mdp;
		this.Role = role;
		this.Nv = nv;
		
	}


	public Etud(String nom, String prenom, String email, String tel, String mdp, String role, int id,String niv) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.Email = email;
		this.tel = tel;
		this.Mdp = mdp;
		this.Role = role;
		this.id = id;
		this.Nv= niv;
	}
	
	
	
	
	


	public Etud(String nom, String prenom, String email, String tel, String mdp, String role, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.Email = email;
		this.tel = tel;
		this.Mdp = mdp;
		this.Role = role;
		this.id = id;
	}


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


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getMdp() {
		return Mdp;
	}


	public void setMdp(String mdp) {
		Mdp = mdp;
	}


	public String getRole() {
		return Role;
	}


	public void setRole(String role) {
		Role = role;
	}


	public Etud(String nom, String prenom, String email, String tel, String mdp, String role) {
		super();
		
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Mdp = mdp;
		Role = role;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}
	
	

}
