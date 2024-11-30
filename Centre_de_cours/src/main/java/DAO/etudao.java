package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.protocol.Resultset;

import classes.DBInteraction;
import classes.Etud;
import classes.Prof;

public class etudao {
	public int addUser (Etud us)
	{
		DBInteraction.connect();
		String sql="INSERT INTO users (nom, prenom, role,mail, mdp, phone) VALUES ('" + us.getNom() + "', '" + us.getPrenom() + "', 'etudiant', '" + us.getEmail() +"','"+us.getMdp()+"','"+us.getTel()+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int addUserp (Etud us)
	{
		DBInteraction.connect();
		String sql="INSERT INTO users (nom, prenom, role,mail, mdp, phone) VALUES ('" + us.getNom() + "', '" + us.getPrenom() + "', '"+us.getRole()+"', '" + us.getEmail() +"','"+us.getMdp()+"','"+us.getTel()+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int UpdUserp (Etud us,int id)
	{
		DBInteraction.connect();
		String sql = "UPDATE users SET nom='" + us.getNom() + "', prenom='" + us.getPrenom() + "', role='" + us.getRole() +
	              "', mail='" + us.getEmail() + "', mdp='" + us.getMdp() + "', phone='" + us.getTel() + "' " +
	              "WHERE id = " + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int Updpai (int id,String m)
	{
		DBInteraction.connect();
		String sql = "UPDATE paiment SET m=true "+
				"WHERE user_id = " + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int ajtvisit (String m)
	{
		DBInteraction.connect();
		String sql = "UPDATE visiteurs SET "+m+"="+m+" +1 ";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int addmat (int idet,int idmat)
	{
		DBInteraction.connect();
		String sql="INSERT INTO mat_iscr (etud_id, mat_id) VALUES (" + idet + ", "+idmat+")";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int Updet (int id,String nm,String pnm,String mail,String phn,String pwd )
	{
		DBInteraction.connect();
		String sql = "UPDATE users SET nom='" + nm + "', prenom='" + pnm + 
	              "', mail='" + mail + "', mdp='" + pwd + "', phone='" + phn + "' " +
	              "WHERE id = " + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int upet (int id,String nm,String pnm,String mail,String phn,String pwd )
	{
		DBInteraction.connect();
		String sql = "UPDATE etudiants SET nom='" + nm + "', prenom='" + pnm + 
				"', mail='" + mail + "', mdp='" + pwd + "', phone='" + phn + "' " +
				"WHERE user_id = " + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int addpai (int idet)
	{
		DBInteraction.connect();
		String sql="INSERT INTO paiment (user_id) VALUES (" + idet + ")";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int addabs (int idet)
	{
		DBInteraction.connect();
		String sql="INSERT INTO absence (user_id) VALUES (" + idet + ")";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int addetud (Etud us)
	{
		DBInteraction.connect();
		String sql="INSERT INTO etudiants (nom, prenom, role,mail, mdp, phone,user_id,niveau) VALUES ('" + us.getNom() + "', '" + us.getPrenom() + "', 'etudiant', '" + us.getEmail() +"','"+us.getMdp()+"','"+us.getTel()+"',"+us.getId()+",'"+us.getNv()+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	
	public int addprof (Prof us)
	{
		DBInteraction.connect();
		String sql = "INSERT INTO profs (nom, prenom, mail, role, phone, mdp, user_id, salaire, niveau) VALUES ('" + us.getNom() + "', '" + us.getPrenom() + "', '" + us.getEmail() + "','" + us.getRole() + "','" + us.getTel() + "','" + us.getMdp() + "','" + us.getId() + "',"+us.getSal()+",'" + us.getNv() + "')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int addpmat (int idd,int mt)
	{
		DBInteraction.connect();
		String sql = "INSERT INTO mat_profs (prof_id, mat_id) VALUES (" + idd + ","+mt+ ")";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int addanc (int id , String msg,String fullnm,String fullpn)
	{
		DBInteraction.connect();
		String sql = "INSERT INTO annonces (user_id,contenu, date,nom,prenom) VALUES (" + id + ", '" + msg + "',CURRENT_TIMESTAMP,'"+fullnm+"','"+fullpn+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int delusr (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM users WHERE id =" +id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int delprf (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM profs WHERE user_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletd (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM etudiants WHERE user_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletdabs (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM absence WHERE user_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletdpm (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM paiment WHERE user_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletdmat (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM mat_iscr WHERE etud_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletdmatp (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM mat_profs WHERE prof_id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int deletdgrp (int id)
	{
		DBInteraction.connect();
		String sql = "DELETE FROM groups WHERE id ="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	public int updprof (Prof us)
	{
		DBInteraction.connect();
		String sql = "UPDATE profs SET " +"nom='" + us.getNom() + "', " +"prenom='" + us.getPrenom() + "', " +"mail='" + us.getEmail() + "', " +
                "role='" + us.getRole() + "', " +
                "phone='" + us.getTel() + "', " +
                "mdp='" + us.getMdp() + "', " +
                "salaire="+us.getSal()+", " +  
                "niveau='" + us.getNv() + "' " +
                "WHERE user_id=" + us.getId();
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int updprofus (Prof us)
	{
		DBInteraction.connect();
		String sql = "UPDATE profs SET " +"nom='" + us.getNom() + "', " +"prenom='" + us.getPrenom() + "', " +"mail='" + us.getEmail() + "', " +
				"role='" + us.getRole() + "', " +
				"phone='" + us.getTel() + "', " +
				"mdp='" + us.getMdp() + "', "+
				"WHERE user_id=" + us.getId();
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int updprofmat (int id , int ma)
	{
		DBInteraction.connect();
		String sql = "UPDATE mat_profs SET mat_id=" + ma + " WHERE prof_id=" + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	
	public ResultSet finduser(int id) {
	    DBInteraction.connect();
		String sql = "select * from users where id ="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet visiteurs() {
		DBInteraction.connect();
		String sql = "select * from visiteurs";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findemploi(int id) {
		DBInteraction.connect();
		String sql = "select * from users where id ="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findemploiprf(int id) {
		DBInteraction.connect();
		String sql = "SELECT ep.* FROM emplois ep , profs pr where ep.niveau=pr.niveau and pr.user_id= "+id+" limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findemploiet(int grp , String niv) {
		DBInteraction.connect();
		String sql = "SELECT ep.* FROM emplois ep  where ep.niveau='"+niv+"' and ep.id_grp= "+grp+" limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findgropnivetd(int grp , String niv) {
		DBInteraction.connect();
		String sql = "SELECT DISTINCT et.* FROM etudiants et , groups gr WHERE gr.niveau='"+niv+"' and et.user_id=gr.id and gr.groupe="+grp;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findgropnivetdpaim(int grp , String niv) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom,u.mail FROM paiment a , profs u WHERE a.user_id=u.user_id and u.niveau='" +niv+ "'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet matinscr(int id) {
		DBInteraction.connect();
		String sql = "select m.nom_mat from matiers m, etudiants e ,mat_iscr mt where e.user_id=mt.etud_id and m.id_mat=mt.mat_id and e.user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet matprf(int id) {
		DBInteraction.connect();
		String sql = "select mt.nom_mat from matiers mt , profs pr , mat_profs mp where mt.id_mat=mp.mat_id and pr.user_id=mp.prof_id and pr.user_id="+id+" limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allemploi() {
		DBInteraction.connect();
		String sql = "select * from emplois where niveau='2-bac-pc' and id_grp=1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet emploi(int id) {
		DBInteraction.connect();
		String sql = "select ep.* from emplois ep , groups gr where ep.niveau=gr.niveau and gr.id = 149 and ep.id_grp=gr.groupe LIMIT 1 ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allprabs() {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom FROM absence a , profs u WHERE a.user_id=u.user_id ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet searchallprabs(String niv) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom FROM absence a , profs u WHERE a.user_id=u.user_id and u.niveau='"+niv+"'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneprabs(int id) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom FROM absence a , profs u WHERE a.user_id=u.user_id and u.user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneetabs(int id) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom FROM absence a , etudiants u WHERE a.user_id=u.user_id and u.user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allanc() {
		DBInteraction.connect();
		String sql = "SELECT * FROM annonces ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet etudanc(int id) {
		DBInteraction.connect();
		String sql = "SELECT DISTINCT an.id, an.* ,nm.nom_mat FROM annonces an , matiers nm, mat_iscr ms , mat_profs mp , profs pr , etudiants et WHERE ms.mat_id=mp.mat_id and pr.niveau = et.niveau and pr.user_id = mp.prof_id and et.user_id = "+id+ " and an.user_id=pr.user_id and nm.id_mat=mp.mat_id ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneanc(int id) {
		DBInteraction.connect();
		String sql = "SELECT * FROM annonces where user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneetanc(int id) {
		DBInteraction.connect();
		String sql = "SELECT * FROM annonces where user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet alletrabs() {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom FROM absence a , etudiants u WHERE a.user_id=u.user_id ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet serchalletrabs(String niv) {
		DBInteraction.connect();
		String sql = "SELECT DISTINCT a.*,u.nom,u.prenom FROM absence a , etudiants u WHERE a.user_id=u.user_id and u.niveau='"+niv+"'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allprpai() {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom,u.mail FROM paiment a , profs u WHERE a.user_id=u.user_id ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneprpai(int id) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom,u.mail FROM paiment a , profs u WHERE a.user_id=u.user_id and u.user_id= "+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet oneetpai(int id) {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom,u.mail FROM paiment a , etudiants u WHERE a.user_id=u.user_id and u.user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet alletpai() {
		DBInteraction.connect();
		String sql = "SELECT a.*,u.nom,u.prenom,u.mail FROM paiment a , etudiants u WHERE a.user_id=u.user_id ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet alletpaiserc(int grp , String niv) {
		DBInteraction.connect();
		String sql = "SELECT DISTINCT a.*,u.nom,u.prenom,u.mail FROM paiment a , etudiants u , groups gr WHERE a.user_id=u.user_id and u.user_id=gr.id and gr.groupe= "+grp+" and gr.niveau='"+niv+"'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	public ResultSet findemail(String st ) {
	    DBInteraction.connect();
		String sql = "select * from users where mail ='"+st+"' order by id desc limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet fin(int st ) {
		DBInteraction.connect();
		String sql = "select niveau from etudiants where user_id ="+st+" order by user_id desc limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet finpr(int st ) {
		DBInteraction.connect();
		String sql = "select niveau from profs where user_id ="+st+" order by user_id desc limit 1";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet numet() {
	    DBInteraction.connect();
		String sql = "select count(*) from etudiants ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	public ResultSet collecrole( int id) {
		DBInteraction.connect();
		String sql = "select u.role from users u   where u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	
	
	public ResultSet alletud() {
		DBInteraction.connect();
		String sql = "select * from etudiants";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet findbysearch(int gr, String nv) {
		DBInteraction.connect();
		String sql = "select * from etudiants e , groups g  where e.user_id = g.id and g.groupe ="+gr+"and e.niveau='"+nv+"'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allprofs() {
		DBInteraction.connect();
		String sql = "select * from profs";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allprfnum() {
		DBInteraction.connect();
		String sql = "select Count(*) from profs";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet alletdnum() {
		DBInteraction.connect();
		String sql = "select Count(*) from etudiants";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet totalpaietd() {
		DBInteraction.connect();
		String sql = "select (SUM(octorbe) + SUM(novembre) + SUM(decembre)+SUM(janvier)+SUM(fevrier)+SUM(mars)+SUM(avril)+SUM(mai)+SUM(juin))*150.00 from paiment p , etudiants e where e.user_id = p.user_id ;";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet totalpaietdparmoi() {
		DBInteraction.connect();
		String sql = "select SUM(octorbe)*150.00, SUM(novembre)*150.00, SUM(decembre)*150.00,SUM(janvier)*150.00,SUM(fevrier)*150.00,SUM(mars)*150.00,SUM(avril)*150.00,SUM(mai)*150.00,SUM(juin)*150.00 from paiment p , etudiants e where e.user_id = p.user_id ;";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet totalpaieprf() {
		DBInteraction.connect();
		String sql = "SELECT SUM(CASE WHEN p.octorbe = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.novembre = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.decembre = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.janvier = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.fevrier = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.mars = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.avril = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.mai = 1 THEN pr.salaire ELSE 0 END) + SUM(CASE WHEN p.juin = 1 THEN pr.salaire ELSE 0 END) FROM paiment p , profs pr where p.user_id = pr.user_id; ";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet allprofsrch(int grp , String nv) {
		DBInteraction.connect();
		String sql = "select * from profs  where niveau='"+nv+"'";
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	public ResultSet collecteprof( int id) {
		DBInteraction.connect();
		String sql = "select u.nom,u.prenom,u.mdp,u.mail,u.phone,p.salaire,p.niveau from users u , profs p where u.id = p.user_id and u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet collecteet( int id) {
		DBInteraction.connect();
		String sql = "select u.nom,u.prenom,u.mdp,u.mail,u.phone,e.salaire,e.niveau from users u , etudiants e where u.id = e.user_id and u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet collecteetmat( int id) {
		DBInteraction.connect();
		String sql = "select mt.nom_mat from matiers mt , mat_iscr mi , etudiants e where mt.id_mat = mi.mat_id and e.user_id = mi.etud_id and e.user_id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	public ResultSet verifgroup1(String nv,int mat) {
		DBInteraction.connect();
		String sql = "select COUNT(*) from mat_iscr mi , etudiants et where mi.etud_id=et.user_id and et.niveau='"+nv+"' and mi.mat_id ="+mat;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	public int addgrpet (int grp, int id , String nv , int mat )
	{
		DBInteraction.connect();
		String sql="INSERT INTO groups (groupe, id, niveau,matiere) VALUES ('" + grp + "'," + id + ", '" + nv +"',"+mat+")";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	public int ajtabs (int id , String mo)
	{
		DBInteraction.connect();
		String sql="Update absence SET "+mo+" ="+mo+"+1 where user_id = "+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	
	public ResultSet collecteetud( int id) {
		DBInteraction.connect();
		String sql = "select u.nom,u.prenom,e.niveau from users u , etudiants e where u.id = e.user_id and e.niveau!= 'NULL' and u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet collecteetuds( int id) {
		DBInteraction.connect();
		String sql = "select u.nom,u.prenom,e.niveau,u.mail,u.mdp,u.phone from users u , etudiants e where u.id = e.user_id and e.niveau!= 'NULL' and u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet collecteprofpai( int id) {
		DBInteraction.connect();
		String sql = "select u.nom,u.prenom,p.niveau from users u , profs p where u.id = p.user_id and p.niveau!= 'NULL' and u.id="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	public ResultSet collectmoinp( int id) {
		DBInteraction.connect();
		String sql = "SELECT CASE WHEN octorbe = false THEN 'octorbe' END , CASE WHEN novembre = false THEN 'novembre' END ,CASE WHEN decembre = false THEN 'decembre' END ,CASE WHEN janvier = false THEN 'janvier' END ,CASE WHEN fevrier = false THEN 'fevrier' END ,CASE WHEN mars = false THEN 'mars' END ,CASE WHEN avril = false THEN 'avril' END,CASE WHEN mai = false THEN 'mai' END,CASE WHEN juin = false THEN 'juin' END FROM paiment WHERE user_id ="+id;
		ResultSet res = DBInteraction.select(sql);
		return res;
	}
	
	
	public int ajtpai (int id, String mois )
	{
		DBInteraction.connect();
		String sql="UPDATE paiment SET "+mois+"= true WHERE user_id = " + id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
	}
	
	
	
	
	
}
