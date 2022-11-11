package com.spring.ex.dto;

public class CampDTO {

	private int c_id;
	private String c_name;
	private String c_address;
	private int c_price;
	private String c_imagePath;
	private String c_content;
	
	public CampDTO() {
		
	}

	public CampDTO(int c_id, String c_name, String c_address, int c_price, String c_imagePath, String c_content) {
		this.c_id = c_id;
		this.c_name = c_name;
		this.c_address = c_address;
		this.c_price = c_price;
		this.c_imagePath = c_imagePath;
		this.c_content = c_content;
	}

	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_address() {
		return c_address;
	}

	public void setC_address(String c_address) {
		this.c_address = c_address;
	}

	public int getC_price() {
		return c_price;
	}

	public void setC_price(int c_price) {
		this.c_price = c_price;
	}

	public String getC_imagePath() {
		return c_imagePath;
	}

	public void setC_imagePath(String c_imagePath) {
		this.c_imagePath = c_imagePath;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

}
