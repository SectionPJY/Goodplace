package com.spring.ex.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.QnADAO;

@Service
public class QnAInsertCommand {

	@Autowired
	private QnADAO dao;

	public int execute(Model model) {
		System.out.println("========== QnA Insert Command ==========");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String q_title = request.getParameter("q_title");
		String q_uid = request.getParameter("q_uid");
		String q_content = request.getParameter("q_content");

		int result = dao.insertQna(q_title, q_uid, q_content);
		if (1 == result) {
			System.out.println("========== Insert Success ==========");

			return result;
		} else {
			System.out.println("========== Insert Failed ==========");

			return result;
		}
	}
}
