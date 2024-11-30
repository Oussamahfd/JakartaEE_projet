package classes;

public class Absence {
	private String nom;
	private String prenom;
	private String Email;
	private int id;
	private int oct;
	private int nov;
	private int dec;
	private int jan;
	private int fev;
	private int mar;
	private int avr;
	private int mai;
	private int jun;
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
	public int getOct() {
		return oct;
	}
	public void setOct(int oct) {
		this.oct = oct;
	}
	public int getNov() {
		return nov;
	}
	public void setNov(int nov) {
		this.nov = nov;
	}
	public int getDec() {
		return dec;
	}
	public void setDec(int dec) {
		this.dec = dec;
	}
	public int getJan() {
		return jan;
	}
	public void setJan(int jan) {
		this.jan = jan;
	}
	public int getFev() {
		return fev;
	}
	public void setFev(int fev) {
		this.fev = fev;
	}
	public int getMar() {
		return mar;
	}
	public void setMar(int mar) {
		this.mar = mar;
	}
	public int getAvr() {
		return avr;
	}
	public void setAvr(int avr) {
		this.avr = avr;
	}
	public int getMai() {
		return mai;
	}
	public void setMai(int mai) {
		this.mai = mai;
	}
	public int getJun() {
		return jun;
	}
	public void setJun(int jun) {
		this.jun = jun;
	}
	public Absence(String nom, String prenom,  int id, int oct, int nov, int dec, int jan, int fev,
			int mar, int avr, int mai, int jun) {
		super();
		this.nom = nom;
		this.prenom = prenom;
	
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
