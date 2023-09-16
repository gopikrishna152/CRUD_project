package com.gopikrishnsHibernate.LoginForm;

import java.util.List;
import java.util.Vector;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DAO {

	public int saveDataToDatabase(Data d) {
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(d);
		t.commit();
		s.close();
		return 1;
	}

	public boolean login_logics(int id, String password) {
		Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		Data d = s.get(Data.class, id);
		System.out.println(d.toString());
		if (d.getPassword().equals(password)) {
			t.commit();
			s.close();
			System.out.println("hello");
			return true;
		} else {
			System.out.println("failed");
			return false;
		}
	}

	public List<Data> fetchLogics(Data d) {
		List<Data> list = new Vector<Data>();
		try {
			Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
			SessionFactory sf = cfg.buildSessionFactory();
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			Data d1 = s.get(Data.class, d.getId());
			list.add(d1);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return list;

	}

	public boolean updateProfile(Data updatedData) {

		try {

			Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
			SessionFactory sf = cfg.buildSessionFactory();
			Session s = sf.openSession();
			Transaction t = s.beginTransaction(); 
			Data d=s.get(Data.class, updatedData.getId()); 
			d.setName(updatedData.getName()); 
			d.setPassword(updatedData.getPassword()); 
			d.setGender(updatedData.getGender()); 
			d.setEmail(updatedData.getEmail()); 
			d.setPhno(updatedData.getPhno()); 
			s.update(d); 
			t.commit();  
			s.close();
			return true;
			
			
			

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return false;

	}
		public boolean delete(Data d) {
			try {
				 Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
			        SessionFactory sf = cfg.buildSessionFactory();
			        Session s = sf.openSession();
			        Transaction t = s.beginTransaction(); 
				
				Data d1=s.get(Data.class, d.getId()); 
				s.delete(d1);
				t.commit();
				s.close();  
				return true;
				
			}catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
			 return false;
		}
}
