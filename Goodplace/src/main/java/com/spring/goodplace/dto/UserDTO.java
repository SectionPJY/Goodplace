package com.spring.goodplace.dto;

public class UserDTO {
	private String u_id;
	private String u_pw;
	private String u_name;
	
	public UserDTO(String id, String pw, String name) {
		this.u_id = id;
		this.u_pw = pw;
		this.u_name = name;
	}

	public String getId() {
		return u_id;
	}

	public void setId(String id) {
		this.u_id = id;
	}

	public String getPw() {
		return u_pw;
	}

	public void setPw(String pw) {
		this.u_pw = pw;
	}

	public String getName() {
		return u_name;
	}

	public void setName(String name) {
		this.u_name = name;
	}

}
