package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.EquipDAO;
import com.spring.ex.dao.QnADAO;
import com.spring.ex.dto.EquipDTO;
import com.spring.ex.dto.QnADTO;

@Service
public class EquipSelectCommand {

	@Autowired
	private EquipDAO dao;

	public List<EquipDTO> execute(Model model, int p_id) {
		System.out.println("========== Select Equipment Command Running ==========");
		List<EquipDTO> dto = dao.selectEquip(p_id);
		model.addAttribute("dto", dto);

		return dto;
	}
}
