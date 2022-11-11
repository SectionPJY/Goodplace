package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.EquipDAO;

@Service
public class EquipDeleteCommand {
	@Autowired
	private EquipDAO dao;
	
	public int execute(int p_id) {
		System.out.println("========== User Delete Command Running ==========");
		System.out.println("Delete ID : " + p_id);
		
		int result = dao.deleteEquip(p_id);
		
		return result;
	}
}
