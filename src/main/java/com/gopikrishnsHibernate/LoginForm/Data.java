package com.gopikrishnsHibernate.LoginForm;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name="register_data")
public class Data { 
	
	@Id
	private int id; 
	private String name; 
	private String password;
	private String email;
	private String phno;
	private String gender;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "Data [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phno=" + phno
				+ ", gender=" + gender + "]";
	} 
	
	
	
	
	

}
