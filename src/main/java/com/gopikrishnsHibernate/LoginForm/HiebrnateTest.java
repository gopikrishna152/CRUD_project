package com.gopikrishnsHibernate.LoginForm;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HiebrnateTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try { 
			Configuration cfg=new Configuration().configure("hibernate.cfg.xml"); 
			SessionFactory sf=cfg.buildSessionFactory(); 
			Data d=new Data(); 
			d.setId(1); 
			d.setName("Gopi"); 
			d.setPassword("1234"); 
			d.setEmail("gopi@gmail.com");
			d.setGender("male"); 
			d.setPhno("9110770659"); 
			
			
			
			Session s=sf.openSession(); 
			Transaction t=s.beginTransaction();
			s.save(d); 
			t.commit(); 
			
			
			
			
			
			
			 
		}catch (Exception e) {
			// TODO: hanle exception
			e.printStackTrace();
		}

	}

}
