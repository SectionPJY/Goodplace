package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.CampDAO;
import com.spring.ex.dto.CampDTO;

@Service
public class CampListCommand {

	@Autowired
	private CampDAO dao;

	public List<CampDTO> execute(Model model) {
		System.out.println("========== Camp List Command Running ==========");
		List<CampDTO> dtos = dao.campList();
		model.addAttribute("dtos", dtos);
		
		return dtos;
	}
}
