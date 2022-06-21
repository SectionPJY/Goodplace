package com.spring.ex.dto;

public class EquipDTO {

	private int p_id;
	private String p_name;
	private String p_kind;
	private int p_price;
	private String p_content;
	private String p_imagePath;

	public EquipDTO(int p_id, String p_name, String p_kind, int p_price, String p_content, String p_imagePath) {
		this.p_id = p_id;
		this.p_name = p_name;
		this.p_kind = p_kind;
		this.p_price = p_price;
		this.p_content = p_content;
		this.p_imagePath = p_imagePath;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_kind() {
		return p_kind;
	}

	public void setP_kind(String p_kind) {
		this.p_kind = p_kind;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_content() {
		return p_content;
	}

	public void setP_content(String p_content) {
		this.p_content = p_content;
	}

	public String getP_imagePath() {
		return p_imagePath;
	}

	public void setP_imagePath(String p_imagePath) {
		this.p_imagePath = p_imagePath;
	}

}
