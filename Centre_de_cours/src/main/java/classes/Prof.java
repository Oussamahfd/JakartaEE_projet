package classes;

public class Prof {
	private String nom;
	private String prenom;
	private String Email;
	private String tel;
	private String Mdp;
	@Override
	public String toString() {
		return "Prof [nom=" + nom + ", prenom=" + prenom + ", Email=" + Email + ", tel=" + tel + ", Mdp=" + Mdp
				+ ", Role=" + Role + ", mat=" + mat + ", sal=" + sal + ", nv=" + nv + ", id=" + id + "]";
	}

	private String Role;
	private String mat;
	private Float sal;
	private String nv;
	private int id;
	
	public int getId() {
		return id;
	}
	
	

	public Prof(String nom, String prenom, String email, String tel, String role, Float sal, String nv, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Role = role;
		this.sal = sal;
		this.nv = nv;
		this.id = id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Prof(String nom, String prenom, String email, String tel, String mdp, String role, String mat, Float sal,
			String nv, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Mdp = mdp;
		Role = role;
		this.mat = mat;
		this.sal = sal;
		this.nv = nv;
		this.id = id;
	}

	public Prof(String nom, String prenom, String email, String tel, String mdp, String role) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Mdp = mdp;
		Role = role;
	}
	public Prof(String nom, String prenom,int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.id=id;
	}

	public Prof(String nom, String prenom, String email, String tel, String mdp, String role, String mat, Float sal,String nv) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.tel = tel;
		Mdp = mdp;
		Role = role;
		this.mat = mat;
		this.sal = sal;
		this.nv = nv;
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

	public String getMat() {
		return mat;
	}

	public void setMat(String mat) {
		this.mat = mat;
	}

	public Float getSal() {
		return sal;
	}

	public void setSal(Float sal) {
		this.sal = sal;
	}

	public String getNv() {
		return nv;
	}

	public void setNv(String nv) {
		this.nv = nv;
	}
	
	
	


}
