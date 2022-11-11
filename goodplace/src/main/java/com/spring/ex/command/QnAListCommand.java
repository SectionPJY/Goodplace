package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.QnADAO;
import com.spring.ex.dto.QnADTO;

@Service
public class QnAListCommand {

	@Autowired
	private QnADAO dao;
	
	public List<QnADTO> execute(Model model) {
		System.out.println("========== QnA List Command ==========");
		List<QnADTO> dtos = dao.qnaList();
		System.out.println(dtos);
		model.addAttribute("dtos", dtos);
		
		return dtos;
	}
}
