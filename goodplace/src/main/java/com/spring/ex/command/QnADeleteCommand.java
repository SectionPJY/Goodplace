package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.QnADAO;

@Service
public class QnADeleteCommand {

	@Autowired
	private QnADAO dao;

	public int execute(int q_id) {
		System.out.println("========== QnA Delete Command ==========");
		System.out.println("Delete ID : " + q_id);

		int result = dao.deleteQna(q_id);
		if (1 == result) {
			System.out.println("========== QnA Delete Complete ==========");

			return result;
		} else {
			System.out.println("========== QnA Delete Failed ==========");

			return result;
		}
	}
}
