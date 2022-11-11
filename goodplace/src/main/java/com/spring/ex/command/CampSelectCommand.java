package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.CampDAO;
import com.spring.ex.dto.CampDTO;

@Service
public class CampSelectCommand {

	@Autowired
	private CampDAO dao;
	
	public List<CampDTO> execute(Model model, int c_id) {
		System.out.println("========== Camp Select Command Running ==========");
		System.out.println("Camp ID : " + c_id);
		List<CampDTO> dto = dao.campSelect(c_id);
		
		model.addAttribute("dto", dto);
		
		return dto;
	}
	
}
