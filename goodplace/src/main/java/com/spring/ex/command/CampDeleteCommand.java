package com.spring.ex.command;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.CampDAO;

@Service
public class CampDeleteCommand {

	@Autowired
	private CampDAO dao;
	
	public int execute(int c_id) {
		System.out.println("========== User Delete Command Running ==========");
		System.out.println("Delete ID : " + c_id);
		
		int result = dao.deleteCamp(c_id);
		
		return result;
	}
}
