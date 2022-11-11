package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.EquipDAO;
import com.spring.ex.dto.EquipDTO;

@Service
public class EquipListCommand {

	@Autowired
	private EquipDAO dao;

	public List<EquipDTO> execute(Model model) {
		System.out.println("========== Equip List Command ==========");
		List<EquipDTO> dtos = dao.equipList();
		System.out.println(dtos);
		model.addAttribute("dtos", dtos);

		return dtos;
	}
}
