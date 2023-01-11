package com.example.ECom.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
@Entity
@Table(name="UserData")
public class EcomEntity {
	
	
	@Id
	@Column(name="Username",nullable=false)
	private String username;
	
	@Column(name="Password")
	private String password;
	
	@Column(name="CPassword")
	private String cpassword;
	
	@NotBlank(message = "Email is mandatory") 
	@Column(name="email")
	private String email;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public EcomEntity(String username, String password, String cpassword, String email) {
		super();
		this.username = username;
		this.password = password;
		this.cpassword = cpassword;
		this.email = email;
	}

	public EcomEntity() {
		super();
		
	}

	@Override
	public String toString() {
		return "EcomEntity [username=" + username + ", password=" + password + ", cpassword=" + cpassword + ", email="
				+ email + "]";
	}	
}

	

	