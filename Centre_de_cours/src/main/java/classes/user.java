package classes;

import java.util.Objects;

public class user {
	private String nom;
	private String prenom;
	private String tel;
	private String email;
	private String mdp;
	private String role;
	private int id;
	
	public user(String nom, String prenom, String tel, String email, String mdp, String role, int id) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.email = email;
		this.mdp = mdp;
		this.role = role;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(email, id, mdp, nom, prenom, role, tel);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		user other = (user) obj;
		return Objects.equals(email, other.email) && id == other.id && Objects.equals(mdp, other.mdp)
				&& Objects.equals(nom, other.nom) && Objects.equals(prenom, other.prenom)
				&& Objects.equals(role, other.role) && Objects.equals(tel, other.tel);
	}

	@Override
	public String toString() {
		return "user [nom=" + nom + ", prenom=" + prenom + ", tel=" + tel + ", email=" + email + ", mdp=" + mdp
				+ ", role=" + role + ", id=" + id + "]";
	}
	
	
	
    
	
}
