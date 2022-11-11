package com.spring.ex.dto;

import java.util.Date;

public class QnADTO {

	private int q_id;
	private String q_title;
	private String q_content;
	private String q_reply;
	private String q_uid;
	private String q_ans;
	private Date q_insert;

	private String u_name;

	public QnADTO() {

	}

	public QnADTO(int q_id, String q_title, String q_content, String q_reply, String q_uid) {
		this.q_id = q_id;
		this.q_title = q_title;
		this.q_content = q_content;
		this.q_reply = q_reply;
		this.q_uid = q_uid;
	}

	public QnADTO(int q_id, String q_title, String q_ans, String q_content, Date q_insert, String u_name) {
		this.q_id = q_id;
		this.q_title = q_title;
		this.q_ans = q_ans;
		this.q_content = q_content;
		this.q_insert = q_insert;
		this.u_name = u_name;
	}

	public int getQ_id() {
		return q_id;
	}

	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_reply() {
		return q_reply;
	}

	public void setQ_reply(String q_reply) {
		this.q_reply = q_reply;
	}

	public String getQ_uid() {
		return q_uid;
	}

	public void setQ_uid(String q_uid) {
		this.q_uid = q_uid;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getQ_ans() {
		return q_ans;
	}

	public void setQ_ans(String q_ans) {
		this.q_ans = q_ans;
	}

	public Date getQ_insert() {
		return q_insert;
	}

	public void setQ_insert(Date q_insert) {
		this.q_insert = q_insert;
	}

}
