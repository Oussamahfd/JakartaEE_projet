package classes;

public class Paiement {
	private String nom;
	private String prenom;
	private String Email;
	private int id;
	private Boolean oct;
	private Boolean nov;
	private Boolean dec;
	private Boolean jan;
	private Boolean fev;
	private Boolean mar;
	private Boolean avr;
	private Boolean mai;
	private Boolean jun;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Boolean getOct() {
		return oct;
	}
	public void setOct(Boolean oct) {
		this.oct = oct;
	}
	public Boolean getNov() {
		return nov;
	}
	public void setNov(Boolean nov) {
		this.nov = nov;
	}
	public Boolean getDec() {
		return dec;
	}
	public void setDec(Boolean dec) {
		this.dec = dec;
	}
	public Boolean getJan() {
		return jan;
	}
	public void setJan(Boolean jan) {
		this.jan = jan;
	}
	public Boolean getFev() {
		return fev;
	}
	public void setFev(Boolean fev) {
		this.fev = fev;
	}
	public Boolean getMar() {
		return mar;
	}
	public void setMar(Boolean mar) {
		this.mar = mar;
	}
	public Boolean getAvr() {
		return avr;
	}
	public void setAvr(Boolean avr) {
		this.avr = avr;
	}
	public Boolean getMai() {
		return mai;
	}
	public void setMai(Boolean mai) {
		this.mai = mai;
	}
	public Boolean getJun() {
		return jun;
	}
	public void setJun(Boolean jun) {
		this.jun = jun;
	}
	public Paiement(String nom, String prenom, String email, int id, Boolean oct, Boolean nov, Boolean dec, Boolean jan,
			Boolean fev, Boolean mar, Boolean avr, Boolean mai, Boolean jun) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		Email = email;
		this.id = id;
		this.oct = oct;
		this.nov = nov;
		this.dec = dec;
		this.jan = jan;
		this.fev = fev;
		this.mar = mar;
		this.avr = avr;
		this.mai = mai;
		this.jun = jun;
	}
	
	


}
