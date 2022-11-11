package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.QnADAO;

@Service
public class QnaUpdateCommand {

	@Autowired
	private QnADAO dao;
	
	public int execute(String q_id, String q_reply) {
		System.out.println("========== QnA Update Command Running ==========");
		System.out.println("QnA ID : " + q_id);
		System.out.println("Reply Value : " + q_reply);
		
		int result = dao.updateQna(q_id, q_reply);
		
		return result;
	}
}
