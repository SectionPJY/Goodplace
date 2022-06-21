package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.QnADAO;
import com.spring.ex.dto.QnADTO;

@Service
public class QnASelectCommand {

	@Autowired
	private QnADAO dao;

	public List<QnADTO> execute(Model model, int q_id) {
		System.out.println("========== Select QnA Command Running ==========");
		List<QnADTO> dto = dao.selectQna(q_id);
		System.out.println();
		model.addAttribute("dto", dto);

		return dto;
	}
}
