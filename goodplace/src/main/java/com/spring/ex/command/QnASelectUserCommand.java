package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.QnADAO;
import com.spring.ex.dto.QnADTO;

@Service
public class QnASelectUserCommand {

	@Autowired
	private QnADAO dao;

	public List<QnADTO> execute(Model model, String u_id) {
		System.out.println("========== User QnA List Command ==========");
		List<QnADTO> dtos = dao.userQnaList(u_id);
		model.addAttribute("dtos", dtos);

		return dtos;
	}
}
